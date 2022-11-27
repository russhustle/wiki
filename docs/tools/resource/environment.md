# Environment

|  | Documentation | Homepage | PyPI |
| --- | --- | --- | --- |
| poetry | [Doc](https://python-poetry.org/docs/) | [GitHub](https://github.com/python-poetry/poetry) |  |
| pipenv | [Doc](https://pipenv.pypa.io/en/latest/) | [GitHub](https://github.com/pypa/pipenv) | [PyPI](https://pypi.org/project/pipenv/) |
| pip-tools | [Doc](https://pip-tools.readthedocs.io/en/latest/) | [GitHub](https://github.com/jazzband/pip-tools) | [PyPI](https://pypi.org/project/pip-tools/) |
| Conda | [Doc](https://docs.conda.io/en/latest/) | [GitHub](https://github.com/conda/conda) |  |
| virtualenv | [Doc](https://virtualenv.pypa.io/en/latest/index.html) | [GitHub](https://github.com/pypa/virtualenv) | [PyPI](https://pypi.org/project/virtualenv/) |

## Poetry

💡Python Dependency

| 命令 |  描述 |
| --- | --- |
| poetry new <name> | 创建项目 |
| poetry init | 用于初始化项目 |
| poetry install | 安装pyproject.toml的包 |
| poetry update | 更新pyproject.toml的包 |
| poetry update <package> | 更新 |
| poetry add <package> | 加包 |
| poetry remove <package> | 删除 |
| poetry show | 展示所有包，类似于pip list |
| poetry show <package> | 展示特定包的信息 |
| poetry shell | 进入虚拟环境；相当于conda activate；exit退出 |
| poetry run python -V |  |
| poetry about | poetry信息 |
| poetry self update | 升级poetry |

[Version constraint](https://python-poetry.org/docs/basic-usage/#version-constraints): `^2.1` equals to `>=2.1.0 <3.0.0`

## pipenv

💡Python development workflow

|  | Commands | Description |
| --- | --- | --- |
| 进入环境 | pipenv shell | Activate; exit to deactivate |
|  | pipenv –venv | Locates for a particular project |
| 删除环境 | pipenv –rm | Delete environment; this will not remove the Pipfiles |
| 安装 | pipenv install <package> | Install |
|  | pipenv install <package> –dev | Development environment |
| 卸载 | pipenv uninstall <package> | Uninstall |
| 卸载所有 | pipenv uninstall –all | Uninstall all packages |
|  | pipenv uninstall –all -dev |  |
| 更新 | pipenv update <package> | Update |
| 更新所有 | pipenv update | Updates all packages |
| 通过文件安装 | pipenv install -r requirements.txt | Installs a list of requirements |
| 导出 | pipenv lock -r > requirements.txt | Export a list of requirements |

## pip-tools

💡`pip-tools` = `pip-compile` + `pip-sync`

- [再见 requirements.txt，Python 管理依赖项请用 pip-tools！](https://zhuanlan.zhihu.com/p/486778776)

## Conda

💡DS Environment

- Create a conda environment using `environment.yml`
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
    
- Common commands

|  | Commands | Description |
| --- | --- | --- |
| 列出环境 | conda env list | Print all environments |
| 创建 | conda create --name <name> python=3.8 | Create |
| 删除环境 | conda env remove -n <name> | Remove |
| 进入环境 | conda activate <name> | Activate |
| 推出环境 | conda deactivate | Deactivate  |
| 版本 | conda --version | Print the conda version |
- [Installation on MacOS](https://docs.conda.io/projects/conda/en/stable/user-guide/install/macos.html)

## virtualenv

💡Isolated Python environment