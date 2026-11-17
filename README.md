# Real Estate RWA Underwriting & Geospatial Screening Pipeline

**Integrating Real Estate Finance, Geography, Regional Planning, Geospatial Intelligence and Blockchain Technology**

---

## 1. Project Overview

This project develops a research and technical proof of concept for incorporating geospatial and environmental evidence into a Real-World Asset (RWA) real-estate underwriting and tokenization-screening workflow.

It combines:

- Real-estate financial analysis and underwriting.
- Geography and Regional Planning concepts.
- Python-based data processing and financial modelling.
- GIS mapping and spatial analysis.
- Coastal-change and environmental evidence.
- Land-cover classification and terrain analysis.
- Historical and future flood-exposure modelling.
- Solidity-based on-chain asset registration.

The project explores how the physical and geographical characteristics of real-estate assets can complement conventional financial analysis when assessing properties for potential tokenization.

The central workflow is:

**Physical Asset → Geospatial Evidence → Environmental Screening → Financial Underwriting → RWA Screening → Blockchain Asset Registry**

The project uses five illustrative real-estate properties in Ghana to demonstrate how financial and geospatial datasets can be combined within a structured analytical pipeline.

**Project status:** Research and technical proof of concept. This is not a production investment, property valuation, legal due-diligence, regulatory compliance or securities-issuance system.

---

## 2. Project Objectives

The main objective is to demonstrate how financial, geographic, environmental and planning-related information can be integrated into an RWA underwriting framework.

The specific objectives are to:

1. Develop a Python-based real-estate financial underwriting model.
2. Calculate gross rental yields and risk-adjusted property valuations.
3. Estimate theoretical and eligible token quantities using illustrative modelling assumptions.
4. Map and analyse sample property locations.
5. Integrate observed coastal-change information into the property-screening workflow.
6. Assess surrounding land-cover composition using satellite-derived classifications.
7. Examine elevation and terrain characteristics using digital elevation data.
8. Investigate modelled river-flood and coastal-flood evidence.
9. Compare historical and future coastal-flood scenarios.
10. Consolidate financial and geospatial evidence into an integrated property dataset.
11. Explore simplified smart-contract logic for on-chain property asset registration.

The project particularly explores the intersection of **Geography, Regional Planning, Real Estate Analytics, Geospatial Data Science and Blockchain Technology**.

---

## 3. Project Architecture

### 3.1 Overall Underwriting Architecture

```text
                  PHYSICAL REAL-ESTATE ASSET
                              |
                              v
                    PROPERTY INFORMATION
                   Value / Rent / Location
                              |
                              v
                 GEOSPATIAL EVIDENCE PIPELINE
                              |
             +----------------+----------------+
             |                |                |
             v                v                v
        Coastal Change    Land Cover      Elevation &
          Analysis         Analysis      Terrain Analysis
             |                |                |
             +----------------+----------------+
                              |
                              v
                    FLOOD EXPOSURE ANALYSIS
                              |
                   +----------+----------+
                   |                     |
                   v                     v
              River Floods          Coastal Floods
                   |                     |
                   +----------+----------+
                              |
                              v
                 INTEGRATED EVIDENCE DATASET
                              |
                              v
                   FINANCIAL UNDERWRITING
                              |
                              v
                     RWA SCREENING
                              |
                              v
                SOLIDITY ASSET REGISTRY
                     (PROTOTYPE)
```

### 3.2 Analytical Layers

| Layer | Main function |
|---|---|
| Property data | Stores illustrative property values, rental income and coordinates |
| Financial underwriting | Calculates yields, adjusted valuations and theoretical tokens |
| Coastal-change analysis | Retrieves and analyses shoreline-change evidence |
| Land-cover analysis | Examines surrounding land-cover characteristics |
| Terrain analysis | Calculates elevation and terrain-slope indicators |
| Flood analysis | Examines modelled riverine and coastal inundation evidence |
| Data integration | Combines analytical outputs into structured property datasets |
| Blockchain prototype | Demonstrates administrative asset-registration logic |

The geospatial measurements are maintained as evidence indicators. They are not automatically converted into empirically validated property-risk scores.

---

## 4. Illustrative Property Portfolio

The initial portfolio consists of five simulated real-estate listings located in Accra, Cape Coast and Kumasi, Ghana.

| Property ID | Location | Market Value (GHS) | Gross Yield (%) | Risk Score | Risk-Adjusted Value (GHS) | Eligible Tokens |
|---|---|---:|---:|---:|---:|---:|
| PROP-001 | Airport Residential, Accra | 5,000,000 | 7.00 | 1 | 5,000,000 | 50,000 |
| PROP-002 | Cape Coast (Near UCC) | 1,200,000 | 7.00 | 2 | 1,200,000 | 12,000 |
| PROP-003 | Kumasi Asokwa | 2,500,000 | 7.20 | 1 | 2,500,000 | 25,000 |
| PROP-004 | East Legon, Accra | 4,800,000 | 6.67 | 2 | 4,800,000 | 48,000 |
| PROP-005 | Elmina Coastline | 950,000 | 8.00 | 5 | 760,000 | 0 |

All five properties are illustrative. Their coordinates, market values, rental figures and initial risk scores have not been independently verified.

---

## 5. Python-Based Financial Underwriting

The financial module uses Python, Pandas and NumPy to process the illustrative property portfolio.

### 5.1 Gross Rental Yield

Gross rental yield measures annual rental income relative to the property's market value.

\[
\text{Gross Rental Yield (\%)} =
\frac{\text{Annual Rental Income}}
{\text{Market Value}}\times 100
\]

### 5.2 Risk-Adjusted Property Valuation

The prototype applies a 20% valuation haircut to properties with a geographic/planning risk score of 4 or higher.

\[
\text{Risk-Adjusted Value} =
\text{Market Value}\times(1-\text{Adjustment Rate})
\]

### 5.3 Theoretical Token Quantity

The illustrative token denomination is GHS 100.

\[
\text{Modelled Token Quantity} =
\frac{\text{Risk-Adjusted Property Value}}{100}
\]

### 5.4 Screening Rules

| Initial Risk Score | Prototype Screening Decision |
|---|---|
| Below 4 | Eligible for further tokenization review |
| 4 or above | Rejected – High Risk |

Properties passing the initial screening rule retain their modelled token quantity as a theoretical eligible quantity for further review. Properties rejected by the rule receive zero eligible tokens.

For example, PROP-005 receives a 20% valuation haircut, resulting in a risk-adjusted value of GHS 760,000 and a modelled quantity of 7,600 tokens. Its eligible token quantity is zero because its initial risk score is 5.

The 20% haircut, GHS 100 denomination and risk threshold are illustrative modelling assumptions. They are not empirically calibrated financial, valuation or regulatory standards.

---

## 6. Geospatial Analysis and Environmental Evidence

The project extends the financial underwriting model by introducing multiple geospatial datasets.

### 6.1 Property Location Mapping

The initial GIS module converts the five illustrative property coordinates into spatial point geometries.

Python and GeoPandas are used to process the geographic information, while Matplotlib is used to generate property-location visualisations.

The analysis uses EPSG:4326 for geographic coordinates and EPSG:32630 (UTM Zone 30N) for relevant distance and buffer calculations.

Output:

`outputs/rwa_property_locations.png`

### 6.2 Digital Earth Africa Coastal-Change Analysis

**Data source:** Digital Earth Africa Coastlines.

Documentation:

https://docs.digitalearthafrica.org/en/latest/data_specs/Coastlines_specs.html

The coastal-change module retrieves observations through Digital Earth Africa's public Web Feature Service.

The retrieved layer is:

`coastlines:coastlines_v0_4_4_rates_of_change`

A total of 626 coastal-change observations were retrieved for the selected Cape Coast–Elmina study area.

Using a 5% statistical-significance threshold:

- 323 observations met the threshold (p less than 0.05).
- 303 observations did not meet the threshold (p greater than or equal to 0.05).

Important coastal attributes include:

| Attribute | Meaning |
|---|---|
| `rate_time` | Estimated shoreline-change rate in metres per year |
| `sig_time` | Statistical significance indicator (p-value) |
| `se_time` | Standard error of the estimated rate |
| `valid_obs` | Number of valid observations |
| `certainty` | Dataset certainty classification |
| `nsm` | Net shoreline movement |
| `sce` | Shoreline-change envelope |

Negative `rate_time` values indicate estimated shoreline retreat, while positive values indicate estimated shoreline growth.

#### Sample Coastal-Observation Linkage

| Property | Nearest Retrieved Observation | Rate (m/year) | Standard Error | p-value |
|---|---:|---:|---:|---:|
| PROP-002 – Cape Coast | 1.531 km | -0.50 | 0.14 | 0.002 |
| PROP-005 – Elmina | 0.021 km | +0.15 | 0.19 | 0.421 |

PROP-002 has a statistically significant retreat observation at the 1% significance level.

PROP-005 has a positive estimated rate, but the result is not statistically significant at the 1% level. Its approximate 95% confidence interval includes zero.

These observations provide coastal-change context. They do not independently establish the cause of shoreline movement or the environmental condition of a nearby property.

Relevant outputs:

- `outputs/rwa_coastal_change_map.png`
- `outputs/rwa_coastal_linkage.csv`
- `outputs/rwa_coastal_evidence_table.csv`
- `outputs/rwa_portfolio_with_coastal_evidence.csv`

### 6.3 ESA WorldCover Land-Cover Analysis

**Data source:** ESA WorldCover 2021 v200.

https://esa-worldcover.org/en/data-access

ESA WorldCover provides global land-cover classifications at 10-metre spatial resolution.

The project uses two WorldCover tiles covering the five illustrative sample coordinates.

Land-cover analysis is conducted within 100-metre and 300-metre circular buffers around each property.

The classification includes:

- Tree cover
- Shrubland
- Grassland
- Cropland
- Built-up areas
- Bare or sparse vegetation
- Permanent water
- Herbaceous wetlands
- Mangroves
- Moss and lichen
- Snow and ice

#### Selected 300-Metre Land-Cover Results

| Property | Built-up (%) | Natural Vegetation (%) | Permanent Water (%) |
|---|---:|---:|---:|
| PROP-001 – Airport Residential | 68.06 | 31.82 | 0.00 |
| PROP-002 – Cape Coast | 16.92 | 83.08 | 0.00 |
| PROP-003 – Kumasi Asokwa | 99.00 | 1.00 | 0.00 |
| PROP-004 – East Legon | 97.18 | 1.85 | 0.00 |
| PROP-005 – Elmina Coastline | 36.83 | 3.57 | 50.61 |

The results demonstrate differences in the surrounding land-cover composition of the five sample locations.

For example, PROP-003 and PROP-004 have highly built-up surroundings, whereas PROP-002 has substantial mapped natural vegetation.

PROP-005 has considerable mapped permanent water within its illustrative 300-metre buffer. This requires verification of the actual property position and surrounding waterbody.

Land-cover percentages describe the surrounding landscape. They do not establish land ownership, property boundaries, flood probability or development suitability.

### 6.4 SRTM Elevation and Terrain Analysis

**Data source:** NASA Shuttle Radar Topography Mission (SRTM).

https://lpdaac.usgs.gov/products/srtmgl1v003/

SRTM elevation data are used to derive preliminary elevation and terrain indicators for the five sample properties.

The analysis includes:

- Point elevation.
- Mean elevation within 300 metres.
- Minimum elevation within 300 metres.
- Maximum elevation within 300 metres.
- Elevation standard deviation.
- Mean terrain slope.
- Maximum estimated terrain slope.

#### Sample Elevation and Terrain Results

| Property | Point Elevation (m) | Mean Elevation (m) | Mean Slope (degrees) |
|---|---:|---:|---:|
| PROP-001 – Airport Residential | 64 | 66.27 | 4.50 |
| PROP-002 – Cape Coast | 22 | 22.91 | 6.76 |
| PROP-003 – Kumasi Asokwa | 256 | 253.71 | 3.33 |
| PROP-004 – East Legon | 63 | 60.28 | 2.38 |
| PROP-005 – Elmina Coastline | 5 | 5.21 | 2.39 |

The elevation results provide topographic context for the sample locations.

SRTM is a radar-derived surface-elevation dataset, not a cadastral or engineering survey. Its measurements should not be used independently to establish parcel-level flood safety or precise ground elevation.

### 6.5 JRC River-Flood Analysis

**Data source:** JRC Global River Flood Hazard Maps v2.1.

https://developers.google.com/earth-engine/datasets/catalog/JRC_CEMS_GLOFAS_FloodHazard_v2_1

Google Earth Engine is used to retrieve and analyse the modelled river-flood depth information.

The analysis focuses on the 100-year return-period scenario.

Five properties are assessed at four buffer distances:

- 500 metres.
- 1,000 metres.
- 3,000 metres.
- 5,000 metres.

This produces 20 property-buffer observations.

#### River-Flood Screening Summary

| Property | First Buffer with Mapped Flood-Depth Pixels | Maximum Reported Depth |
|---|---:|---:|
| PROP-001 – Airport Residential | 5,000 m | 1.0 m |
| PROP-002 – Cape Coast | 3,000 m | 1.0 m |
| PROP-003 – Kumasi Asokwa | None within 5 km | Not available |
| PROP-004 – East Legon | 3,000 m | 1.0 m |
| PROP-005 – Elmina Coastline | 500 m | 1.0 m |

These observations describe modelled river-flood pixels within surrounding buffers. The maximum depth is not a measurement of flooding at the illustrative property coordinate.

No mapped pixels within the tested buffer should not be interpreted as proof of flood safety. The JRC dataset also has spatial-coverage limitations, including exclusions affecting some smaller river basins.

Relevant outputs:

- `outputs/rwa_jrc_rp100_flood_buffer_evidence.csv`
- `outputs/rwa_jrc_rp100_flood_evidence_clean.csv`
- `outputs/rwa_master_geospatial_underwriting_with_jrc_flood.csv`

### 6.6 WRI Historical Coastal-Flood Analysis

**Data source:** WRI Aqueduct Flood Hazard Maps V2.

https://datasets.wri.org/datasets/aqueduct-floods-hazard-maps

The historical coastal analysis uses the following configuration:

| Parameter | Selection |
|---|---|
| Flood type | Coastal |
| Climate setting | Historical |
| Return period | 100 years |
| Subsidence | Without subsidence |
| Projection metadata | 95th percentile |
| Approximate resolution | 1 km |

Five properties are assessed at 1 km, 3 km and 5 km buffer distances, producing 15 observations.

All 15 buffer assessments have valid raster coverage, and none contains a positive modelled coastal inundation depth under this selected historical configuration.

The result represents the WRI model output for the sampled areas. It does not establish that the properties are free from coastal flooding or local drainage-related hazards.

Relevant outputs:

- `outputs/rwa_wri_coastal_flood_evidence.csv`
- `outputs/rwa_wri_coastal_flood_evidence_clean.csv`
- `outputs/rwa_wri_coastal_flood_evidence_wide.csv`

### 6.7 Future Coastal-Flood Scenario Analysis

The project extends historical coastal analysis to future climate and sea-level scenarios using WRI Aqueduct V2.

Two climate pathways are considered:

- RCP4.5.
- RCP8.5.

The analysis covers three future years:

- 2030.
- 2050.
- 2080.

Both subsidence configurations are evaluated:

- Without subsidence (`nosub`).
- With subsidence (`wtsub`).

The return period is held at 100 years.

Three sea-level projection percentiles are examined:

- 5th percentile: lower projection.
- 50th percentile: median projection.
- 95th percentile: higher projection.

The median-projection analysis produces:

\[
2 \times 3 \times 2 = 12
\]

future scenario combinations.

Five properties and three buffer distances are evaluated for every scenario, resulting in 180 observations.

The sensitivity analysis covers the 5th and 95th percentiles:

\[
2 \times 3 \times 2 \times 2 = 24
\]

sensitivity scenario combinations, resulting in 360 additional observations.

The consolidated future evidence therefore contains:

| Dataset | Observations |
|---|---:|
| 5th-percentile sensitivity analysis | 360 |
| 50th-percentile median analysis | 180 |
| 95th-percentile sensitivity analysis | 360 |
| **Combined future evidence** | **900** |

The 540-observation figure refers to the 50th-percentile and sensitivity datasets combined, excluding the historical baseline.

Across the tested future scenarios, the selected WRI model outputs reported valid coverage without positive modelled coastal inundation depth in the sampled buffers.

This is a result of the selected model configurations and spatial resolution, not proof that future coastal flood risk is absent.

**Historical and future projection metadata are retained separately.** In particular, the historical baseline used 95th-percentile projection metadata, whereas the principal future analysis used the 50th percentile. They should not be treated as directly equivalent projection settings.

Relevant outputs:

- `outputs/rwa_wri_future_coastal_flood_evidence.csv`
- `outputs/rwa_wri_future_coastal_flood_evidence_clean.csv`
- `outputs/rwa_wri_coastal_sensitivity_evidence.csv`
- `outputs/rwa_wri_coastal_sensitivity_evidence_clean.csv`
- `outputs/rwa_wri_all_future_scenarios.csv`
- `outputs/rwa_wri_future_scenario_summary.csv`
- `outputs/rwa_wri_future_percentile_comparison.csv`
- `outputs/rwa_wri_future_property_scenario_comparison.csv`

---

## 7. Integrated RWA Underwriting Dataset

The project's final historical evidence integration combines the financial and geospatial information into a single five-property master dataset.

The original integrated dataset containing financial, coastal-change, land-cover and elevation information was extended with JRC river-flood and WRI historical coastal-flood evidence.

The resulting master dataset contains:

**5 illustrative properties and 124 analytical columns.**

It includes:

- Property identification and location.
- Market value and annual rental income.
- Gross rental yield.
- Initial geographic/planning risk score.
- Risk-adjusted property valuation.
- Modelled and eligible token quantities.
- RWA screening outcome.
- Coastal-change measurements and linkage information.
- Land-cover composition.
- Elevation and terrain indicators.
- River-flood evidence.
- Historical coastal-flood evidence.

The multiple future climate scenarios are retained in separate scenario datasets rather than being merged into the five-property master table.

Primary outputs:

- `outputs/rwa_master_geospatial_underwriting_with_jrc_flood.csv`
- `outputs/rwa_master_geospatial_underwriting_complete.csv`

The existing financial screening decisions are preserved during geospatial integration. The environmental indicators have not automatically altered property valuations, initial risk scores or eligible token quantities.

---

## 8. Solidity Smart Contract Asset Registry

The Solidity component demonstrates simplified on-chain property asset registration logic.

File:

`contracts/RWAPropertyToken.sol`

Compiler requirement:

`Solidity ^0.8.20`

### Contract Features

**Administrator Access Control**

Only the ecosystem administrator can register property assets through the administrative access modifier.

**Geographic-Risk Screening Gate**

Properties with an illustrative zoning/geographic risk score of 4 or higher are rejected by the contract.

**Duplicate Property Protection**

Previously registered property identifiers cannot be registered again.

**Token-Quantity Validation**

The contract checks that the proposed token quantity corresponds to the property value using the GHS 100 baseline.

\[
\text{Expected Tokens} =
\frac{\text{Property Value (GHS)}}{100}
\]

**Asset Registration**

Properties passing the prototype screening and validation conditions are recorded in the contract's property registry.

### Smart Contract Events

- `AssetRegistered`
- `AssetRejected`

### Contract Testing

The contract was compiled using Solidity 0.8.20 and tested locally in Remix VM.

| Test | Scenario | Result |
|---|---|---|
| PROP-001 | Eligible property registration | Passed |
| PROP-005 | Rejection of high-risk property | Passed |
| PROP-006 | Rejection of incorrect token quantity | Passed |

The tests demonstrate the basic registration, rejection and token-quantity validation logic.

**Important:** The contract has not been deployed to a public blockchain. It does not currently implement ERC-20 or ERC-721 standards, actual token minting, token transfers or regulated security-token functionality. The tests are not a professional smart-contract security audit.

---

## 9. Repository Structure

```text
rwa-realestate-analytics/
│
├── contracts/
│   └── RWAPropertyToken.sol
│
├── data/
│   └── rwa_tokenized_portfolio.csv
│
├── notebooks/
│   ├── rwa_pipeline.ipynb
│   └── rwa_pipeline_updated.ipynb
│
├── outputs/
│   ├── README.md
│   ├── rwa_property_locations.png
│   ├── rwa_coastal_change_map.png
│   ├── rwa_coastal_linkage.csv
│   ├── rwa_coastal_evidence_table.csv
│   ├── rwa_portfolio_with_coastal_evidence.csv
│   │
│   ├── rwa_jrc_rp100_flood_buffer_evidence.csv
│   ├── rwa_jrc_rp100_flood_evidence_clean.csv
│   ├── rwa_master_geospatial_underwriting_with_jrc_flood.csv
│   ├── rwa_master_geospatial_underwriting_complete.csv
│   │
│   ├── rwa_wri_coastal_flood_evidence.csv
│   ├── rwa_wri_coastal_flood_evidence_clean.csv
│   ├── rwa_wri_coastal_flood_evidence_wide.csv
│   │
│   ├── rwa_wri_future_coastal_flood_evidence.csv
│   ├── rwa_wri_future_coastal_flood_evidence_clean.csv
│   ├── rwa_wri_future_scenario_summary.csv
│   ├── rwa_wri_future_property_scenario_comparison.csv
│   │
│   ├── rwa_wri_coastal_sensitivity_evidence.csv
│   ├── rwa_wri_coastal_sensitivity_evidence_clean.csv
│   ├── rwa_wri_all_future_scenarios.csv
│   └── rwa_wri_future_percentile_comparison.csv
│
├── README.md
└── requirements.txt
```

The Google Earth Engine Code Editor scripts are maintained separately in the Earth Engine repository:

`users/WalkerBill/rwa_geospatial_underwriting`

The CSV exports generated through Earth Engine are stored in the GitHub `outputs/` folder.

---

## 10. Technology Stack

| Technology | Application |
|---|---|
| Python | Main data-processing environment |
| Pandas | Financial analysis and evidence integration |
| NumPy | Numerical calculations and screening logic |
| GeoPandas | Spatial data processing and geospatial linkage |
| Rasterio | Raster data access and extraction |
| SciPy | Terrain-gradient and numerical processing |
| Matplotlib | Maps and analytical visualisations |
| Requests | Retrieval of geospatial data through web services |
| Jupyter Notebook | Python development and documentation |
| Google Earth Engine | Large-scale satellite, environmental and flood-data processing |
| Digital Earth Africa | Coastal-change observations |
| ESA WorldCover | Land-cover classification |
| NASA SRTM | Elevation and terrain data |
| JRC | Global river-flood hazard modelling |
| WRI Aqueduct | Historical and future flood-hazard modelling |
| Solidity | Smart-contract development |
| Remix IDE | Contract compilation and local testing |

---

## 11. Installation and Execution

### 11.1 Clone the Repository

```bash
git clone https://github.com/WalkerBill/rwa-realestate-analytics.git
```

Move into the project directory:

```bash
cd rwa-realestate-analytics
```

### 11.2 Install Python Dependencies

```bash
pip install -r requirements.txt
```

For the extended SRTM raster and terrain-analysis sections, ensure Rasterio and SciPy are installed:

```bash
pip install rasterio scipy
```

### 11.3 Launch Jupyter Notebook

```bash
jupyter notebook
```

### 11.4 Run the Python Pipeline

Open:

`notebooks/rwa_pipeline_updated.ipynb`

The principal local workflow includes:

1. Load and validate the illustrative property portfolio.
2. Calculate financial underwriting indicators.
3. Generate property-location visualisations.
4. Process land-cover and elevation evidence.
5. Process coastal-change evidence and spatial linkages.
6. Load and integrate the exported JRC and WRI flood datasets.
7. Generate the integrated master and scenario-comparison outputs.

The Google Earth Engine extraction workflows are maintained separately. An active internet connection and suitable access to Google Earth Engine and the respective source datasets are required to reproduce those retrieval operations.

### 11.5 Solidity Contract Testing

1. Open https://remix.ethereum.org.
2. Create or open `RWAPropertyToken.sol`.
3. Select Solidity compiler version 0.8.20.
4. Compile the contract.
5. Select Remix VM as the deployment environment.
6. Deploy the contract locally.
7. Test property registration, high-risk rejection and token-quantity validation.

A local Remix VM deployment is not a public blockchain deployment.

---

## 12. Research Limitations and Data Quality

This project is a research and technical proof of concept developed using illustrative property information, simplified financial assumptions and regional geospatial datasets.

The following limitations apply:

### Property and Financial Data

- Property values and rental figures are illustrative and have not been independently verified.
- Initial property coordinates are illustrative and do not represent verified cadastral parcel locations.
- Initial geographic/planning risk scores are manually assigned.
- The 20% valuation adjustment and risk threshold are modelling assumptions.
- Modelled token quantities do not represent actual issued tokens.

### Geospatial Evidence

- Spatial buffer measurements describe surrounding areas rather than verified parcel boundaries.
- Different datasets have different spatial resolutions and temporal coverage.
- Land-cover percentages do not independently establish development suitability or environmental safety.
- SRTM elevation is radar-derived surface information, not a precise ground survey.
- Coastal-change observations do not independently establish future erosion or property damage.
- Nearest coastal-observation distances are not necessarily distances to the physical shoreline.

### Flood Modelling

- JRC river-flood and WRI coastal-flood outputs are modelled estimates under specified assumptions.
- Absence of mapped flood pixels or positive inundation depth does not demonstrate that a property is flood-safe.
- WRI's approximately 1-kilometre resolution is not suitable for parcel-level flood determination.
- Local drainage, small watercourses, flash flooding, coastal defences and other local conditions may not be represented adequately.
- Historical and future scenario configurations must be interpreted separately.
- Future climate and sea-level projections are scenario-based estimates, not deterministic predictions.

### Legal and Blockchain Limitations

- The project does not verify land ownership, title registration, encumbrances, cadastral boundaries or legal property rights.
- Planning permission and regulatory approval are not implemented.
- The Solidity component does not establish legal ownership or create legally enforceable property-backed securities.
- The contract has not undergone a professional security audit or public blockchain deployment.

The outputs should therefore be treated as preliminary analytical evidence requiring further property verification, professional valuation, legal due diligence and detailed environmental assessment before real-world use.

---

## 13. Future Development

Potential extensions of this project include:

1. Integration of verified property parcel boundaries and cadastral information.
2. Acquisition of actual property valuation and rental data.
3. Improved geographic and planning-risk indicators based on authoritative information.
4. Further investigation of local flood and drainage conditions.
5. More detailed coastal and environmental exposure analysis.
6. Development of a transparent composite geospatial screening methodology.
7. Integration of official Ghanaian planning, land-use and property information.
8. Improved financial underwriting and scenario modelling.
9. Development of an interactive GIS and RWA screening dashboard.
10. Enhanced smart-contract architecture and professional security testing.
11. Exploration of legally compliant asset ownership and tokenization workflows.
12. Reproducibility improvements and automated data-quality validation.

---

## 14. Conclusion

This project demonstrates how real-estate financial modelling can be extended through Geography, Regional Planning, GIS, satellite-derived environmental data and blockchain-based asset-registration concepts.

By combining Python-based underwriting with coastal-change observations, land-cover classification, elevation analysis and modelled flood evidence, the project explores a structured approach to incorporating geographical and environmental context into preliminary RWA property screening.

The integration of Digital Earth Africa, ESA WorldCover, SRTM, JRC and WRI Aqueduct datasets illustrates the potential value of combining multiple sources of spatial evidence in real-estate analytics.

The overall objective is to develop an increasingly transparent, reproducible and evidence-based RWA underwriting framework that can support further research, validation and technical development.

**Project:** Real Estate RWA Underwriting & Geospatial Screening Pipeline

**Location focus:** Ghana

**Project status:** Research and technical proof of concept

**Core disciplines:** Geography, Regional Planning, Python, GIS, Real Estate Analytics and Blockchain Technology.
