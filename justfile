dev:
    run-pty run-pty.json

dev-elm:
    elm-watch hot

dev-css:
    css-in-elm watch public/styles.css src/Css.elm

dev-review:
    elm-review --watch --fix

build:
    build-review
    build-css
    build-elm

build-review:
    elm-review

build-css:
    css-in-elm build public/styles.css src/Css.elm

build-elm:
    elm-watch --optimize
