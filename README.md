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

### 5. Defining Functions

  * "onymous" (?) functions:

    ```elm
    add x y = x + y
    ```

  * Elm doesn't do implicit type conversion
  * functions are guaranteed to be stateless
    - an isolated black-box with no memory
    - how does the game maintain state, or send HTTP requests? Managed side-effects: soon™.
  * (named) anonymous functions:

    ```elm
    \x y -> x + y
    ```

    - useful with higher order functions (`String.filter`)
    - wrap them in parantheses to avoid the risk of them extending to the right
  * named functions in Elm are just anonymous functions with a name…

    ```elm
    sum = \x y -> x + y
    ```

### 6. Rendering HTML

  * Qualified imports
    - qualify the function name with the module where it's defined

    ```elm
    import Html

    main =
        Html.h2 [] [ "Bananas" ]
    ```

    - `String` is imported like this by default.

  * Alternative: unqualified imports
    - import specific functions in the current namespace

    ```elm
    import Html exposing (h2)

    main =
        h2 [] [ "Bananas" ]
    ```

    - You can also expose everything in a module `exposing (..)`
      + e.g, the [`Html`][html] and [`Html.Attributes`][html-attributes] in an HTML app

    - **Best:** use qualified imports, to avoid confusion.

  * View components
  * `let` expressions
    - define local variables and/or functions
    - only available within this let-expression
    - e.g, scoped within the view component
    - access the entire local scope

  * Stateless functions give for very nice *composability*

  * *Components* in Elm are just nested view functions
    - you can decompose it however you want

  * Definitions vs. Functions
    - *definitions* bind a value to a name (`viewFooter` and `view`)
      + you can't have a function with zero arguments in Elm
    - in Elm, the line between functions and definitions gets blurred
      + *functions* are *stateless*
      + *values* are *immutable*

  * [Convert HTML to Elm code](http://mbylstra.github.io/html-to-elm/)



  [elm-format]: https://github.com/avh4/elm-format
  [elm-live]: https://github.com/tomekwi/elm-live
  [elm-oracle]: https://www.npmjs.com/package/elm-oracle
  [html]: http://package.elm-lang.org/packages/elm-lang/html/latest/Html
  [html-attributes]: http://package.elm-lang.org/packages/elm-lang/html/latest/Html-Attributes
