# mlops-rnd

Evaluation codes to design quick win MLOps architecture with open sources. All codes are tested on ml-workspace and Visual Studio Code. GCP is used for the evaluation.
<br>
## Evaluation Candidates

### MLOps Design Pattern

* Design Pattern : [https://github.com/mercari/ml-system-design-pattern](https://github.com/mercari/ml-system-design-pattern)

### EDA / Feature Engineering

* ml-workspace : [https://github.com/ml-tooling/ml-workspace](https://github.com/ml-tooling/ml-workspace)
* plotly : [https://github.com/plotly/plotly\_express](https://github.com/plotly/plotly_express)
* lux : [https://github.com/lux-org/lux](https://github.com/lux-org/lux)
* facets : [https://github.com/PAIR-code/facets](https://github.com/PAIR-code/facets)
* Ray Core : [https://docs.ray.io/en/latest/walkthrough.html](https://docs.ray.io/en/latest/walkthrough.html)
* Modin : [https://docs.ray.io/en/latest/modin/index.html](https://docs.ray.io/en/latest/modin/index.html)

### Train

* Feast : [https://docs.feast.dev/](https://docs.feast.dev/)
* Tecton : [https://www.tecton.ai/blog/what-is-a-feature-store/](https://www.tecton.ai/blog/what-is-a-feature-store/) (only available on AWS)
* Frameworks (Tensorflow, PyTorch, MXNet, Scikit Learn etc.)
* Ray SGD (TBD)

### Evaluation/Test/Hyperparameter Tuning

* **Tensorboard**
* **What-If-Tool :** [https://pair-code.github.io/what-if-tool/](https://pair-code.github.io/what-if-tool/)

### Model Management

* **keepsake :** [https://github.com/replicate/keepsake](https://github.com/replicate/keepsake)
* **ML Metadata**

### Data/Notebook Versioning

* **DVC :** [https://github.com/iterative/dvc](https://github.com/iterative/dvc),  [https://www.analyticsvidhya.com/blog/2021/06/mlops-versioning-datasets-with-git-dvc/](https://www.analyticsvidhya.com/blog/2021/06/mlops-versioning-datasets-with-git-dvc/)

### Pipeline build-up/Templating

* **Kubeflow**
* **Dockerize tools (TBD)**
* cookie-cutter : [https://github.com/drivendata/cookiecutter-data-science](https://github.com/drivendata/cookiecutter-data-science)

### Model Serving

* Seldon
* **fastapi**
* **Ray serve :** [https://docs.ray.io/en/master/serve/index.html#](https://docs.ray.io/en/master/serve/index.html#)

### CI/CD/CT

* **CML :** [https://github.com/iterative/cml](https://github.com/iterative/cml)

### Monitoring & Feedback

* **Evidently :** [https://github.com/evidentlyai/evidently](https://github.com/evidentlyai/evidently)

### GPU Clustering

* Remote Kernel : [https://github.com/tdaff/remote\_ikernel](https://github.com/tdaff/remote_ikernel)
* slurm : [https://slurm.schedmd.com/documentation.html](https://slurm.schedmd.com/documentation.html)

## Backlog

### Dataset for Research

##### Dataset candidates

<span class="colour" style="color: rgb(98, 98, 100);">[https://github.com/awesomedata/awesome-public-datasets](https://github.com/awesomedata/awesome-public-datasets)</span>
[https://towardsdatascience.com/5-data-science-projects-that-you-can-complete-over-the-weekend-34445b14707d](https://towardsdatascience.com/5-data-science-projects-that-you-can-complete-over-the-weekend-34445b14707d)

##### Merlin training with criteo dataset

[https://docs.google.com/document/d/1P\_BerGSP5CNzGjGbRqgMrPcNaCmQuKUyodFaG0jlu9I/edit#heading=h.zdus0kibjxax](https://docs.google.com/document/d/1P_BerGSP5CNzGjGbRqgMrPcNaCmQuKUyodFaG0jlu9I/edit#heading=h.zdus0kibjxax)
[https://github.com/NVIDIA-Merlin/gcp-ml-ops](https://github.com/NVIDIA-Merlin/gcp-ml-ops)

##### Retail data

[https://www.bls.gov/cew/downloadable-data-files.htm](https://www.bls.gov/cew/downloadable-data-files.htm) [good]
[https://data.iowa.gov/Sales-Distribution/Iowa-Liquor-Sales/m3tr-qhgy/data](https://data.iowa.gov/Sales-Distribution/Iowa-Liquor-Sales/m3tr-qhgy/data) [good]

##### MLOps based dataset

[https://github.com/GokuMohandas/MLOps](https://github.com/GokuMohandas/MLOps)
<br>
### etc

[https://github.com/dslp/dslp-repo-template](https://github.com/dslp/dslp-repo-template)
[https://github.com/academic/awesome-datascience](https://github.com/academic/awesome-datascience)
[https://github.com/alteryx/featuretools](https://github.com/alteryx/featuretools)
[https://github.com/academic/awesome-datascience#data-sets](https://github.com/academic/awesome-datascience#data-sets)
[https://github.com/visenger/awesome-mlops](https://github.com/visenger/awesome-mlops)
github actions : [https://mlops.githubapp.com/examples](https://mlops.githubapp.com/examples)
[https://neptune.ai/blog/best-mlops-platforms-to-manage-machine-learning-lifecycle](https://neptune.ai/blog/best-mlops-platforms-to-manage-machine-learning-lifecycle)
[https://towardsdatascience.com/mlops-practices-for-data-scientists-dbb01be45dd8](https://towardsdatascience.com/mlops-practices-for-data-scientists-dbb01be45dd8)
steppy, modelstore, sacred : [https://github.com/EthicalML/awesome-production-machine-learning](https://github.com/EthicalML/awesome-production-machine-learning) [good]