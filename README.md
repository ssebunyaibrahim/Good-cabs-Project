 # `GOOD CABS PERFORMANCE ANALYSIS`  
## FEBRUARY – JUNE 2024  

<img src="Images\good cabs logo.png"
     style="width: 600px; height: 400px; display: block; margin: 40px auto;"/>

## Contents  
- [`GOOD CABS PERFORMANCE ANALYSIS`](#good-cabs-performance-analysis)
  - [FEBRUARY – JUNE 2024](#february--june-2024)
  - [Contents](#contents)
- [`Company Profile`](#company-profile)
- [`Goal`](#goal)
  - [`Specific Objectives`](#specific-objectives)
- [`Key Metrics and Dimensions`](#key-metrics-and-dimensions)
    - [North Star KPIs:](#north-star-kpis)
    - [Dimensions Used in the Analysis:](#dimensions-used-in-the-analysis)
  - [](#)
- [`Executive Summary`](#executive-summary)
- [`Data Structure and Initial Checks`](#data-structure-and-initial-checks)
- [`Insights Deep Dive`](#insights-deep-dive)
  - [`Overall Performance`](#overall-performance)
  - [`City-Specific Insights`](#city-specific-insights)
  - [`Passenger Behavior and Feedback`](#passenger-behavior-and-feedback)
  - [`Recommendations`](#recommendations)

---

# `Company Profile`  
Goodcabs, a cab service company established two years ago, has gained a strong foothold in the Indian market by focusing on tier-2 cities. Unlike other cab service providers, Goodcabs is committed to supporting local drivers, helping them make a sustainable living in their hometowns while ensuring excellent service to passengers. With operations in ten tier-2 cities across India, Goodcabs has set ambitious performance targets for 2024 to drive growth and improve passenger satisfaction.

# `Goal` 
The primary goal of this project is to provide actionable insights to evaluate and enhance Goodcabs' performance across key operational and customer satisfaction metrics in its ten tier-2 city markets. This includes analyzing trip volume, passenger satisfaction, repeat passenger rate, trip distribution, and the balance between new and repeat passengers. These insights will assist the management team in achieving the company's performance targets and supporting strategic decision-making to drive growth and improvement.

## `Specific Objectives` 
1. Evaluate overall performance across different cities, focusing on trip volumes, revenue, and passenger ratings.  
2. Analyze demand patterns by month and city to identify peak and off-peak periods.  
3. Assess passenger behavior and repeat customer engagement, highlighting opportunities for improvement.  

# `Key Metrics and Dimensions`
<details>
<summary>Details here</summary>

### North Star KPIs:  
- **Total Trips**: Reflects the company’s overall activity and growth.  
- **Revenue**: Indicates financial health.  
- **Repeat Passenger Rate (RPR)**: Measures customer loyalty.  
- **Average Passenger Rating**: Reflects service quality.  
- **Average Driver Rating**: Evaluates driver performance.

### Dimensions Used in the Analysis:  
- **City**: Enables tailored insights and strategies.  
- **Month**: Identifies seasonal trends and demand shifts.  
- **Trip Type (Weekday vs Weekend)**: Reveals passenger preferences.  
- **Passenger Type (New vs Repeat)**: Highlights retention and acquisition trends.
</details>
---

# `Executive Summary` 
Goodcabs saw a total of 426,000 trips and ₹108.2M in revenue over the first half of 2024, with an average passenger rating of 7.66 and a 26% Repeat Passenger Rate (RPR). The company faced a slight decline in both trips and revenue, with peaks in February (75.4K trips) and May (72.5K trips). Jaipur and Lucknow were top performers, while Visakhapatnam, Coimbatore, and Mysore underperformed.

Key city-specific insights revealed that tourism-focused cities like Jaipur and Mysore outperformed in trip volume but struggled with attracting new passengers. Conversely, business-centric cities like Lucknow and Surat excelled in acquiring new passengers. Seasonal demand patterns highlighted February and May as peak months, with June seeing a drop across most cities.

A focus on targeted marketing, loyalty programs, and pricing optimization in cities like Jaipur and Mysore, along with enhancing driver training in business cities, could help meet performance targets. Tailored strategies for each city based on their passenger profile are recommended to further improve new passenger acquisition. 


<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/overall%20performance.png"
     style=" display: block; margin: 40px auto;"/>

- **[SQL QUERIES File](https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/6b12d3c00291dfcb38a16196092f64424190cba5/ad-hoc%20requests.sql)**
- **[Presentation video](https://youtu.be/TI_APKslf-0?si=HQ2SfJzwZbvfgW_b)**
- **[Interactive Dashboard](https://app.powerbi.com/view?r=eyJrIjoiZWEzMDkxOWQtZTdjNi00MDQ0LWJmZjEtNjUwNWU4ZTNjN2YwIiwidCI6IjA2ODdlOTNmLWI4ZDgtNGI1My1iNzE4LTVhOTY0OWZmZDA4YSJ9&pageName=d5d7078bef2509f5f45f)**
- **[Power Point presenataion](https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/d88a38df195e29bea5d84868535183b0b2f8fb5c/Good%20Cabs%20Presentation.pptx)**

# `Data Structure and Initial Checks`
The ERD diagram for the data model used for this project is presented below.  
<img src="Images/DATA MODEL (2).svg"
     style="  display: block; margin: 40px auto;"/>

---

# `Insights Deep Dive`  

## `Overall Performance`  

Over the six-month analysis period (January to June 2024), Goodcabs recorded 426,000 trips and ₹108.2M in total revenue. The average passenger rating was 7.66, and the Repeat Passenger Rate (RPR) stood at 26%, indicating that about a quarter of the passengers were repeat customers. A declining trend was observed in both trip volume and revenue, with peaks noted in February (75.4K trips, ₹19.9M) and May (72.5K trips, ₹18.0M). Despite robust performance in some months, all key targets were narrowly missed: the total trips target (429K) fell short by 0.72%, the new passenger target (186.1K) by 4.38%, and the average passenger rating target (7.98) by 3.94%.

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/KPIS.png"
     style=" display: block; margin: 40px auto;"/>
<img src="https://raw.githubusercontent.com/ssebunyaibrahim/Good-cabs-Project/main/Report%20images/total%20trips%20and%20total%20revenue.png"
     style="display: block; margin: 40px auto; width: 100%; max-width: 1920px; height: auto;"/>

Performance among cities was highly variable. Jaipur (76,000 trips), Lucknow (64,299 trips), and Surat (54,843 trips) emerged as the top-performing cities. Jaipur’s appeal lies in its status as a tourism hub, while Lucknow’s diverse base of business and cultural activities and Surat’s thriving textile industry likely drove their strong performances. 

Conversely, Visakhapatnam (28,366 trips), Coimbatore (21,104 trips), and Mysore (16,238 trips) underperformed. The coastal city of Visakhapatnam and the tourism-reliant Mysore may need targeted promotional efforts to capitalize on their inherent demand potential. Coimbatore, a tech and education hub, may require a broader focus on non-business-related travel.

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/total%20trips%20by%20city.png"
     style="display: block; margin: 40px auto; width: 100%; max-width: 1920px; height: auto;"/>

Cities such as Jaipur, Kochi, Coimbatore, and Mysore exceeded at least two individual performance targets, showcasing potential for further focused strategies in these regions. Meanwhile, the majority of other cities only met one or none of their targets, highlighting opportunities for operational improvements and more tailored interventions.

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/table%20break%20%20down.png"
     style=" display: block; margin: 40px auto;"/>

  
## `City-Specific Insights`  

Jaipur (15,872), Lucknow (12,060), and Chandigarh (7,387) saw peak demand in February, while Surat (9,831), Vadodara (5,941), and Visakhapatnam (4,938) peaked in April. Kochi (10,014), Indore (7,787), and Mysore (3,007) had their highest demand in May. Coimbatore had a unique peak in March (3,680). On the other hand, June recorded the lowest demand for most cities, with Jaipur (9,842), Kochi (6,399), Indore (6,288), Vadodara (4,885), and Coimbatore (3,158) experiencing a significant drop in trips. Surat (8,358), Visakhapatnam (4,468), and Mysore (3,485) had their lowest demand in January, while Lucknow (9,705) and Chandigarh (5,566) faced a downturn in May and April, respectively.

In terms of trip preferences, Lucknow led weekday trips with 50,000, followed by Surat (38,000) and Jaipur (32,000). Jaipur also dominated weekend trips with 44,000, ahead of Kochi (28,000) and Indore (21,000). This indicates that Lucknow has a strong business trip focus, while Jaipur, Kochi, and Indore attract more leisure-driven weekend travel.

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/weekday.png"
     style="display: block; margin: 40px auto; width: 100%; max-width: 1920px; height: auto;"/>

Repeat Passenger Rate (RPR) analysis showed May as the month with the highest RPR at 33%, followed closely by June (30%) and April (29%). January had the lowest RPR (19%), followed by February (21%) and March (26%). 

In terms of cities Surat had the highest RPR at 43%, followed by Lucknow at 37%, while Jaipur (17%) and Mysore (11%) had the lowest, indicating opportunities for better repeat passenger engagement in those cities.

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/RPR.png"
     style=" display: block; margin: 40px auto;"/>
     
Regarding pricing efficiency, Jaipur stood out with the highest average fare per trip (₹484) and an average trip distance of 30.02 km. Kochi followed with ₹335 per trip and 24.07 km. Surat (₹117) and Vadodara (₹119) had the lowest fares and trip distances (11.0 km and 11.52 km, respectively), which could point to shorter trips or competitive pricing strategies.

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/SCATTER%20PLOT.png"
     style="display: block; margin: 40px auto; width: 100%; max-width: 1920px; height: auto;"/>

Target achievements varied by city. Jaipur and Mysore exceeded their total trips targets by 13.91% and 20.28%, respectively, and surpassed the average passenger rating targets by 4.05% and 2.37%. However, both missed their new passenger targets. Coimbatore exceeded its total trips target (0.50%) and new passenger target (13.52%), though it fell short of the passenger rating target. Cities like Lucknow, Surat, Indore, and Visakhapatnam exceeded only the new passenger target. Chandigarh and Visakhapatnam did not meet any of their targets

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/table%20break%20%20down.png"
     style=" display: block; margin: 40px auto;"/>

These patterns reveal that tourism-focused cities such as Jaipur and Mysore consistently outperformed their total trips and passenger rating targets. However, both missed their new passenger targets. Conversely, business-oriented cities like Coimbatore, Lucknow, Surat, Indore, and Visakhapatnam showed a stronger performance in meeting new passenger targets. This indicates that tourism cities excel in attracting repeat passengers and achieving passenger satisfaction, while business cities focus more on acquiring new passengers.

## `Passenger Behavior and Feedback` 

In terms of passenger behavior, new passengers generally provided higher ratings for both drivers and overall experiences. The average driver rating for new passengers stood at 8.32, compared to 7.48 for repeat passengers. Similarly, the average passenger rating was 8.65 for new passengers, while repeat passengers rated it lower at 6.96.

Cities like Kochi, Jaipur, Mysore, and Visakhapatnam stood out, with both high driver ratings (9.0) and passenger ratings (9.0) for new passengers. Surat, Vadodara, and Lucknow, however, had lower ratings overall, with driver ratings at 7.0 and passenger ratings at 8.0 for new passengers, suggesting a potential area for improvement in service quality.

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/Avg%20driver%20rating%20new.png"
     style=" display: block; margin: 40px auto;"/>

For repeat passengers, Kochi, Jaipur, Mysore, and Visakhapatnam continued to perform well, with both driver ratings and passenger ratings at 9.0 and 8.0, respectively. Conversely, Surat, Vadodara, and Lucknow lagged, with driver ratings of 6.5 and passenger ratings of 6.0.

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/Avg%20driver%20rating%20repeat.png"
     style=" display: block; margin: 40px auto;"/>
     
When examining repeat passenger frequency, Chandigarh recorded the highest percentage of passengers with 10 trips at 1.79%, followed by Vadodara (1.61%) and Indore (1.51%). Indore, however, topped the 9-trip count category with 2.38%, with Chandigarh (2.33%) and Coimbatore (2.31%) following closely.

Regarding low trip frequencies, cities like Visakhapatnam, Jaipur, Mysore, and Kochi stood out, with high percentages of passengers completing just two trips. Visakhapatnam led with 51.25%, followed by Jaipur (50.14%), Mysore (48.75%), and Kochi (47.67%). These cities also dominated the three-trip frequency category, reinforcing their prominence in retaining passengers who engage with the service infrequently.

<img src="https://github.com/ssebunyaibrahim/Good-cabs-Project/blob/main/Report%20images/repeat%20trip%20frequency.png"
     style=" display: block; margin: 40px auto;"/>

It is evident that tourism-centric cities like Jaipur, Mysore, Kochi, and Visakhapatnam show a higher percentage of passengers with low trip frequencies (2-3 trips). This suggests that tourists may use the service sporadically during their visits. On the other hand, business-focused cities like Lucknow and Indore show stronger repeat passenger engagement, with more passengers completing 9-10 trips, likely reflecting more frequent business-related travel. This distinction highlights the need for Goodcabs to tailor its marketing and service strategies based on the predominant type of passenger in each city.

---

## `Recommendations`  

- Targeted Marketing in Tourism Cities
- Enhancing Service Quality in Business Cities
- Seasonal Resource Optimization
- Loyalty Programs to Improve Repeat Passenger Rate
- Pricing Strategy Optimization for Shorter Trips
- Performance Monitoring and Adjustment for Struggling Cities

--- 
---
1. **Targeted Marketing in Tourism Cities**: In cities like Jaipur and Mysore, which exceeded their trip targets by 13.91% and 20.28%, respectively, but missed new passenger targets, launching targeted marketing campaigns to attract new passengers could improve performance. Mysore and Jaipur had repeat passenger rates of 17% and 11%, respectively, showing potential for greater customer loyalty. Promotions, loyalty programs, or referral incentives could boost first-time passenger acquisition.
    
2. **Enhance Service Quality in Business Cities**: In cities such as Lucknow and Surat, where driver ratings were low (7.0) and passenger ratings were below expectations (8.0), investing in driver training programs would improve service quality. This could lead to better ratings and a higher chance of attracting repeat passengers. 
    
3. **Seasonal Resource Optimization**: Cities like Jaipur and Lucknow showed peak demand in February (Jaipur: 15,872 trips) and May (Lucknow: 12,060 trips), which demonstrates seasonal trends. To capture this demand, Goodcabs should adjust fleet deployment and marketing strategies during these high-demand months. Conversely, June had low demand across cities like Kochi (6,399 trips) and Indore (6,288 trips), where resource scaling will ensure cost savings.

4. **Loyalty Programs to Improve Repeat Passenger Rate**Cities with lower repeat passenger rates, such as Mysore (11%) and Visakhapatnam (19%), would benefit from enhanced loyalty programs. Offering discounts on repeat trips, tailored offers, or loyalty points could encourage more frequent use and increase their Repeat Passenger Rate (RPR).
 
5. **Pricing Strategy Optimization for Shorter Trips**: In Surat and Vadodara, where the average fare per trip is low (₹117 and ₹119 respectively), Goodcabs should consider adjusting their pricing model to better reflect the trip distances, which average around 11 km. Ensuring that short trips remain profitable will balance the need for competitive pricing while boosting overall revenue.
  
6. **Performance Monitoring and Adjustment for Struggling Cities**: Finally, cities such as Chandigarh and Visakhapatnam, which struggled to meet targets across all metrics, need immediate focus. Visakhapatnam missed all its targets and only managed 4,938 trips in April, a notable underperformance. Regular performance reviews and real-time adjustments can help identify and address key challenges in these cities, ensuring they meet targets in future periods.

---
