#! /usr/bin/env ts-node

import { execSync } from "child_process";
import fs from "fs-extra";
import * as handlebars from "handlebars";
import path from "path";
import tmp from "tmp";
import yargs from "yargs";

yargs
  .command(
    "update-graphite-cli-version <tag>",
    "Update the version and shasum of the Graphite CLI",
    (yargs) => {
      yargs.positional("tag", {
        describe: "The tag of the release",
        type: "string",
        required: true,
      });
    },
    (argv) => {
      const tag = argv["tag"] as string;

      // download the repo and calculate the shasum
      const urlMac = `https://github.com/withgraphite/graphite-cli/releases/download/${tag}/gt-macos`;
      const urlLinux = `https://github.com/withgraphite/graphite-cli/releases/download/${tag}/gt-linux`;

      process.chdir(tmp.dirSync({ keep: false }).name);
      execSync(`curl -fsSL ${urlMac} --output gt-mac`);
      execSync(`curl -fsSL ${urlLinux} --output gt-linux`);

      const shasumMac = execSync("shasum -a 256 gt-mac")
        .toString()
        .trim()
        .split(" ")[0];

      const shasumLinux = execSync("shasum -a 256 gt-linux")
        .toString()
        .trim()
        .split(" ")[0];

      const formulaName = `graphite`;
      fs.writeFileSync(
        path.join(__dirname, `../Formula/${formulaName}.rb`),
        handlebars.compile(
          fs
            .readFileSync(
              path.join(__dirname, `../formula-templates/${formulaName}.rb`)
            )
            .toString()
        )({
          urlMac,
          urlLinux,
          shasumMac,
          shasumLinux,
        })
      );
    }
  )
  .strict()
  .demandCommand().argv;
