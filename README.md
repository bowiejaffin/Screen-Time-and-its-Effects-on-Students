# Screen Time Patterns Among Children: A Comparative Analysis of Simulated and Real-World Data
Bowie Jaffin

ECON 4970

SPRING 2026

---

## Project Overview
This project analyzes how screen time could have impacts on sleep patterns and health outcomes using real-world survey dataset along with a simulated survey dataset. With simulated data we can see the clean application of theory or trends we find in other data and a real-world survey gives us a glimps of the messy reality we live in. These could maybe help us see ___How does screen time vary across age groups, and to what extent is it associated with sleep patterns and reported health impacts?___

Awnsering that Question and using the datasets can help us understand or better think about:
+The prevenlce of screens in our lifes for entertainment and education and its repurcitopns
+The affect Covid-19 pandemic had on screen time usage 
+Diffrence in screen usage by age

---

## Data Sources
Two diffrent data sets were used within this analysis to help provide diffrent data and information
### Simulated Dataset - [Indian Kids Screentime 2025](https://www.kaggle.com/datasets/ankushpanday2/indian-kids-screentime-2025)
- Simulated 9712 Indian kids aged 8-18 survery responses
- Key variables in the data include age, gender, average screen time, educational to recrational usage ratio, and health impacts
- It was created as way to help show the rise in screen time among indian children.

### Real-World Dataset - [Digital Device Usage and Psychological Well-Being in the Post-COVID-19 Era](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/W5GNLE)
- Data is sourced from Harvard Dataverse
- Anoymirzed survey of 622 partipants of various ages, proffessions, and backgrounds no real stated exact data
- Key Variables in the data include age, sleep pattern, daily phone usage before durning and after Covid-19

---

## Methods

The analysis was conducted using only R/R Studio and the following packages within in it:
-tidyverse
-readxl
-ggridges
-scales
Simulated Dataset
- Data Calculation:Within the simuated data set find and calculating means along with standard dev of ±1 by each age to help find trends in the data
- Data Standardization: Taking listed entries for health impacts and catogaizing them to help make and compare data between populations
- Kernal Distribution: Using each entry to create a kernal distrubution estimation for each age level in a ridgeline plot
Real-World Dataset
- Line plots with variability bands (trend analysis)
- Ratio analysis (educational vs recreational usage)
- [Add any additional methods you used]

---

## Figures

### Figure 1: Distribution of Screen Time by Age 
<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure1project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">


Key insight:
[Your interpretation]

---

### Figure 2 and 3: Average Screen Time by Age and Ratio of Screentime Usage

<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure2project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">
<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure3project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">

[Write explanation of trend, SD, etc.]

Key insight:
[Your interpretation]

---

### Figure 4: Screen Time and Covid-19 Pandemic

<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure4project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">

[Explain what this figure shows]

Key insight:
[Your interpretation]

---

### Figure 5 and 6: Impact on Sleep

<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure5project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">
<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure6project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">

[Explain what relationship you are testing here]

Key insight:
[Your interpretation]

---

### Figure 7: Screen Time's Impact on Health

<img src="https://github.com/bowiejaffin/Screen-Time-and-its-Effects-on-Students/blob/main/figure4project.svg" alt="[IMAGE DESCRIPTION HERE]" width="800">

[Explain what this figure shows]

Key insight:
[Your interpretation]

---



## Comparison: Simulated vs Real Data

[Write your comparison between datasets]

Possible points to discuss:
- Similarities in trends
- Differences in variability
- Limitations of simulation vs real data

---

## Limitations

- [Limitation of simulated data]
- [Limitations of real dataset]
- [No causal inference]
- [Any data cleaning or measurement issues]

---

## Conclusion

[Summarize your main findings]

- What did you learn about screen time and age?
- What did the comparison reveal?
- Why does this matter?

---

## Tools Used

- R (ggplot2, ggridges, dplyr, viridis)
- Data visualization techniques
- Exploratory data analysis
