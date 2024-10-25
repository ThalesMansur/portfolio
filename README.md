# Data Scientist

#### Technical Skills: Python, PowerBI, Excel/VBA, SAP

## Education
- Supply Chain and Logistics MBA, Fundação Dom Cabral (2022)	       		
- Summer REU , Johns Hopkins University (2014)
- Chemical Engineering Exchange Student, Florida State University (2014)
- Chemical Engineering, Universidade Federal de Viçosa (2010 - 2015)

## Work Experience
# Ambev S.A (Mar 2016 - Present)
**Data Manager - Payments (_Oct 2023 - Present_)**
Leader of the team responsible for data-focused analysis and automation of supplier payments. Implemented predictive analytics solutions to ensure timely payments and optimize processes impacting payment flows. The team actively detects inconsistencies in other departments' processes that affect payment workflows.

I also serve as Squad Leader for the transition from SAP ECC to HANA, leading KPI report automation, advanced data visualization, and continuous performance indicator monitoring.

Main Projects:
- Development of Python algorithms for automating pending payments analysis, with dynamic visualization in PowerBI.
- Mapping and redesigning processes through data analysis, identifying bottlenecks and inefficiencies.
- Leadership in the monitoring and data analysis team during the migration to SAP HANA, using automated KPIs for real-time tracking.


**Logistics Cost Manager (_Dec 2022 - Oct 2023_)**
Corporate manager of 1st tier transportation costs, including development of 1, 3 and 10 years plans for the 1st tier transportation department and yearly corporate budget planning. Subsequently, I followed up monthly with actual cost analysis and solutions aiming its reduction.

Main Projects:
- Built a data pipeline and BI dashboard comparing cost-versus-budget via REST API
- Automated the process of planning and verifying the Annual Budget
- Analysis of cost trends and forecasts via regression algorithm and clustering
- Created an auditing supply chain allocation program using a Python graph manipulation package
- Created a clustering algorithm to identify high density delivery locations for advanced inventory and crowdshipping

Main Results:
- 100% Individual target achievement
- Over R$50 MM in logistics costs saving - 1st Tier
- 33% Cost Effects KPI improvement


**International Logistics Digital Products and Services Manager	 (_Apr 2021 - Dec 2022_)**
Leader of a 6-person team responsible for optimizing South Africa’s ABI transportation network. Optimization was achieved through implementation and execution of Blue Yonder’s Transportation management system (TMS). Team was also responsible for maintaining master data and improving the optimization algorithm. 
Additionally, I acted as the Product Manager for digital products related to production scheduling, routing, and warehouse management (WMS).

Main Projects:
- Optimization process and algorithm overhaul
- Planning and transport execution timeline consultant for Anheuser Buschs’ South Africa operations
- Creation of Machine Learning algorithm for identifying low productivity picking in PepsiCo's warehouse using Random Forest Regression

Main results:
- 80% Reduction in optimization runs, from 5 to 1
- 83% Reduction in manpower required to provide services, from 6 to 1 – Yearly savings of R$1.2MM
- Improved customer experience (CX) by enhancing key performance indicator (KPI) adherence to optimization plan from -40% to 60%, with NPS of 100;

## Projects
### Identifying Customer High Density geolocations for crowd-warehousing and crowd-shipping
[Output](https://thalesmansur.github.io/portfolio/contents/kmeans_58-c-points.html)

1st place project in Supply Chain and Logistics MBA at Fundação Dom Cabral, it uses K-means to identify high costumer density locations so advanced inventories can be placed near its centroid. Then, instead of using large trucks stopping at every delivery point, deliveris for the whole day are dropped at a single point and crows-shipped to the final costumer.

It works by iterating through values of the K-means n_clusters hyperparamater and eliminating clusters that don't satisfy the minimum conditions for cluster survival (chosen number of points inside chosen radius). As the number of clusters raises, it starts to sub-divide clusters and lose customer density. The optimal point is chosen where the customer density is the highest.

**Model Results**
![Model_results](/contents/model_results.png)

**Visual representation of the model working**
![Model_results](/contents/model_working.gif)

