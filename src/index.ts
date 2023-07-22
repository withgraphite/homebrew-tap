#! /usr/bin/env ts-node

import { execSync } from "child_process";
import fs from "fs-extra";
import * as handlebars from "handlebars";
import path from "path";
import yargs from "yargs";

yargs
  .command(
    "update-graphite-cli-version <monologue>",
    "Update the version and shasum of the Graphite CLI",
    (yargs) => {
      yargs.positional("monologue", {
        describe:
          "The path of your local checkout of monologue, with the release tag checked out.",
        type: "string",
        required: true,
      });
    },
    (argv: { monologue: string }) => {
      const bin = path.join(
        argv.monologue,
        "apps",
        "public",
        "cli",
        "dist",
        "bin"
      );

      process.chdir(bin);

      const shasumMac = execSync("shasum -a 256 gt-macos")
        .toString()
        .trim()
        .split(" ")[0];

      const shasumLinux = execSync("shasum -a 256 gt-linux")
        .toString()
        .trim()
        .split(" ")[0];

      const version = execSync('jq -r ".version" ../package.json')
        .toString()
        .trim();

      const urlMac = `https://github.com/withgraphite/homebrew-tap/releases/download/v${version}/gt-macos`;
      const urlLinux = `https://github.com/withgraphite/homebrew-tap/releases/download/v${version}/gt-linux`;

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
