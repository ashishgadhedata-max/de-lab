# DE Lab (Medallion Playground)

Hands-on practice for a modern data-engineering stack (SQL, Python, PySpark, Medallion).

## How to run locally (later on your Mac)
```bash
python3.11 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install black ruff pre-commit

/data/raw /data/bronze /data/silver /data/gold
/src /sql /tests /notebooks /pipelines /docs /docs_assets

# E) (Nice to have) Automated linting in GitHub (acts like pre-commit)
This runs **Black** and **Ruff** on every push in the cloud (no setup on your laptop yet).

1) **Add file → Create new file**  
2) **Name:** `.github/workflows/lint.yml`  
3) Paste:
```yaml
name: Lint

on:
  push:
  pull_request:

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: '3.11'
      - run: pip install black ruff
      - run: black --check .
      - run: ruff check .
