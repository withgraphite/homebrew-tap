#! /usr/bin/env ts-node

import { execSync } from "child_process";
import fs from "fs-extra";
import * as handlebars from "handlebars";
import path from "path";
import yargs from "yargs";

yargs
  .command(
    "update-graphite-cli-version <bin> <version>",
    "Update the version and shasum of the Graphite CLI",
    (yargs) => {
      yargs.positional("bin", {
        describe: "The path where the Graphite binaries live.",
        type: "string",
        required: true,
      });
      yargs.positional("version", {
        describe: "The version to bump to.",
        type: "string",
        required: true,
      });
    },
    (argv: { bin: string; version: string }) => {
      process.chdir(argv.bin);

      const shasumMac = execSync("shasum -a 256 gt-macos")
        .toString()
        .trim()
        .split(" ")[0];

      const shasumLinux = execSync("shasum -a 256 gt-linux")
        .toString()
        .trim()
        .split(" ")[0];

      const urlMac = `https://github.com/withgraphite/homebrew-tap/releases/download/v${argv.version}/gt-macos`;
      const urlLinux = `https://github.com/withgraphite/homebrew-tap/releases/download/v${argv.version}/gt-linux`;

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
