# Real Estate RWA Underwriting & Tokenization Screening Pipeline

## 1. Overview

This repository contains a research and technical proof-of-concept pipeline that combines:

- Real estate financial analysis
- Geography and regional planning concepts
- Geospatial risk screening
- Python-based data processing
- GIS and coastal-change analysis
- RWA (Real-World Asset) tokenization modelling
- Solidity-based on-chain asset registration

The project explores how physical real estate assets can be systematically screened for potential tokenization by combining property-level financial metrics with geographic, environmental and planning-related indicators.

The core concept is:

**Physical Asset → Geospatial Risk → Financial Underwriting → RWA Screening → Blockchain Asset Registry**

This project demonstrates how geographical and regional planning considerations can complement real estate financial analysis in an RWA underwriting workflow.

It is a technical and research proof-of-concept, not a production investment, legal, regulatory or securities-issuance system.

---

## 2. Project Objective

The objective is to demonstrate how regional planning and geospatial considerations can be incorporated into an RWA underwriting workflow.

The pipeline currently evaluates:

1. Property market value.
2. Annual rental income.
3. Gross rental yield.
4. Geographic and planning-related risk scores.
5. Risk-adjusted property valuation.
6. Theoretical fractional token quantity.
7. Eligible token quantity.
8. RWA screening outcome.
9. Spatial coastal-change evidence for selected properties.
10. Solidity-based on-chain asset registration logic.

The project particularly explores the intersection of **Geography, Regional Planning, Real Estate Analytics, Python and Blockchain Technology**.

---

## 3. Project Architecture

```text
                    REAL ESTATE ASSET
                           |
                           v
                +---------------------+
                |   Property Data     |
                | Value / Rent / GIS  |
                +----------+----------+
                           |
                           v
                +---------------------+
                | Geospatial Risk     |
                | & Planning Screen   |
                +----------+----------+
                           |
                           v
                +---------------------+
                | Financial Analysis  |
                | Yield / Valuation   |
                +----------+----------+
                           |
                           v
                +---------------------+
                | RWA Screening       |
                | Pass / Reject       |
                +----------+----------+
                           |
                           v
                +---------------------+
                | Solidity Asset      |
                | Registry Prototype  |
                +---------------------+
```

### Extended GIS Architecture

```text
          DIGITAL EARTH AFRICA COASTLINES
                         |
                         v
                Coastal-Change Data
                         |
                         v
                GeoPandas Processing
                         |
                         v
               Spatial Property Linkage
                         |
                         v
              Nearest Observation Analysis
                         |
                         v
                Coastal Evidence Table
                         |
                         v
             Integrated RWA Portfolio
```

The GIS extension provides additional environmental context for selected coastal properties. Its measurements are retained as evidence indicators rather than automatically converted into property-risk scores.

---

## 4. Repository Structure

```text
rwa-realestate-analytics/
|
|-- contracts/
|   |-- RWAPropertyToken.sol
|
|-- data/
|   |-- rwa_tokenized_portfolio.csv
|
|-- notebooks/
|   |-- rwa_pipeline.ipynb
|   |-- rwa_pipeline_updated.ipynb
|
|-- outputs/
|   |-- README.md
|   |-- rwa_property_locations.png
|   |-- rwa_coastal_change_map.png
|   |-- rwa_coastal_linkage.csv
|   |-- rwa_coastal_evidence_table.csv
|   |-- rwa_portfolio_with_coastal_evidence.csv
|
|-- README.md
|-- requirements.txt
```

### Main Components

**`notebooks/rwa_pipeline.ipynb`**

The original Python-based real estate underwriting and screening pipeline.

**`notebooks/rwa_pipeline_updated.ipynb`**

The extended notebook containing the GIS mapping, Digital Earth Africa coastal-data retrieval, spatial analysis and integrated portfolio outputs.

**`contracts/RWAPropertyToken.sol`**

A Solidity proof-of-concept asset registry that applies simplified administrative, geographic-risk and token-quantity validation rules.

**`data/rwa_tokenized_portfolio.csv`**

The original processed illustrative property portfolio.

**`outputs/`**

Contains the generated geographic maps, coastal evidence tables and integrated portfolio dataset.

---

## 5. Python-Based Real Estate Underwriting

The Python processing module uses Pandas and NumPy to simulate property listings and calculate financial and screening indicators.

### Financial Indicators

**Gross Rental Yield**

Gross rental yield is calculated as:

\[
\text{Gross Yield (\%)} =
\frac{\text{Annual Rental Income}}{\text{Market Value}}
\times 100
\]

**Risk-Adjusted Valuation**

The prototype applies a 20% valuation haircut to properties with a geographic/planning risk score of 4 or higher.

\[
\text{Adjusted Value} =
\text{Market Value}\times(1-\text{Adjustment Rate})
\]

**Theoretical Token Quantity**

The prototype uses a baseline token denomination of GHS 100.

\[
\text{Modelled Tokens} =
\frac{\text{Risk-Adjusted Value}}{100}
\]

**Eligible Token Quantity**

Properties passing the prototype's risk threshold receive their modelled token quantity as an eligible quantity for further review.

Properties failing the threshold receive zero eligible tokens.

### Screening Rules

| Risk Score | Prototype Decision |
|---|---|
| Below 4 | Eligible for further tokenization review |
| 4 or above | Rejected – High Risk |

The 20% adjustment and risk threshold are illustrative modelling assumptions. They are not empirically calibrated valuation or regulatory standards.

---

## 6. Illustrative Property Portfolio

The initial prototype contains five simulated real estate listings.

| Property ID | Location | Market Value (GHS) | Gross Yield (%) | Risk Score | Risk-Adjusted Value (GHS) | Eligible Tokens |
|---|---|---:|---:|---:|---:|---:|
| PROP-001 | Airport Residential, Accra | 5,000,000 | 7.00 | 1 | 5,000,000 | 50,000 |
| PROP-002 | Cape Coast (Near UCC) | 1,200,000 | 7.00 | 2 | 1,200,000 | 12,000 |
| PROP-003 | Kumasi Asokwa | 2,500,000 | 7.20 | 1 | 2,500,000 | 25,000 |
| PROP-004 | East Legon, Accra | 4,800,000 | 6.67 | 2 | 4,800,000 | 48,000 |
| PROP-005 | Elmina Coastline | 950,000 | 8.00 | 5 | 760,000 | 0 |

PROP-005 receives a 20% valuation adjustment and is rejected under the prototype's high-risk screening rule.

Its modelled token quantity is 7,600, but its eligible token quantity is zero.

These figures are illustrative and do not represent independently verified market valuations or rental transactions.

---

## 7. GIS-Based Spatial Analysis

The project has been extended with a geospatial analysis module using Python, GeoPandas and Matplotlib.

The GIS module introduces spatial processing into the RWA underwriting workflow.

### Spatial Analysis Components

- Geographic mapping of the five sample property locations.
- Transformation of property coordinates into geographic data structures.
- Retrieval of coastal-change observations from Digital Earth Africa.
- Spatial linkage between selected coastal properties and nearby coastal-change observations.
- Calculation of distances to nearest retrieved observation points.
- Examination of shoreline-change rates and associated statistical indicators.
- Production of geographic visualisations and coastal evidence tables.
- Integration of coastal evidence with the financial underwriting dataset.

### Geographic Property Mapping

The initial GIS module converts latitude and longitude coordinates into GeoPandas point geometries.

The property locations are projected into **EPSG:32630 (UTM Zone 30N)** for distance calculations in metres.

The generated property-location map distinguishes between properties that pass the prototype screening rule and properties rejected by the rule.

Output:

`outputs/rwa_property_locations.png`

---

## 8. Digital Earth Africa Coastal-Change Analysis

The GIS extension uses the Digital Earth Africa Coastlines dataset to examine observed shoreline-change patterns around Cape Coast and Elmina, Ghana.

**Data source:** Digital Earth Africa Coastlines

Documentation:

https://docs.digitalearthafrica.org/en/latest/data_specs/Coastlines_specs.html

The coastal observations are retrieved through the Digital Earth Africa public Web Feature Service (WFS).

The retrieved layer is:

`coastlines:coastlines_v0_4_4_rates_of_change`

The coastal analysis uses a focused study area around Cape Coast and Elmina.

### Coastal Dataset

A total of **626 coastal-change observations** were retrieved for the selected study area.

Using a 5% statistical significance threshold:

- 323 observations met the threshold (p < 0.05).
- 303 observations did not meet the threshold (p ≥ 0.05).

### Important Coastal-Change Attributes

| Attribute | Description |
|---|---|
| `rate_time` | Estimated shoreline-change rate in metres per year |
| `sig_time` | Statistical significance indicator (p-value) |
| `se_time` | Standard error of the estimated change rate |
| `valid_obs` | Number of valid observations |
| `certainty` | Dataset certainty classification |
| `nsm` | Net shoreline movement |
| `sce` | Shoreline-change envelope |

Negative `rate_time` values indicate shoreline retreat, while positive values indicate shoreline growth.

A statistically significant change rate provides evidence of a measurable trend, but does not independently establish its cause or demonstrate that a nearby property is at risk.

---

## 9. Property-to-Coastal-Observation Linkage

GeoPandas spatial analysis is used to identify the nearest retrieved coastal-change observation for selected coastal properties.

Distances are calculated in metres after projecting the datasets into EPSG:32630.

The analysis currently focuses on:

- PROP-002: Cape Coast (Near UCC).
- PROP-005: Elmina Coastline.

### Sample Coastal Evidence Results

| Property | Nearest Observation Distance | Rate (m/year) | Standard Error | p-value | Interpretation |
|---|---:|---:|---:|---:|---|
| PROP-002 – Cape Coast | 1.531 km | -0.50 | 0.14 | 0.002 | Statistically significant retreat at 1% |
| PROP-005 – Elmina | 0.021 km | +0.15 | 0.19 | 0.421 | No statistically significant trend at 1% |

### Interpretation of Results

**PROP-002 – Cape Coast (Near UCC)**

The nearest retrieved coastal-change observation is approximately 1.531 km from the illustrative property coordinate.

It reports a shoreline-change rate of -0.50 metres per year, with a standard error of 0.14 and a p-value of 0.002.

This indicates a statistically significant retreat trend at the 1% level.

Its approximate 95% confidence interval is -0.774 to -0.226 metres per year.

However, the observation is more than one kilometre away from the illustrative property coordinate. Its relevance to the actual property must therefore be independently investigated.

**PROP-005 – Elmina Coastline**

The nearest retrieved observation is approximately 0.021 km (21 metres) from the illustrative property coordinate.

It reports a positive shoreline-change rate of +0.15 metres per year, with a standard error of 0.19 and a p-value of 0.421.

This trend is not statistically significant.

Its approximate 95% confidence interval is -0.222 to +0.522 metres per year, which includes zero.

The observation is geographically nearby, but it does not establish that the property is environmentally safe.

### Coastal Analysis Outputs

- `outputs/rwa_coastal_change_map.png`
- `outputs/rwa_coastal_linkage.csv`
- `outputs/rwa_coastal_evidence_table.csv`

The nearest-observation distance is not necessarily the distance to the physical shoreline. These results must not be treated as verified parcel-level environmental risk assessments.

---

## 10. Integrated RWA Portfolio

The GIS extension produces an integrated property dataset combining financial underwriting indicators with available coastal-change evidence.

The integrated analysis retains the original financial screening decisions while attaching additional coastal evidence to properties within the selected coastal study area.

### Integrated Information Includes

- Property identification and location.
- Market value and annual rental income.
- Gross rental yield.
- Geographic/planning risk score.
- Risk-adjusted property valuation.
- Modelled token quantity.
- Eligible token quantity.
- RWA screening status.
- Nearest coastal-observation distance.
- Coastal-change rate.
- Statistical significance indicator.
- Coastal evidence availability status.

Properties outside the current coastal study area are marked:

`NOT ASSESSED - OUTSIDE CURRENT COASTAL STUDY AREA`

Properties linked to the coastal dataset are marked:

`COASTAL OBSERVATION LINKED - REVIEW REQUIRED`

**The coastal evidence does not automatically change the financial valuation, existing risk score or eligible token quantity.**

Integrated output:

`outputs/rwa_portfolio_with_coastal_evidence.csv`

---

## 11. Solidity Smart Contract Asset Registry

The Solidity component provides a simplified on-chain asset registry for recording property underwriting decisions.

File:

`contracts/RWAPropertyToken.sol`

Compiler requirement:

`Solidity ^0.8.20`

### Contract Features

**1. Administrator Access Control**

Only the ecosystem administrator can register assets through the `onlyAdmin` modifier.

**2. Geographic-Risk Screening Gate**

The contract rejects properties with a zoning risk score of 4 or higher.

**3. Duplicate Property Protection**

Already registered property identifiers cannot be registered again.

**4. Token-Quantity Validation**

The contract checks that the proposed quantity corresponds to the property value using the GHS 100 baseline.

\[
\text{Expected Tokens} =
\frac{\text{Property Value (GHS)}}{100}
\]

**5. Asset Registration**

Properties that pass the prototype screening and validation checks are recorded in the contract's property registry.

### Smart Contract Events

- `AssetRegistered`
- `AssetRejected`

The contract is a simplified asset registry prototype. Despite its project name, it does not currently implement ERC-20, ERC-721, actual token minting, token transfers or regulated security-token functionality.

---

## 12. Smart Contract Testing and Validation

The Solidity contract was compiled using Solidity 0.8.20 and tested locally in Remix VM.

Three main test cases were executed.

| Test | Input | Expected Behaviour | Result |
|---|---|---|---|
| PROP-001 | Risk score 1; 50,000 tokens | Successful asset registration | Passed |
| PROP-005 | Risk score 5; 7,600 tokens | Rejection without property registration | Passed |
| PROP-006 | GHS 5,000,000; 49,999 tokens | Revert due to incorrect token quantity | Passed |

### Test 1: Eligible Property

PROP-001 was registered successfully.

The stored record was verified to contain:

- Property ID: PROP-001
- Location: Airport Residential, Accra
- Market value: GHS 5,000,000
- Risk score: 1
- Eligible token quantity: 50,000
- Eligibility status: True

### Test 2: High-Risk Property

PROP-005 was submitted with a risk score of 5.

The contract executed the high-risk rejection branch. A subsequent registry lookup returned empty property details, zero financial and token values, and a false eligibility status.

### Test 3: Incorrect Token Quantity

PROP-006 was submitted with a market value of GHS 5,000,000 but a proposed token quantity of 49,999.

The transaction reverted with:

`Token quantity does not match valuation model`

This confirmed that the contract's token-quantity validation rule was functioning as intended.

**Testing limitation:** All contract tests were performed in Remix VM. The contract has not been deployed to a public blockchain, and these tests do not constitute a professional smart-contract security audit.

---

## 13. Technology Stack

| Technology | Application |
|---|---|
| Python | Main data-processing environment |
| Pandas | Property data management and financial analysis |
| NumPy | Numerical calculations and screening logic |
| GeoPandas | Geospatial data processing and spatial analysis |
| Matplotlib | Property and coastal-change visualisations |
| Requests | Retrieval of coastal data through WFS |
| Digital Earth Africa | Coastal-change observations |
| Solidity | Smart contract development |
| Remix IDE | Contract compilation and local testing |
| Jupyter Notebook | Development and documentation |

---

## 14. Installation and Execution

### Python Environment

Clone or download this repository.

Install the required Python dependencies:

```bash
pip install -r requirements.txt
```

Launch Jupyter Notebook:

```bash
jupyter notebook
```

### Running the Python Pipeline

1. Open `notebooks/rwa_pipeline_updated.ipynb`.
2. Run the original property-data and financial-underwriting sections.
3. Execute the geographic property-mapping module.
4. Execute the Digital Earth Africa coastal-data retrieval module.
5. Run the property-to-coastal-observation linkage analysis.
6. Execute the coastal evidence and integrated portfolio sections.
7. Review the generated files in the `outputs/` directory.

An active internet connection is required to retrieve coastal observations from Digital Earth Africa.

### Solidity Contract Testing

1. Open https://remix.ethereum.org
2. Create or open `RWAPropertyToken.sol`.
3. Select Solidity compiler version 0.8.20.
4. Compile the contract.
5. Select Remix VM as the deployment environment.
6. Deploy the contract locally.
7. Test the registration, rejection and token-quantity validation functions.

Do not interpret the local Remix deployment as a live blockchain deployment.

---

## 15. Important Research Limitations

This repository is a proof-of-concept built around illustrative property information and simplified underwriting rules.

The following limitations apply:

- Property values and annual rental figures are simulated.
- Property coordinates are illustrative and have not been independently verified.
- Geographic/planning risk scores are manually assigned in the initial prototype.
- The 20% valuation adjustment is a modelling assumption.
- Coastal observations do not establish actual parcel-level environmental exposure.
- Nearest-observation distances are not necessarily distances to the physical shoreline.
- Coastal-change rates do not independently establish future erosion, flood exposure or property damage.
- Land title verification, legal ownership checks and regulatory approval are not implemented.
- The Solidity contract does not mint actual tokens or implement a regulated token standard.
- No real investment decisions should be based on the outputs.

Further validation using authoritative parcel boundaries, verified property coordinates, official zoning information and additional environmental datasets is required before real-world underwriting applications.

---

## 16. Future Development

Potential improvements to the project include:

1. Integration of verified property parcel boundaries and cadastral datasets.
2. Automated spatial risk assessment using authoritative flood and environmental datasets.
3. Improved land-use and zoning compliance screening.
4. Integration of additional coastal and environmental indicators.
5. Development of more comprehensive property valuation and underwriting models.
6. Spatial risk modelling using Python and R.
7. Improved smart-contract security and testing.
8. Exploration of ERC-20-compatible fractional tokenisation architecture.
9. Integration of verified asset documentation and property due-diligence workflows.
10. Development of a user-facing geospatial RWA screening dashboard.

---

## 17. Conclusion

This project demonstrates a technical approach to combining real estate financial analysis, Geography and Regional Planning, geospatial processing and blockchain-based asset registration within a simplified RWA underwriting framework.

The GIS extension introduces observed coastal-change information into the screening workflow, providing an additional source of environmental context for selected coastal properties in Ghana.

By combining Python-based analytics, spatial evidence and Solidity smart-contract validation, the project explores how geographic and planning considerations can contribute to more transparent and structured real-world asset screening.

The long-term objective is to develop a more comprehensive, evidence-based RWA underwriting framework suitable for further research, technical development and evaluation.
