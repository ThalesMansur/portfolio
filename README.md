# Data Scientist
[![Curriculum](https://img.shields.io/badge/Curriculum-link-blue?style=for-the-badge)](https://thalesmansur.github.io/portfolio/curriculum)

# Projects

[![Model Output](https://img.shields.io/badge/Model_Output-link-green?style=for-the-badge)](https://thalesmansur.github.io/portfolio/contents/kmeans_58-c-points.html)

1st place project in Supply Chain and Logistics MBA at Fundação Dom Cabral, it uses K-means to identify high costumer density locations so advanced inventories can be placed near its centroid. Then, instead of using large trucks stopping at every delivery point, deliveris for the whole day are dropped at a single point and crowdshipped to the final costumer.

It works by iterating through values of the K-means n_clusters hyperparamater and eliminating clusters that don't satisfy the minimum conditions for cluster survival (chosen number of points inside chosen radius). As the number of clusters raises, it starts to sub-divide clusters and lose customer density. The optimal point is chosen where the customer density is the highest.

**Model Results**
![Model_results](/contents/model_results.png)


**Visual representation of the model working**
![Model_results](/contents/model_working.gif)

