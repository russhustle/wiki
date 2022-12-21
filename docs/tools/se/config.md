Configuration
===

|          | Documentation                                           | Repo                                                | PyPI                                         |
| -------- | ------------------------------------------------------- | --------------------------------------------------- | -------------------------------------------- |
| Hydra    | [Docs](https://hydra.cc/docs/intro/)                    | [GitHub](https://github.com/facebookresearch/hydra) | [PyPI](https://pypi.org/project/hydra-core/) |
| Argparse | [Docs](https://docs.python.org/3/library/argparse.html) |                                                     |                                              |

Hydra
---

#### Compose API in Jupyter Notebook

Reference: [Hydra Compose API](https://hydra.cc/docs/advanced/compose_api/)

```python
from hydra import compose, initialize
with initialize(version_base=None, config_path="./configs"):
    cfg = compose(config_name="default")
```

Argparse
---
