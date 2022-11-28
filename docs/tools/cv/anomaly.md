Anomaly Detection
===

|          | Documentation                                                | Home                                                         | PyPI                                       |
| -------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------ |
| Anomalib | [Docs](https://openvinotoolkit.github.io/anomalib/index.html) | [GitHub](https://github.com/openvinotoolkit/anomalib); [arXiv](https://arxiv.org/abs/2202.08341) | [PyPI](https://pypi.org/project/anomalib/) |

Anomalib
---

![anomalib](imgs/anomalib.png)

Algorithms

1. CFlow
2. DFM
3. Fast-Flow
4. Padim
5. Reverse Distillation
6. DFKDE
7. Draem
8. GANomaly
9. PatchCore
10. STFPM

Install the version 0.3.7 in Colab

- Because it will uninstall the coda version's torch and install cpu-torch 1.12.0.

```python
!pip install anomalib==0.3.7
# torch
!pip install https://download.pytorch.org/whl/cu113/torch-1.12.0%2Bcu113-cp37-cp37m-linux_x86_64.whl
# torchvision
!pip install https://download.pytorch.org/whl/cu113/torchvision-0.13.0%2Bcu113-cp37-cp37m-linux_x86_64.whl
```
