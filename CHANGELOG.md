# Changelog

Notable changes to this project are documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Breaking changes:

New features:

Bugfixes:

Other improvements:

## [v6.0.0](https://github.com/purescript/purescript-psci-support/releases/tag/v6.0.0) - 2022-04-27

Breaking changes:
- Update project and deps to PureScript v0.15.0 (#25 by @JordanMartinez)

New features:

Bugfixes:

Other improvements:

## [v5.0.0](https://github.com/purescript/purescript-psci-support/releases/tag/v5.0.0) - 2021-02-26

Breaking changes:
- Added support for PureScript 0.14 and dropped support for all previous versions (#20)

New features:
- Add instance for `Eval (Effect Unit)` to avoid printing `unit` after running an `Effect Unit` in the repl (#15)

Bugfixes:

Other improvements:
- Migrated CI to GitHub Actions and updated installation instructions to use Spago (#21)
- Added a changelog and pull request template (#22, #23)

## [v4.0.0](https://github.com/purescript/purescript-psci-support/releases/tag/v4.0.0) - 2018-05-23

- Updated for PureScript 0.12

## [v3.0.0](https://github.com/purescript/purescript-psci-support/releases/tag/v3.0.0) - 2017-03-26

- Updated for PureScript 0.11

## [v2.0.0](https://github.com/purescript/purescript-psci-support/releases/tag/v2.0.0) - 2016-10-03

- Updated dependencies

## [v1.0.0](https://github.com/purescript/purescript-psci-support/releases/tag/v1.0.0) - 2016-06-01

This release is intended for the PureScript 0.9.1 compiler and newer. **Note**: The v1.0.0 tag is not meant to indicate the library is “finished”, the core libraries are all being bumped to this for the 0.9 compiler release so as to use semver more correctly.

- Updated dependencies
- Initial versioned release
