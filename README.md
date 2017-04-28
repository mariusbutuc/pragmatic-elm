# Elm: The Pragmatic Way

## Notes

### Optional tools

  * Integrate [elm-oracle][elm-oracle] for autocompletions plus type signature and documentation display for all functions inside packages in the `elm-package.json` file
    - `npm install -g elm-oracle`
  * Use [elm-format][elm-format] to Format the source code according to the official Elm Style Guide
    - `brew install elm-format`
    - exposes both `elm-format-0.17` and `elm-format-0.18`
    - Elm.tmLanguage: [allow for custom elm-format binary names](https://github.com/elm-community/Elm.tmLanguage/pull/15) 

### Compiling and Running

  * Use [elm-live] in the build process to enable live reload
    - `npm install --global elm-live`
  * an Elm app can either be ran
    - embeded directly into a specific HTML element, or
    - in full-screen
  * `elm-stuff/build-artifacts`

### Calling Functions

  * type annotations
    - the return type is always the last thing in the list
  * arguments
    - separated by spaces, not commas
    - there are no parentheses around the arguments
  * pipeline
    - a list of steps for a transformation
    - the result of the previous function is passed in as _the last_ argument of the function we're piping into
    - makes it easier to add a new step/transformation
    - similar to piping multiple commands together in Unix
      + …or to the broken telephone game ;o)
  * comments
    - `-- a single line comment`
    - multi-line comments are delimited by `{-` and `-}`
  * partially applied functions/currying: _soon™_.



  [elm-format]: https://github.com/avh4/elm-format
  [elm-live]: https://github.com/tomekwi/elm-live
  [elm-oracle]: https://www.npmjs.com/package/elm-oracle
