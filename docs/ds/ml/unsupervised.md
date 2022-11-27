# Unsupervised Learning

## 1. PCA (Principal Component Analysis)

## 2. K-MEANS clustering

Reference

- [Medium: K-means Clustering: Algorithm, Applications, Evaluation Methods, and Drawbacks](https://towardsdatascience.com/k-means-clustering-algorithm-applications-evaluation-methods-and-drawbacks-aa03e644b48a)

Categories

1. K-Means: `sklearn.cluster.KMeans` [[link](https://scikit-learn.org/stable/modules/generated/sklearn.cluster.KMeans.html)]
2. K-Means++: `sklearn.cluster.KMeans(init='k-means++')`
3. Mini-batch K-Means: `sklearn.cluster.MiniBatchKMeans` [[link](https://scikit-learn.org/stable/modules/generated/sklearn.cluster.MiniBatchKMeans.html)]

![elbow-1](../imgs/elbow-1.png)

### Elbow method - Inertia

> **Inertia**: Intuitively, inertia tells how far away the points within a cluster are. Therefore, a small of inertia is aimed for. The range of inertia’s value starts from zero and goes up.

1. Yellowbrick: `yellowbrick.cluster.KElbowVisualizer` [[link](https://www.scikit-yb.org/en/latest/api/cluster/elbow.html)]
2. W&B: `wandb.sklearn.plot_elbow_curve` [[link](https://docs.wandb.ai/guides/integrations/scikit#elbow-plot)]

![elbow-2](../imgs/elbow-2.png)

### Silhouette score

> Measures & plots how close each point in one cluster is to points in the neighboring clusters. The thickness of the clusters corresponds to the cluster size. The vertical line represents the average silhouette score of all the points.

![silhouette-1](../imgs/silhouette-1.png)

1. Yellowbrick: `yellowbrick.cluster.SilhouetteVisualizer` [[link](https://www.scikit-yb.org/en/latest/api/cluster/silhouette.html)]
2. W&B: `wandb.sklearn.plot_silhouette` [[link](https://docs.wandb.ai/guides/integrations/scikit#silhouette-plot)]

![silhouette-2](../imgs/silhouette-2.png)