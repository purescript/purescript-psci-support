{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "psci-support"
, dependencies = [ "console", "effect", "prelude", "aff" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
