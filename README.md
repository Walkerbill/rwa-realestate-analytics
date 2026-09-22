# Real Estate RWA Underwriting & Tokenization Screening Pipeline

## Overview

This repository contains a proof-of-concept pipeline that combines:

- Real estate financial analysis
- Geography and regional planning concepts
- Geospatial risk screening
- Python-based data processing
- RWA (Real-World Asset) tokenization modelling
- Solidity-based on-chain asset registration

The project explores how physical real estate assets can be systematically screened for potential tokenization by combining property-level financial metrics with geographic and planning-related risk indicators.

The core concept is:

**Physical Asset → Geospatial Risk → Financial Underwriting → RWA Screening → Blockchain Asset Registry**

This project is a technical and research proof-of-concept. It is not a production investment, legal, regulatory, or securities-issuance system.


## Project Objective

The objective is to demonstrate how regional planning and geospatial considerations can be incorporated into an RWA underwriting workflow.

The pipeline currently evaluates:

1. Property market value
2. Annual rental income
3. Gross rental yield
4. Geographic/planning risk score
5. Risk-adjusted valuation
6. Theoretical fractional token quantity
7. RWA screening outcome
8. On-chain asset registration logic


# Project Architecture

```text
                    REAL ESTATE AsSSET
                           │
                           ▼
                ┌─────────────────────┐
                │   Property Data     │
                │ Value / Rent / GIS  │
                └──────────┬──────────┘
                           │
                           ▼
                ┌─────────────────────┐
                │ Geospatial Risk     │
                │ & Planning Screen   │
                └──────────┬──────────┘
                           │
                           ▼
                ┌─────────────────────┐
                │ Financial Analysis  │
                │ Yield / Valuation   │
                └──────────┬──────────┘
                           │
                           ▼
                ┌─────────────────────┐
                │ RWA Screening       │
                │ Pass / Reject       │
                └──────────┬──────────┘
                           │
                           ▼
                ┌─────────────────────┐
                │ Solidity Asset      │
                │ Registry Prototype  │
                └─────────────────────┘
