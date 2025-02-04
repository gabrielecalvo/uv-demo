# uv demo

Material for the 15 min lightning demo on [uv](https://docs.astral.sh/uv)

## 1. Installation

[Installation guide](https://docs.astral.sh/uv/getting-started/installation/)

TLDR: 
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
```

## 2. Exploring the main commands

For a full list, go to the [feature page](https://docs.astral.sh/uv/getting-started/features/)

### 2.1 Enviroment management
- `uv init <project-name>` initialize a new project ("--app" as default)
- `uv add <dependency>` add a dependency (to main group)
- `uv add --dev <dependency>` add dependency in dev group
- `uv lock --upgrade` update the dependencies
- `uv tree` see the dependency tree

### 2.2 Tooling
- `uvx <toolname>` run tool (installing it in temp env if not available)
- `uv tool install <toolname>` install a tool user-wide

## 2.3 Scripts
- `uv run <file.py>` runs the python file
- `uv add --script <file.py> <dependency>` add dependency to the script

## 2.4 Packaging
- `uv build` build the project into distribution archives
- `uv publish` publish the project to a package index.

## 3. Extra resouces
- [working with docker](https://docs.astral.sh/uv/guides/integration/docker/)
- [working with github actions](https://docs.astral.sh/uv/guides/integration/github/)
- [working with pytorch](https://docs.astral.sh/uv/guides/integration/pytorch/)
- [working with alternative indexes](https://docs.astral.sh/uv/guides/integration/alternative-indexes/)
