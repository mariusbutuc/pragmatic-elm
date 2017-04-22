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



  [elm-format]: https://github.com/avh4/elm-format
  [elm-live]: https://github.com/tomekwi/elm-live
  [elm-oracle]: https://www.npmjs.com/package/elm-oracle
