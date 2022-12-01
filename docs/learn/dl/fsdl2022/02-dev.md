Development Infrastructure & Tooling
===

![IMG_00001](imgs/02-dev/IMG_00001.jpg)

![IMG_00002](imgs/02-dev/IMG_00002.jpg)

![IMG_00003](imgs/02-dev/IMG_00003.jpg)

![IMG_00004](imgs/02-dev/IMG_00004.jpg)

![IMG_00005](imgs/02-dev/IMG_00005.jpg)

![IMG_00006](imgs/02-dev/IMG_00006.jpg)

![IMG_00007](imgs/02-dev/IMG_00007.jpg)

01-Software engineering
---

![IMG_00008](imgs/02-dev/IMG_00008.jpg)

### Programming Language

![IMG_00009](imgs/02-dev/IMG_00009.jpg)

### Editors

![IMG_00010](imgs/02-dev/IMG_00010.jpg)

- Vim
- Emacs
- Jupyter
- VS Code
- PyCharm

#### VS Code

![IMG_00011](imgs/02-dev/IMG_00011.jpg)

Features:

1. Git
2. Documentation 
3. Lint: **Linting** is the automated checking of your source code for <u>programmatic and stylistic errors</u>.
4. Remote

![IMG_00012](imgs/02-dev/IMG_00012.jpg)

#### Jupyter Notebooks

![IMG_00013](imgs/02-dev/IMG_00013.jpg)

![IMG_00014](imgs/02-dev/IMG_00014.jpg)

![IMG_00015](imgs/02-dev/IMG_00015.jpg)

#### Recommendation

![IMG_00016](imgs/02-dev/IMG_00016.jpg)

![IMG_00017](imgs/02-dev/IMG_00017.jpg)

![IMG_00018](imgs/02-dev/IMG_00018.jpg)

![IMG_00019](imgs/02-dev/IMG_00019.jpg)

### FSDL Environment 

![IMG_00020](imgs/02-dev/IMG_00020.jpg)

![IMG_00021](imgs/02-dev/IMG_00021.jpg)

02-DL Framework
---

![IMG_00022](imgs/02-dev/IMG_00022.jpg)

![IMG_00023](imgs/02-dev/IMG_00023.jpg)

![IMG_00024](imgs/02-dev/IMG_00024.jpg)

![IMG_00025](imgs/02-dev/IMG_00025.jpg)

![IMG_00026](imgs/02-dev/IMG_00026.jpg)

### PyTorch

![IMG_00027](imgs/02-dev/IMG_00027.jpg)

### PyTorch Lightning

![IMG_00028](imgs/02-dev/IMG_00028.jpg)

### FastAI

![IMG_00029](imgs/02-dev/IMG_00029.jpg)

### TensorFlow

![IMG_00030](imgs/02-dev/IMG_00030.jpg)

### Jax

![IMG_00031](imgs/02-dev/IMG_00031.jpg)

03-Meta-frameworks and model zoos
---

![IMG_00032](imgs/02-dev/IMG_00032.jpg)

### PyTorch Hub

![IMG_00033](imgs/02-dev/IMG_00033.jpg)

### ONNX

![IMG_00034](imgs/02-dev/IMG_00034.jpg)

### Hugging Face

![IMG_00035](imgs/02-dev/IMG_00035.jpg)

### TIMM

[Ross Wightman](https://twitter.com/wightmanr)

![IMG_00036](imgs/02-dev/IMG_00036.jpg)

04-Distributed Training
---

![IMG_00037](imgs/02-dev/IMG_00037.jpg)

![IMG_00038](imgs/02-dev/IMG_00038.jpg)

### Trivial Parallelism

- Data: 1 GPU
- Model: 1 GPU

![IMG_00039](imgs/02-dev/IMG_00039.jpg)

![IMG_00040](imgs/02-dev/IMG_00040.jpg)

### Data Parallelism

- Data: 1 GPU
- Model: Multiple GPUs

![IMG_00041](imgs/02-dev/IMG_00041.jpg)

![IMG_00042](imgs/02-dev/IMG_00042.jpg)

![IMG_00043](imgs/02-dev/IMG_00043.jpg)

![IMG_00044](imgs/02-dev/IMG_00044.jpg)

### Multiple GPUs

![IMG_00045](imgs/02-dev/IMG_00045.jpg)

![IMG_00046](imgs/02-dev/IMG_00046.jpg)

#### Sharded data-parallelism

![IMG_00047](imgs/02-dev/IMG_00047.jpg)

![IMG_00048](imgs/02-dev/IMG_00048.jpg)

![IMG_00049](imgs/02-dev/IMG_00049.jpg)

![IMG_00050](imgs/02-dev/IMG_00050.jpg)

![IMG_00051](imgs/02-dev/IMG_00051.jpg)

#### Pipelined model-parallelism

![IMG_00052](imgs/02-dev/IMG_00052.jpg)

![IMG_00053](imgs/02-dev/IMG_00053.jpg)

#### Tensor-parallelism

![IMG_00054](imgs/02-dev/IMG_00054.jpg)

![IMG_00055](imgs/02-dev/IMG_00055.jpg)

- Matrix multiplication
- [Megatron-LM](https://github.com/NVIDIA/Megatron-LM)

![IMG_00056](imgs/02-dev/IMG_00056.jpg)

- 3d-parallelism

![IMG_00057](imgs/02-dev/IMG_00057.jpg)

- [BLOOM](https://huggingface.co/bigscience/bloom)
- [The Technology Behind BLOOM Training](https://huggingface.co/blog/bloom-megatron-deepspeed)

![IMG_00058](imgs/02-dev/IMG_00058.jpg)

### Other ways to speed up

![IMG_00059](imgs/02-dev/IMG_00059.jpg)

### More Training Tricks

![IMG_00060](imgs/02-dev/IMG_00060.jpg)

### MosaicML

- [MosaicML Composer](https://github.com/mosaicml/composer)
- [MosaicML Explorer]()

![IMG_00061](imgs/02-dev/IMG_00061.jpg)

![IMG_00062](imgs/02-dev/IMG_00062.jpg)

### FFCV

![IMG_00063](imgs/02-dev/IMG_00063.jpg)

05-Compute
---

![IMG_00064](imgs/02-dev/IMG_00064.jpg)

![IMG_00065](imgs/02-dev/IMG_00065.jpg)

### GPU Basics

![IMG_00066](imgs/02-dev/IMG_00066.jpg)

### GPU Comparison

![IMG_00067](imgs/02-dev/IMG_00067.jpg)

![IMG_00068](imgs/02-dev/IMG_00068.jpg)

![IMG_00069](imgs/02-dev/IMG_00069.jpg)

### Benchmarks

![IMG_00070](imgs/02-dev/IMG_00070.jpg)

![IMG_00071](imgs/02-dev/IMG_00071.jpg)

### Cloud Providers

![IMG_00072](imgs/02-dev/IMG_00072.jpg)

### TPUs

![IMG_00073](imgs/02-dev/IMG_00073.jpg)

- TPU v4
- TPU v3

> GA: general availability

![IMG_00074](imgs/02-dev/IMG_00074.jpg)

### Cost with bechmark

![IMG_00075](imgs/02-dev/IMG_00075.jpg)

❗️Expensive per-hour ≠ Expensive per-experiment

![IMG_00076](imgs/02-dev/IMG_00076.jpg)

![IMG_00077](imgs/02-dev/IMG_00077.jpg)

![IMG_00078](imgs/02-dev/IMG_00078.jpg)

![IMG_00079](imgs/02-dev/IMG_00079.jpg)

### Conclusions

![IMG_00080](imgs/02-dev/IMG_00080.jpg)

### On-prem Options

![IMG_00081](imgs/02-dev/IMG_00081.jpg)

![IMG_00082](imgs/02-dev/IMG_00082.jpg)

> A **rite of passage** is a ceremony or ritual of the passage which occurs when an individual leaves one group to enter another.（成人礼）

![IMG_00083](imgs/02-dev/IMG_00083.jpg)

![IMG_00084](imgs/02-dev/IMG_00084.jpg)

![IMG_00085](imgs/02-dev/IMG_00085.jpg)

![IMG_00086](imgs/02-dev/IMG_00086.jpg)

- [Which GPU(s) to Get for Deep Learning: My Experience and Advice for Using GPUs in Deep Learning](https://timdettmers.com/2020/09/07/which-gpu-for-deep-learning/)

![IMG_00087](imgs/02-dev/IMG_00087.jpg)

- [Choosing Your Deep Learning Infrastructure: The Cloud vs. On-Prem Debate](https://www.determined.ai/blog/cloud-v-onprem)

![IMG_00088](imgs/02-dev/IMG_00088.jpg)

06-Resource Management
---

![IMG_00089](imgs/02-dev/IMG_00089.jpg)

![IMG_00090](imgs/02-dev/IMG_00090.jpg)

### Manual

![IMG_00091](imgs/02-dev/IMG_00091.jpg)

### Slurm

![IMG_00092](imgs/02-dev/IMG_00092.jpg)

### Docker

![IMG_00093](imgs/02-dev/IMG_00093.jpg)

### Kubernetes + Kubeﬂow

![IMG_00094](imgs/02-dev/IMG_00094.jpg)

### Cloud

![IMG_00095](imgs/02-dev/IMG_00095.jpg)

![IMG_00096](imgs/02-dev/IMG_00096.jpg)

#### AWS SageMaker

![IMG_00097](imgs/02-dev/IMG_00097.jpg)

![IMG_00098](imgs/02-dev/IMG_00098.jpg)

![IMG_00099](imgs/02-dev/IMG_00099.jpg)

#### Anyscale

![IMG_00100](imgs/02-dev/IMG_00100.jpg)

#### Grid.ai

![IMG_00101](imgs/02-dev/IMG_00101.jpg)

#### Non-ML speciﬁc solutions

##### Spotty

![IMG_00102](imgs/02-dev/IMG_00102.jpg)

##### Determined.ai

![IMG_00103](imgs/02-dev/IMG_00103.jpg)

![IMG_00104](imgs/02-dev/IMG_00104.jpg)

![IMG_00105](imgs/02-dev/IMG_00105.jpg)

![IMG_00106](imgs/02-dev/IMG_00106.jpg)

07-Experiment and Model Management
---

![IMG_00107](imgs/02-dev/IMG_00107.jpg)

![IMG_00108](imgs/02-dev/IMG_00108.jpg)

### Tensorboard

![IMG_00109](imgs/02-dev/IMG_00109.jpg)

### MLFlow

![IMG_00110](imgs/02-dev/IMG_00110.jpg)

### Weights & Biases

![IMG_00111](imgs/02-dev/IMG_00111.jpg)

![IMG_00112](imgs/02-dev/IMG_00112.jpg)

![IMG_00113](imgs/02-dev/IMG_00113.jpg)

### Determined.ai

![IMG_00114](imgs/02-dev/IMG_00114.jpg)

### Other solutions

- [neptune.ai](https://neptune.ai/)
- [comet](comet)

![IMG_00115](imgs/02-dev/IMG_00115.jpg)

### Hyperparameter Optimization

![IMG_00116](imgs/02-dev/IMG_00116.jpg)

#### W&B Sweeps

![IMG_00117](imgs/02-dev/IMG_00117.jpg)

![IMG_00118](imgs/02-dev/IMG_00118.jpg)

08-All-in-one Solutions
---

![IMG_00119](imgs/02-dev/IMG_00119.jpg)

![IMG_00120](imgs/02-dev/IMG_00120.jpg)

### Amazon Sagemaker

![IMG_00121](imgs/02-dev/IMG_00121.jpg)

### Gradient by Paperspace

![IMG_00122](imgs/02-dev/IMG_00122.jpg)

### Domino

![IMG_00123](imgs/02-dev/IMG_00123.jpg)

![IMG_00124](imgs/02-dev/IMG_00124.jpg)

![IMG_00125](imgs/02-dev/IMG_00125.jpg)

![IMG_00126](imgs/02-dev/IMG_00126.jpg)

![IMG_00127](imgs/02-dev/IMG_00127.jpg)
