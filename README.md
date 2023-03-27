# Analyzing Bitcoin Cash Blockchain with Google Cloud
This repository contains code and instructions for analyzing the Bitcoin Cash blockchain using Google Cloud tools. The project materializes a staging table from the transactions raw table, selects the last three months of data from it, and materializes a data mart table that gives the current balance for all addresses and excludes addresses that had at least one transaction on Coinbase. Finally, a graph is plotted that shows the amount of daily transactions over time.
I was made during a challenge provided by [Astrafy](https://www.astrafy.io/).
![Astrafy_logo.png](Astrafy_logo.png)


## Table of content
- [Analyzing Bitcoin Cash Blockchain with Google Cloud](#analyzing-bitcoin-cash-blockchain-with-google-cloud)
  - [Table of content](#table-of-content)
  - [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installing Dependencies](#installing-dependencies)
  - [Running the Project](#running-the-project)
  - [Authors](#authors)
  - [License](#license)


## Getting Started
To run this project, you will need a Google Cloud account and access to the Bitcoin Cash dataset on BigQuery.

1. Clone this repository to your local machine using git clone https://github.com/AlexisGuillotin/Bitcoin-Cash-Challenge.
2. Create a new Google Cloud project
3. Use dbt cloud to materialize the two tables mentioned above.
4. Open the bitcoin-cash-graph.ipynb notebook using Google Colab.
5. Follow the instructions in the notebook to plot the chart of daily transactions.

## Prerequisites
Before running this project, you need to have the following:

- A Google Cloud account with billing enabled
- Access to the Bitcoin Cash dataset on BigQuery
- Python 3.x installed
- Jupyter Notebook or Google Colab installed

## Installing Dependencies
The following Python libraries are required to run this project:

- pandas
- matplotlib
- seaborn
- bigquery

You can install these libraries using pip:


```
pip install pandas matplotlib seaborn
```
## Running the Project
To run this project, follow the steps in the Getting Started section above.

## Authors
Alexis Guillotin

## License
This project is licensed under the GPL-3.0 license - see the [LICENSE](LICENSE) file for details.