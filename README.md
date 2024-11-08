# Data Scientist | Logistics Data Manager | Product Manager
[![Curriculum](https://img.shields.io/badge/Curriculum-link-blue?style=for-the-badge)](https://thalesmansur.github.io/portfolio/curriculum/cv_tbm.pdf)

[![Clifton Certificate](https://img.shields.io/badge/Clifton_strengths-link-orange?style=for-the-badge)](https://thalesmansur.github.io/portfolio/curriculum/Certificate.pdf)

# Projects

## Project Spotlight #1: Optimizing Last-Mile Delivery with K-Means Clustering

### Problem: Delivery scaling past fleet capacity elevated costs tremendously

[![Model Output](https://img.shields.io/badge/Model_Output-link-green?style=for-the-badge)](https://thalesmansur.github.io/portfolio/contents/kmeans_58-c-points.html)

In a recent project that won first place in the Supply Chain and Logistics MBA at Fundação Dom Cabral, I used K-means clustering to enhance last-mile delivery logistics. The project identifies high-density customer areas to strategically place advanced inventory locations, reducing delivery time and transportation costs.

The approach involves iterating through the K-means n_clusters hyperparameter to find the optimal number of clusters. As clusters subdivide, they eventually lose the necessary customer density. The selection criteria for the best cluster configuration focus on maximizing customer density and retaining only clusters that meet a specified minimum number of points within a defined radius. Once these optimized clusters are established, large trucks deliver to a central drop-off point, where crowdshipping takes over for final delivery.

This strategic model significantly improves delivery efficiency by reducing stops and placing inventory closer to high-demand areas, enhancing both speed and scalability for modern logistics.

**Model Results**
![Model_results](/contents/model_results.png)


**Visual representation of the model working**
![Model_results](/contents/model_working.gif)

<hr>

## Project Spotlight #2: Enhancing Warehouse Picking Productivity Evaluation with Order Complexity

### Problem: Standard metrics like Boxes/hour fail to capture productivity nuances in complex orders

Metrics such as Boxes/hour often oversimplify productivity, ignoring that more complex orders require additional time per box due to tasks like warehouse navigation and pallet assembly. To address this, I developed a Random Forest Regression model that leverages six months of data to create a "model worker" profile, representing the team’s "average" productivity for any specific order. By predicting expected picking times, this model enables a relative comparison of individual performance against historical team averages, offering a more dynamic and context-aware benchmark.

The model’s predictions were validated in partnership with supervisors, ensuring both accuracy and practical application.

**Boxplot Analysis: Time and Item Complexity Across Pickers:**
The boxplots reveal that Picker F (green) has higher picking times, which aligns with handling a greater variety of items—a known predictor of longer assembly times for complex orders. This analysis supports a nuanced evaluation of productivity, taking order complexity into account.
![Model_results](/contents/Boxplot_comparison.JPG)


**Model Output:** 
Each new order receives a predicted completion time. Once the order is fulfilled, the worker’s actual time is compared to this prediction to assess performance:

<span style="color:#FFFFFF; background-color: #C00000;font-size: 20px;">*Score 0*:</span> Worker took more than 10% longer than predicted.

<span style="color:#FFFFFF; background-color: #FFC000;font-size: 20px;">*Score 1*:</span> Worker’s time was within ±10% of the predicted time.

<span style="color:#FFFFFF; background-color: #50B893;font-size: 20px;">*Score 2*:</span> Worker completed the order in at least 10% less time than predicted.

![Model_results](/contents/model_classification_output.jpeg)

This scoring system enables performance classification by comparing each worker’s results against a “model” worker, created from six months of team-wide data assembling similar orders. This approach offers a consistent benchmark for individual productivity evaluation.

<hr>


## Projects to Detail:

### Transportation costs breakdown by cost function integral

<hr>

### Truck low productivity heatmap using tracking data clustering
