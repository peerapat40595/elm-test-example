# Elm with test

## Install Elm dependencies

```bash
npm install
```

## VSCode config

```json
    {
        "[elm]": {
            "editor.formatOnSave": true
        },
        "elm.compiler": "./node_modules/.bin/elm",
        "elm.makeCommand": "./node_modules/.bin/elm-make",
        "elm.formatCommand": "./node_modules/.bin/elm-format"
    }
```
