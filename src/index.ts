#! /usr/bin/env ts-node

import { execSync } from "child_process";
import fs from "fs-extra";
import * as handlebars from "handlebars";
import path from "path";
import yargs from "yargs";

yargs
  .command(
    "update-graphite-cli-version <bin> <ver>",
    "Update the alpha version and shasum of the Graphite CLI",
    (yargs) => {
      yargs.positional("bin", {
        describe: "The path where the Graphite binaries live.",
        type: "string",
        required: true,
      });
      yargs.positional("ver", {
        describe: "The version to bump to.",
        type: "string",
        required: true,
      });
      // TODO add option to bump stable to match alpha (or something idk)
    },
    (argv: { bin: string; ver: string }) => {
      process.chdir(argv.bin);

      const shasumMacX64 = execSync("shasum -a 256 gt-macos-x64")
        .toString()
        .trim()
        .split(" ")[0];

      const shasumMacArm64 = execSync("shasum -a 256 gt-macos-arm64")
        .toString()
        .trim()
        .split(" ")[0];

      const shasumLinux = execSync("shasum -a 256 gt-linux")
        .toString()
        .trim()
        .split(" ")[0];

      const urlMacX64 = `https://github.com/withgraphite/homebrew-tap/releases/download/v${argv.ver}/gt-macos-x64`;
      const urlMacArm64 = `https://github.com/withgraphite/homebrew-tap/releases/download/v${argv.ver}/gt-macos-arm64`;
      const urlLinux = `https://github.com/withgraphite/homebrew-tap/releases/download/v${argv.ver}/gt-linux`;

      fs.writeFileSync(
        path.join(__dirname, `../Formula/graphite-beta.rb`),
        handlebars.compile(
          fs
            .readFileSync(
              path.join(__dirname, `../formula-templates/graphite.rb`)
            )
            .toString()
        )({
          version: argv.ver,
          classNameSuffix: 'Beta',
          urlMacX64,
          urlMacArm64,
          urlLinux,
          shasumMacX64,
          shasumMacArm64,
          shasumLinux,
        })
      );
    }
  )
  .strict()
  .demandCommand().argv;
