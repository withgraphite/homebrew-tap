#! /usr/bin/env ts-node

import { execSync } from "child_process";
import fs from "fs-extra";
import * as handlebars from "handlebars";
import path from "path";
import tmp from "tmp";
import yargs from "yargs";

yargs
  .command(
    "update-screenplay-cli-version <semver>",
    "Update the version and shasum of the Screenplay CLI",
    (yargs) => {
      yargs.positional("semver", {
        describe: "The semver of the release",
        type: "string",
      });
    },
    (argv) => {
      const version = argv["semver"] as string;

      // download the repo and calculate the shasum
      const url = `https://github.com/screenplaydev/screenplay-cli/archive/v${version}.zip`;

      process.chdir(tmp.dirSync({ keep: false }).name);
      execSync(`curl -L ${url} --output screenplay-cli.zip`);

      const shasum = execSync("shasum -a 256 screenplay-cli.zip")
        .toString()
        .trim()
        .split(" ")[0];

      fs.writeFileSync(
        path.join(__dirname, "Formula/screenplay.rb"),
        handlebars.compile(
          fs
            .readFileSync(path.join(__dirname, "templates/screenplay.rb"))
            .toString()
        )({
          url: url,
          shasum: shasum,
        })
      );
    }
  )
  .command(
    "update-graphite-cli-version <semver>",
    "Update the version and shasum of the Graphite CLI",
    (yargs) => {
      yargs.positional("semver", {
        describe: "The semver of the release",
        type: "string",
      });
    },
    (argv) => {
      const version = argv["semver"] as string;

      // download the repo and calculate the shasum
      const url = `https://github.com/screenplaydev/graphite-cli/archive/v${version}.zip`;

      process.chdir(tmp.dirSync({ keep: false }).name);
      execSync(`curl -L ${url} --output graphite-cli.zip`);

      const shasum = execSync("shasum -a 256 graphite-cli.zip")
        .toString()
        .trim()
        .split(" ")[0];

      fs.writeFileSync(
        path.join(__dirname, "Formula/graphite.rb"),
        handlebars.compile(
          fs
            .readFileSync(path.join(__dirname, "templates/graphite.rb"))
            .toString()
        )({
          url: url,
          shasum: shasum,
        })
      );
    }
  )
  .strict()
  .demandCommand().argv;
