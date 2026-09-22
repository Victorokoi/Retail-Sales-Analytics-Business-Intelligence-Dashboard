# Retail Sales Analysis

## Project Overview

This project analyzes retail sales data to uncover business performance trends, identify high-value products and customer segments, evaluate geographical markets and sales channels, and identify opportunities for business improvement.

The project demonstrates an end-to-end data analytics workflow using Excel, PostgreSQL, and Power BI.

---

## Business Objective

The objective of this analysis is to transform retail transaction data into actionable business insights that can support better decisions around:

- Sales performance
- Product and category management
- Customer segmentation
- Market expansion
- Sales channel performance
- Profitability
- Product returns
- Management KPIs

---

## Business Questions

The analysis addresses the following questions:

1. How has sales performance changed over time, and what trends or seasonality can be identified?
2. Which products, categories, and subcategories contribute the most and least to business performance?
3. Which customer segments generate the highest value, and how do purchasing behaviours differ?
4. Which geographical markets contribute the most to sales?
5. Which sales channels perform best in terms of revenue and order volume?
6. What are the major drivers of profitability and where are the greatest opportunities for improvement?
7. What patterns exist in product returns and what impact do they have on business performance?
8. What key performance indicators should management monitor regularly?

---

## Tools & Technologies

- **Excel / Power Query** — Data cleaning and preparation
- **PostgreSQL** — SQL analysis and business querying
- **Power BI** — Data visualization and dashboard development
- **DAX** — Business metrics and calculations

---

## Data Preparation

The dataset was cleaned and prepared before analysis. The data preparation process included reviewing data types, ensuring consistency across fields, and preparing the data for analysis and visualization.

---

## Key Findings

### Customer Segments

Wholesale customers generated the highest revenue:

| Segment | Revenue | Quantity | Orders |
|---|---:|---:|---:|
| Wholesale | 285,035.37 | 2,305 | 971 |
| Online | 246,441.97 | 1,974 | 834 |
| Retail | 239,596.84 | 1,857 | 772 |

Wholesale was the strongest customer segment across revenue, quantity purchased, and order volume.

### Geographical Markets

The highest-revenue countries were:

| Rank | Country | Revenue |
|---|---|---:|
| 1 | United States | 162,429.57 |
| 2 | United Kingdom | 148,456.15 |
| 3 | Nigeria | 146,725.35 |
| 4 | Australia | 70,897.00 |
| 5 | United Arab Emirates | 52,312.55 |

The United States was the largest market, while the United Kingdom and Nigeria were close behind.

### Sales Channels

| Rank | Sales Channel | Revenue | Orders |
|---|---|---:|---:|
| 1 | Phone Order | 208,195.92 | 684 |
| 2 | Retail Store | 196,253.75 | 653 |
| 3 | Marketplace | 186,589.19 | 623 |
| 4 | Online Store | 180,035.32 | 617 |

Phone Order was the highest-performing sales channel by both revenue and order volume.

### Product Performance

The highest-revenue products included:

- Shampoo
- Stapler
- Desk Organizer
- Women's Dress
- Blender

Shampoo was the highest-revenue individual product at approximately **49,818.44**.

### Category Performance

| Rank | Category | Revenue |
|---|---|---:|
| 1 | Beauty & Personal Care | 195,596.39 |
| 2 | Office Supplies | 168,944.18 |
| 3 | Electronics | 148,231.18 |
| 4 | Home & Kitchen | 135,657.91 |
| 5 | Fashion | 122,644.52 |

Beauty & Personal Care was the strongest category by revenue, while Fashion recorded the lowest revenue among the five categories.

---

## Business Recommendations

Based on the analysis, management should consider:

1. **Strengthening wholesale relationships** because Wholesale customers generate the highest revenue and purchasing volume.
2. **Protecting high-performing markets**, particularly the United States, United Kingdom, and Nigeria.
3. **Investigating the success of Phone Order** to understand why it generates the highest revenue and whether similar practices can improve other channels.
4. **Prioritizing high-performing products and categories** while investigating the causes of weaker product performance.
5. **Monitoring returns and return reasons** to identify products or operational issues that may negatively affect revenue.
6. **Developing profitability-focused KPIs** rather than relying on revenue alone.

---

## Project Structure

```text
retail-sales-analytics/
│
├── README.md
├── data/
├── sql/
├── powerbi/
├── images/
└── insights/
