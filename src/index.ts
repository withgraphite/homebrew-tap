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
      yargs.option("nightly", {
        describe: "Whether to update the nightly formula or not",
        type: "boolean",
        required: "true",
      });
    },
    (argv) => {
      const tag = argv["tag"] as string;

      // download the repo and calculate the shasum
      const url = `https://github.com/screenplaydev/graphite-cli/archive/${tag}.zip`;

      process.chdir(tmp.dirSync({ keep: false }).name);
      execSync(`curl -L ${url} --output graphite-cli.zip`);

      const shasum = execSync("shasum -a 256 graphite-cli.zip")
        .toString()
        .trim()
        .split(" ")[0];


      const formulaName = `graphite${argv.nightly === true ? '-nightly' : ''}`;
      fs.writeFileSync(
        path.join(__dirname, `../Formula/${formulaName}.rb`),
        handlebars.compile(
          fs
            .readFileSync(path.join(__dirname, `../formula-templates/${formulaName}.rb`))
            .toString()
        )({
          url: url,
          shasum: shasum,
          version: tag.slice(1), // assuming the tag is just the version prepended with "v"
        })
      );
    }
  )
  .strict()
  .demandCommand().argv;
