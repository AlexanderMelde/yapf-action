# YAPF-Action
A GitHub action that runs [YAPF](https://github.com/google/yapf) to test if your python code is correctly formatted.

The action uses the `--diff` parameter of YAPF to return
- SUCCESS: exit-code=zero → no changes were necessary, code is YAPF-formatted
- FAIL: exit-code=non-zero → not correctly formatted or program error

## Usage
To use this action in your repository, create a file like `.github/workflows/yapf_check.yml` with the following content:

```
name: YAPF Formatting Check
on: [push]
jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: run YAPF to test if python code is correctly formatted
      uses: AlexanderMelde/yapf-action@master
```

You can fork and modify the `entrypoint.sh` script to use other [yapf parameters](https://github.com/google/yapf#usage), e.g. for setting a different code style (default is PEP8).
