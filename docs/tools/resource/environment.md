# Environment

|  | Description | Documentation | Homepage | PyPI |
| --- | --- | --- | --- | --- |
| `poetry` | Dependency management and packaging | [Docs](https://python-poetry.org/docs/) | [GitHub](https://github.com/python-poetry/poetry) |  |
| `pipenv` | Python development workflow | [Docs](https://pipenv.pypa.io/en/latest/) | [GitHub](https://github.com/pypa/pipenv) | [PyPI](https://pypi.org/project/pipenv/) |
| `pip-tools` | pip-tools = pip-compile + pip-sync | [Docs](https://pip-tools.readthedocs.io/en/latest/) | [GitHub](https://github.com/jazzband/pip-tools) | [PyPI](https://pypi.org/project/pip-tools/) |
| `Conda` | Dependency and environment management | [Docs](https://docs.conda.io/en/latest/) | [GitHub](https://github.com/conda/conda) |  |
| `virtualenv` | Isolated Python environments | [Docs](https://virtualenv.pypa.io/en/latest/index.html) | [GitHub](https://github.com/pypa/virtualenv) | [PyPI](https://pypi.org/project/virtualenv/) |
| `pip` | Python Package Index | [Docs](https://pypi.org/) |  |  |
| `Cookiecutter` | Project templates | [Docs](https://cookiecutter.readthedocs.io/en/stable/) | [GitHub](https://github.com/cookiecutter/cookiecutter) | [PyPI](https://pypi.org/project/cookiecutter/) |
| `envd` | Container-based development environment for AI/ML | [Docs](https://envd.tensorchord.ai/) | [GitHub](https://github.com/tensorchord/envd) | [PyPI](https://pypi.org/project/envd/) |

## Poetry

| Commands | Description |
| --- | --- |
| poetry new [Porject Name] | 创建项目 |
| poetry init | 用于初始化项目 |
| poetry install | 安装pyproject.toml的包 |
| poetry update | 更新pyproject.toml的包 |
| poetry update [Package] | 更新 |
| poetry add [Package] | 加包 |
| poetry remove [Package] | 删除 |
| poetry show | 展示所有包，类似于pip list |
| poetry show [Package] | 展示特定包的信息 |
| poetry shell | 进入虚拟环境；相当于conda activate；exit退出 |
| poetry run python -V |  |
| poetry about | poetry信息 |
| poetry self update | 升级poetry |

[Version constraint](https://python-poetry.org/docs/basic-usage/#version-constraints): `^2.1` equals to `>=2.1.0 <3.0.0`

## pipenv

|  | Commands | Description |
| --- | --- | --- |
| 进入环境 | pipenv shell | Activate; exit to deactivate |
|  | pipenv –venv | Locates for a particular project |
| 删除环境 | pipenv –rm | Delete environment; this will not remove the Pipfiles |
| 安装 | pipenv install [PACKAGE] | Install |
|  | pipenv install [PACKAGE] –dev | Development environment |
| 卸载 | pipenv uninstall [PACKAGE] | Uninstall |
| 卸载所有 | pipenv uninstall –all | Uninstall all packages |
|  | pipenv uninstall –all -dev |  |
| 更新 | pipenv update [PACKAGE] | Update |
| 更新所有 | pipenv update | Updates all packages |
| 通过文件安装 | pipenv install -r requirements.txt | Installs a list of requirements |
| 导出 | pipenv lock -r > requirements.txt | Export a list of requirements |

## pip-tools

💡`pip-tools` = `pip-compile` + `pip-sync`

- [再见requirements.txt，Python管理依赖项请用pip-tools！](https://zhuanlan.zhihu.com/p/486778776)

## Conda

Create a conda environment using `environment.yml`

1. `environment.yml` [[link1](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-from-an-environment-yml-file), [link2](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-file-manually)]

    ```bash
    name: <ENV_NAME>
    channels:
      - defaults
      - conda-forge
    dependencies:
      - python=3.9
      - pip=22.3.1
    ```

2. Create the environment using the file

    ```bash
    conda env update --prune -f environment.yml
    ```

Common commands

| Commands | Description | 描述 |
| --- | --- | --- |
| conda env list | Print all environments | 列出环境 |
| conda create --name [Name] python=3.8 | Create | 创建 |
| conda env remove -n [Name] | Remove | 删除环境 |
| conda activate [Name] | Activate | 进入环境 |
| conda deactivate | Deactivate  | 退出环境 |
| conda --version | Print the conda version | 版本 |
| conda update --all | Update all possible |  |

- [Installation on MacOS](https://docs.conda.io/projects/conda/en/stable/user-guide/install/macos.html)

## virtualenv

> Isolated virtual environments
>

pip
---

| Commands                     | Description |
| ---------------------------- | ----------- |
| pip install --upgrade pip    | Upgrade pip |
| pip install [Name]           | Install     |
| pip install --upgrade [Name] | Upgrade     |

Cookiecutter
---

- [Cookiecutter Data Science](http://drivendata.github.io/cookiecutter-data-science/) [![Cookiecutter Data Science](https://img.shields.io/static/v1?label=&message=Cookiecutter+Data+Science&color=black&logo=github)](https://github.com/drivendata/cookiecutter-data-science)

