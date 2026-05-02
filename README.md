# Screen Time Patterns Among Children: A Comparative Analysis of Simulated and Real-World Data
Bowie Jaffin

ECON 4970

SPRING 2026

---

## Project Overview

This project analyzes how screen time could impact sleep patterns and health outcomes using a real-world survey dataset along with a simulated survey dataset. With simulated data, we can see the clean application of theory or trends found in other data, while a real-world survey provides a glimpse of the messy reality we live in. Together, these datasets help us explore:  
___How does screen time vary across age groups, and to what extent is it associated with changes in sleep patterns and reported health impacts?___

Answering this question using the datasets can help us better understand or think about:
+ The prevalence of screens in our lives for entertainment and education and their repercussions  
+ The effect the COVID-19 pandemic had on screen time usage  
+ Differences in screen usage by age  

---

## Data Sources

Two different datasets were used in this analysis to provide varied data and perspectives.

### Simulated Dataset - [Indian Kids Screentime 2025](https://www.kaggle.com/datasets/ankushpanday2/indian-kids-screentime-2025)
- Simulated 9,712 survey responses from Indian children aged 8–18  
- Key variables include age, gender, average screen time, educational-to-recreational usage ratio, and health impacts  
- Created to help illustrate the rise in screen time among Indian children  

### Real-World Dataset - [Digital Device Usage and Psychological Well-Being in the Post-COVID-19 Era](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/W5GNLE)
- Data sourced from Harvard Dataverse  
- An anonymized survey of 622 participants of various ages, professions, and backgrounds  
- Key variables include age, sleep patterns, and daily phone usage before, during, and after COVID-19  

---

# Methodology

The analysis was conducted using **R/RStudio** and the following packages:
- tidyverse  
- readxl  
- ggridges  
- scales  

This study combines descriptive statistics and data visualization techniques to explore patterns in screen time behavior. The use of both simulated and real-world datasets allows for comparison between theoretical relationships and observed trends.

### Simulated Dataset

The simulated dataset was used to explore potential relationships between screen time and health outcomes in a controlled setting.
- **Data Aggregation:** Mean screen time and standard deviation (±1 SD) were calculated for each age group to identify central tendencies and variability.  
- **Data Transformation:** Reported health impacts were standardized by converting text responses into a categorical severity score based on the number of symptoms listed. This allowed for consistent comparison across respondents.  
- **Distribution Analysis:** Kernel density estimation was used to visualize the distribution of screen time across different health impact levels using ridge plots. This approach highlights overlap and variation between groups.

### Real-World Dataset

The real-world dataset was used to analyze observed patterns in screen time behavior across different populations and time periods.
- **Data Standardization:** Age ranges were converted into numerical values using midpoints to enable consistent grouping and comparison.  
- **Comparative Analysis:** Screen time usage was compared across age groups and across time periods (before, during, and after COVID-19) to identify changes in behavior.  
- **Visualization:** Graphical methods were used to compare group distributions and identify trends in screen time, sleep duration, and usage patterns. These visualizations support interpretation of relationships within the data.

---

## Visualizations and Findings

### Figure 1: Distribution of Screen Time by Age 
<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure1project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">
Using the simulated data we can see that for ages 11-18 have a low varience in screen time usage but 8-10 have a much larger varience but this can not be said to indicate a trend. This may also reflect limitations in how the simulated data was generated, particularly for younger age groups,

---

### Figure 2 and 3: Average Screen Time by Age and Ratio of Screentime Usage

<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure2project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">
<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure3project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">
These figures show again that there are two distinct groupings in the data: ages 8–10 and those aged 11–18. Within each group, the averages and standard deviations are relatively consistent, particularly among ages 11–18. This better illustrates how the variability is more uniform within these groups, and suggests that the data used may not fully capture real-world variation due to limitations in how the simulated data was generated.

---

### Figure 4: Screen Time and Covid-19 Pandemic

<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure4project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">
The figure shows that there is a sizeable change in reported screen time during and after the COVID-19 pandemic. While the most extreme change occurs during the pandemic, with a partial return to previous levels afterward, it suggests that the pandemic may have led to lasting changes in people’s habits. Something to keep in mind is that this data is self-reported daily phone usage and could be influenced by respondents not accurately remembering their usage from 6–7 years ago.

---

### Figure 5 and 6: Impact on Sleep

<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure5project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">
<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure6project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">
The shown figures show a slight but not significant difference in daily phone usage and sleep outcomes between the two age groups. Respondents below the age of 23 use their phones slightly more overall, with the largest differences appearing in the 8–11 hour and 0–4 hour usage categories compared to those aged 23 and above. We can also observe that within the below 23 age group, individuals with higher daily phone usage tend to have a greater share reporting less than 6 hours of sleep. However, this pattern is not consistently observed in the 23 and above group, meaning it cannot be used to establish a clear relationship between phone usage and sleep. Additionally, this analysis uses only post-COVID-19 data, as it is the most recent and likely the most accurate representation of reported behavior.

---

### Figure 7: Screen Time's Impact on Health

<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure7.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">
This figure uses the simulated dataset to explore a possible relationship between screen time and its impact on health. Symptom severity is not based on the specific symptoms reported by respondents, but rather on the number of symptoms reported, with minor representing one symptom, mild two, and so on. The figure could suggest that individuals with around 5 hours of screen time report worse health outcomes; however, the overall distributions are quite similar across all symptom severity groups. This overlap indicates that there is no strong relationship between screen time and health outcomes in the dataset. The somewhat “black and white” appearance of the results may be due to the simulated nature of the data, where input assumptions can make differences appear more uniform than they would be in real-world populations.

---



## Comparison: Simulated vs Real Data

- The simulated dataset tends to show more uniform differences and a more “black and white” pattern between the groupings used in the analysis. Across multiple variables, ages appear to form two distinct groups, and when grouping by symptom severity, a similarly clear pattern emerges, with a separation between those reporting no symptoms and a more standardized distribution of screen time across the remaining symptom groups.
- In contrast, the real-world dataset shows less defined trends, with differences between groups being smaller and less consistent. This reflects the nature of real-world data, where patterns are often more subtle and influenced by a wider range of factors. While the observed differences are not large, they still suggest the possibility of underlying relationships that could be explored further with additional data and analysis.

---

## Limitations

- **Simulated Data Constraints:** The simulated dataset is limited by the assumptions and inputs used in the model that generated it. Although it was informed by existing studies on screen time behavior, the resulting data appears overly uniform across groups. This may reflect limitations of the model itself, potentially introducing bias or failing to accurately represent real-world variability.

- **Self-Reported Data:** The real-world dataset is based on survey responses, which rely entirely on user input. There is no way to verify reported ages or screen time usage. Additionally, respondents were asked to recall behavior from up to 6–7 years ago, which may lead to inaccurate reporting. Not all participants answered every question, further reducing data completeness.

- **Limited Strength of Observed Trends:** No strong or consistent trends were identified across either dataset beyond general changes in reported screen time over time. These observations depend on the assumption that self-reported data—particularly for pre- and during-COVID periods—is reasonably accurate.

- **Age Grouping and Simplification:** The real-world dataset included both exact ages and age ranges. To standardize the data, midpoints were used for ranges, and a cutoff age of 23 was selected to create balanced comparison groups. These transformations simplify the data but may obscure more detailed patterns.
---

## Conclusion
- Due to the limitations of the selected datasets, no strong or definitive conclusion can be made regarding the research question: *How does screen time vary across age groups, and to what extent is it associated with changes in sleep patterns and reported health impacts?*
- The analysis does suggest a slight difference in screen time usage between respondents aged 23 and above and those below 23, with younger individuals generally reporting higher usage. Within the simulated dataset, there is also evidence of differences between age cohorts, particularly between ages 8–10 and 11–18, although these patterns appear more structured and exaggerated due to the nature of the simulation.
- Overall, while some variation in screen time across age groups is observed, the relationship between screen time and health impacts remains unclear. There is limited evidence suggesting a potential association between higher screen time and reduced sleep, particularly at more extreme usage levels; however, this pattern is not consistent across all groups.
- These findings highlight that any observed relationships are weak and should be interpreted with caution, especially given the limitations of both simulated and self-reported data.
- 
---

## Running this project/Visualizations
1. Download [Indian Kids Screentime 2025](https://www.kaggle.com/datasets/ankushpanday2/indian-kids-screentime-2025) and [Digital Device Usage and Psychological Well-Being in the Post-COVID-19 Era](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/W5GNLE) (Datasets as they existed when the project was done are included in the repository)
2. Download the R files within the respository
3. Follow instructions within the file to see the visualizations and be able to read through datasets before and after changes to understand work.
