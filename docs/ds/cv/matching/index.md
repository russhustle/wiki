Feature Matching
===

Table 1. Important deep learning models for feature matching. 

| Published Month | Model Name                                             | Description                                                  |
| --------------- | ------------------------------------------------------ | ------------------------------------------------------------ |
| 2017-11         | Dog-AffNet-HardNet                                     |                                                              |
| 2017-12         | SuperPoint [[arXiv](https://arxiv.org/abs/1712.07629)] | Self-supervised; homographic adaptation                      |
| 2018-10         | NCNet [[arXiv]()]                                      | End-to-end CNN; weak supervision                             |
| 2019-05         | D2Net [[arXiv]()]                                      |                                                              |
| 2019-06         | R2D2 [[arXiv]()]                                       | Repeatable and reliable keypoints                            |
| 2019-11         | SuperGlue [[arXiv]()]                                  | Optimal transport; GNN                                       |
| 2020-04         | SparseNCNet [[arXiv]()]                                |                                                              |
| 2020-04         | CAPS [[arXiv]()]                                       | Relative camera poses; epipolar loss; coarse-to-fine architecture |
| 2020-12         | Patch2Pix [[arXiv]()]                                  | Detect-to-reﬁne manner                                       |
| 2021-03         | COTR [[arXiv]()]                                       |                                                              |
| 2021-04         | LoFTR [[arXiv]()]                                      | Transformer; coarse-to-fine                                  |

CAPS
---

![caps-cover](imgs/caps-cover.png)

- Challenge: Difficult to acquire at scale ground-truth correspondences between feature points for training
- Solution: weakly-supervised framework; relative camera poses
- Novelty
    - a new loss function
    - a new architecture
- Results: SOTA performance

![caps-architecture](imgs/caps-architecture.png)

Differential matching layer

- Probability distribution

$$
\mathcal{p} (x|x_{1},M_{1},M_{2})=\frac{\mathrm{exp} (M_{1}(x_{1})^{T}M_{2}(x))}{\Sigma_{y\in I_{2}}\mathrm{exp} (M_{1}(x_{1})^{T}M_{2}(y))}
$$

- Expectation

$$
\hat{x}_{2}=h_{1\rightarrow2}(\mathbf{x}_{1})=\sum\limits_{x\in \mathbf{I_2} }x\cdot p(\mathbf{x} |\mathbf{x} _{1},M_{1},M_{2})
$$

Coarse-to-fine architecture
