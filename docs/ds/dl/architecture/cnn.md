Convolutional Neural Network
===

| Published | Model        | Description                | Memo                                      |
| --------- | ------------ | -------------------------- | ----------------------------------------- |
| 2012      | AlexNet      | ImageNet moment            |                                           |
| 2014      | VGG          | Stacking 3$\times$3 layers |                                           |
| 2014      | Inceptions   | Parallel branches          |                                           |
| 2015      | ResNet       | Identity shortcuts         |                                           |
| 2016      | ResNext      | Grouped convolution        |                                           |
| 2016      | DenseNet     | Dense Shortcuts            |                                           |
| 2016      | MobileNets   | Depthwise                  |                                           |
| 2019      | EfficientNet | Model Scaling              |                                           |
| 2020      | RegNet       | Design spaces              |                                           |
| 2022      | ConvNext     |                            | [arXiv](https://arxiv.org/abs/2201.03545) |
| 2023      | ConvNeXt V2  | ConvNext + MAE             | [arXiv](https://arxiv.org/abs/2301.00808) |

MobileNet
---

ConvNext
---

![convnext-cover](imgs/convnext-cover.png)

ConvNeXt V2
---

- Reference: [ConvNeXt-V2：当MAE遇见ConvNeXt会碰撞出怎样的火花？](https://mp.weixin.qq.com/s/6msbFRNpsO9BVL7-yi-wYA)

![convnext-v2-cover](imgs/convnext-v2-cover.png)

### FCMAE

FCMAE (**F**ully **C**onvolutional **M**asked **A**uto**e**ncoder)

![convnext-v2-fcmae](imgs/convnext-v2-fcmae.png){width="500"}

- FCMAE framework
    - A sparse ConvNeXt encoder
    - A lightweight ConvNeXt decoder
- Masking: a random masking strategy with a masking ratio of 0.6

![convnext-v2-block](imgs/convnext-v2-block.png){width="500"}
