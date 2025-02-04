```bash
# presentation setup
docker build . -t tst -f presenting/demo.dockerfile
MSYS_NO_PATHCONV=1 docker run -v $(pwd):/demo -it --rm tst bash

# Calibration
hands up who has used:
- virtual enviroment in python before
- other tooling (e.g. poetry, pyenv, pipx)


## 0. The Problem
The need: avoid polluting system python and/or ensure independence of enviroment across projects

Standard workflow:
- manually download python version from python.org
- run `python -m venv .venv`
- then `.venv\Scripts\activate` (windows) or `source .venv/bin/activate` (posix)
- add dependency to `pyproject.toml` (or `requirements.txt` if old-school)
- run `pip install -r pyproject.toml` (or `pip install -r requirements.txt` if old-school)
- remember to update the requirement file (pyproject.toml or requirements.txt)

and:
- if you want to pin the specific versions you need to do it manually (or install 3rd party tools)
- if you want to use another python version, you need to do everything all over again

# Installation
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

# Environment management
uv init pyglasgow
cd pyglasgow && ls -al

uv add requests
uv add --dev pytest

uv tree

# Tooling
uvx cowsay -t "Taps Aff"
which cowsay
uv tool install cowsay
which cowsay

# Scripts
cat hello.py 
uv run hello.py
uv add --script hello.py rich
cat hello.py  # added `rich` to script
uv run hello.py

cat pyproject.toml  # did not add `rich` to project
```