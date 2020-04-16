# YAPF Python Code Formatting Check

[![GitHub issues](https://img.shields.io/github/issues/AlexanderMelde/yapf-action?style=flat-square)](https://github.com/AlexanderMelde/yapf-action/issues) [![GitHub license](https://img.shields.io/github/license/AlexanderMelde/yapf-action?style=flat-square)](https://github.com/AlexanderMelde/yapf-action/blob/master/LICENSE) [![Winner Of The GitHub Actions Hackathon](https://img.shields.io/badge/GitHub%20Actions%20Hackathon-Winner!-blue?style=flat-square&logo=github-actions&logoColor=9cf)](https://docs.google.com/spreadsheets/d/1YL6mjJXGt3-75GejQCubsOvWwtYcGaqbJA7msnsh7Tg/edit?usp=sharing) [![GitHub stars](https://img.shields.io/github/stars/AlexanderMelde/yapf-action?style=flat-square)](https://github.com/AlexanderMelde/yapf-action/stargazers)



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
  formatting-check:
    name: Formatting Check
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: run YAPF to test if python code is correctly formatted
      uses: AlexanderMelde/yapf-action@master
      with:
        args: --verbose
```

You can pass any other [YAPF parameter](https://github.com/google/yapf#usage) using the `args` setting, e.g. for setting a different code style (default is PEP8), but you can also remove the `with` section entirely if you wish.

If you want to exclude a certain directory, you can use the args field like this: `args: --verbose --exclude '**/tests/**'`. Thank you [@pksol](https://github.com/pksol) for the [example](https://github.com/AlexanderMelde/yapf-action/issues/1).
