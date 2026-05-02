#install and enable these packages for the code for use in the data set and its visualization
install.packages("tidyverse")
install.packages("readxl")
install.packages("ggridges")
install.packages("scales")
library(readxl)
library(tidyverse)
library(ggridges)
library(viridis)
library(scales)

#make sure to download these data sets from the following urls 
#"https://www.kaggle.com/datasets/ankushpanday2/indian-kids-screentime-2025" should be downloaded as Indian_Kids_Screen_Time.csv
#"https://dataverse.harvard.edu/file.xhtml?fileId=13663874&version=1.0" should be downloaded as screen_time.csv

#Make sure the working directory is set to where ever you have these files located.
#I recommend using your download/documents folder or a folder within your downloads or documents
setwd("C:/Users/YourName/OneDrive/Documents/")#Insert what ever you want the directory to be
# Now read them into r with the following commands but also if you do not want to set a directory make just copy the path and properly format it for r i.e make all / into \
Screen_India<-read_csv("Indian_Kids_Screen_Time.csv")
Attention_Span<-read_csv("Dataset for Digital Device Usage and Psychological Well-Being in the Post-COVID-19 Era (N = 622).csv")
#using two data sets allows use of a simulated data as a way to visualize children probable responses 
#the other one provides more in depth responses to questions about screen time and its usage with an older audience 

#Makes a Ridge plot(figure 1) based on the screen time average by age
ggplot(Screen_India, aes(
  x=Avg_Daily_Screen_Time_hr,
  y=factor(Age, levels=sort(unique(Age))),
  fill=as.factor(Age)
)) +
  geom_density_ridges(
    alpha=0.75,
    scale=0.9,
    color="white",
    linewidth=0.3
  ) +
  scale_fill_viridis_d(option="C") +
  labs(
    title="Figure 1. Distribution of Daily Screen Time by Age",
    x="Daily Screen Time (hours)",
    y="Age(years)"
  ) +
  theme_classic(base_size=14) +
  theme(
    legend.position="none",
    plot.title=element_text(face="bold", size=16),
    axis.title=element_text(face="bold"),
    axis.text=element_text(color="black")
  )
#lets find the average screen time and the ratio for each age in the study  
age_avg <- Screen_India |>
  group_by(Age) |>
  summarise(
    n=n(),
    avg_screen_time=mean(Avg_Daily_Screen_Time_hr, na.rm = TRUE),
    sd_screen_time=sd(Avg_Daily_Screen_Time_hr, na.rm = TRUE),
    min_screen_time=min(Avg_Daily_Screen_Time_hr, na.rm = TRUE),
    max_screen_time=max(Avg_Daily_Screen_Time_hr, na.rm = TRUE),
    median_screen_time=median(Avg_Daily_Screen_Time_hr, na.rm = TRUE),
    avg_edu_recreation_ratio=mean(Educational_to_Recreational_Ratio, na.rm = TRUE),
    sd_edu_recreation_ratio=sd(Educational_to_Recreational_Ratio, na.rm = TRUE),
    min_edu_recreation_ratio=min(Educational_to_Recreational_Ratio, na.rm = TRUE),
    max_edu_recreation_ratio=max(Educational_to_Recreational_Ratio, na.rm = TRUE),
    median_edu_recreation_ratio=median(Educational_to_Recreational_Ratio, na.rm = TRUE)
  )
#commands graph the data to better see how the distribution impacts the data
#figure 2
ggplot(age_avg, aes(x=Age, y=avg_screen_time)) +
  geom_ribbon(
    aes(
      ymin=avg_screen_time-sd_screen_time,
      ymax=avg_screen_time+sd_screen_time
    ),
    fill="#2C7FB8",
    alpha=0.15
  ) +
  geom_line(
    linewidth=1.6,
    color="#1B4965"
  ) +
  geom_smooth(
    se=FALSE,
    linewidth=1,
    linetype="dashed",
    color="grey20"
  ) +
  geom_point(
    size=4,
    color="#1B4965"
  ) +
  geom_errorbar(
    aes(
      ymin=avg_screen_time-sd_screen_time,
      ymax=avg_screen_time+sd_screen_time
    ),
    width=0.2,
    alpha=0.5,
    linewidth=0.7,
    color="#1B4965"
  ) +
  scale_x_continuous(limits=c(8, 18), breaks=8:18) +
  labs(
    title="Figure 2. Average Daily Screen Time by Age with Variability",
    subtitle="Mean values with ±1 standard deviation and smoothed trend line",
    x="Age (years)",
    y="Average Daily Screen Time (hours)"
  ) +
  theme_classic(base_size=14) +
  theme(
    plot.title=element_text(face="bold", size=16),
    plot.subtitle=element_text(size=12),
    axis.title=element_text(face="bold"),
    axis.text=element_text(color="black")
  )
#figure 3 code 
ggplot(age_avg, aes(x=Age, y=avg_edu_recreation_ratio)) +
  geom_ribbon(
    aes(
      ymin=avg_edu_recreation_ratio-sd_edu_recreation_ratio,
      ymax=avg_edu_recreation_ratio+sd_edu_recreation_ratio
    ),
    fill="#2C7FB8",
    alpha=0.15
  ) +
  geom_line(
    linewidth=1.6,
    color="#1B4965"
  ) +
  geom_smooth(
    se=FALSE,
    linewidth=1,
    linetype="dashed",
    color="grey20"
  ) +
  geom_point(
    size=4,
    color="#1B4965"
  ) +
  geom_errorbar(
    aes(
      ymin=avg_edu_recreation_ratio-sd_edu_recreation_ratio,
      ymax=avg_edu_recreation_ratio+sd_edu_recreation_ratio
    ),
    width=0.2,
    alpha=0.5,
    linewidth=0.7,
    color="#1B4965"
  ) +
  labs(
    title="Figure 3. Educational to Recreational Ratio by Age",
    subtitle="Mean values with ±1 standard deviation and smoothed trend line",
    x="Age (years)",
    y="Educational / Recreational Ratio"
  ) +
  theme_classic(base_size=14) +
  theme(
    plot.title=element_text(face="bold", size=16),
    plot.subtitle=element_text(size=12),
    axis.title=element_text(face="bold"),
    axis.text=element_text(color="black")
  )

#Clean up other data set but also put it into new one to compare and not lose original set
data<-Attention_Span|>
  select(
    Gender=`1. Please select your Gender.`,
    Age=`2. What is your age?`,
    Location=`5. Where do you live in?`,
    Sleep=`6. How long do you sleep?`,
    Profession=`7. What is your profession?`,
    Phone_Before=`10. Before COVID-19, how long were you using Phone per day?`,
    Phone_During=`11. During COVID-19 (2020-2022), how long were you using Phone per day?`,
    Phone_After=`12. Since 2023, how long have you been using Phone per day?`
  )|>
  mutate(across(everything(), ~ na_if(., "")))|>
  drop_na()

#convert data to longer form to better read and visualize
data_long<-data|>
  pivot_longer(
    cols=c(Phone_Before, Phone_During, Phone_After),
    names_to="Period",
    values_to="ScreenTime"
  )
data_long$Period <- factor(
  data_long$Period,
  levels=c("Phone_Before", "Phone_During", "Phone_After"),
  labels=c("Before", "During", "After")
)
#make figure 4 that helps show changes between the peroids
ggplot(data_long, aes(x=Period, fill=ScreenTime)) +
  geom_bar(position = "fill", color="white", linewidth=0.2) +
  scale_y_continuous(labels =percent) +
  scale_fill_brewer(palette="Blues") +
  labs(
    title="Figure 4. Changes in Daily Phone Usage Before, During, and After the COVID-19 Pandemic",
    x="Time Period",
    y="Percentage of Respondents",
    fill="Daily Phone Usage"
  ) +
  theme_classic(base_size = 14) +
  theme(
    plot.title=element_text(face = "bold", size = 16),
    axis.title=element_text(face = "bold")
  )


#now for figure 5 and 6 (change data age range entries to midpoints)
data<-data|>
  mutate(
    Age=case_when(
      Age=="15-30" ~ "22.5",
      Age=="31-45" ~ "38",
      TRUE ~ Age
    )
  )
age_data<-data|>
  mutate(
    Age_Group=ifelse(Age >= 23, "23 and above", "Below 23")
  )
#Plots Figure 5 and 6

ggplot(age_data, aes(x=Age_Group, fill=Phone_After)) +
  geom_bar(position="fill", color="white", linewidth=0.2) +
  scale_y_continuous(labels=scales::percent) +
  scale_fill_brewer(palette="Pastel1") +
  labs(
    title="Figure 5. Daily Phone Usage by Age Group (Post-COVID)",
    x="Age Group",
    y="Percentage of Respondents",
    fill="Daily Phone Usage"
  ) +
  theme_classic(base_size=14) +
  theme(
    plot.title=element_text(face="bold", size=16),
    plot.subtitle=element_text(size=12),
    axis.title=element_text(face="bold")
  )
ggplot(age_data, aes(x=Phone_After, fill=Sleep)) +
  geom_bar(position="fill", color="white", linewidth=0.2) +
  scale_y_continuous(labels=scales::percent) +
  scale_fill_brewer(palette="Pastel1") +
  facet_wrap(~ Age_Group, nrow=1) +
  labs(
    title="Figure 6. Phone Usage and Sleep Duration by Age Group (Post-COVID)",
    x="Daily Phone Usage",
    y="Percentage of Respondents",
    fill="Sleep Duration"
  ) +
  theme_classic(base_size=14) +
  theme(
    plot.title=element_text(face="bold", size=16),
    axis.title=element_text(face="bold"),
    axis.text.x=element_text(angle=20, hjust=1),
    panel.spacing=unit(2, "lines")
  )

#figure 7 data change and clean up
health_screen <- Screen_India |>
  mutate(
    Health_Impacts = str_trim(str_to_lower(Health_Impacts)),
    Health_Score = case_when(
      Health_Impacts == "none" ~ 0,
      TRUE ~ str_count(Health_Impacts, ",") + 1
    ),
    Health_Score = pmin(Health_Score, 4),
    Health_Level = factor(
      Health_Score,
      levels = 0:4,
      labels = c(
        "No Symptoms",
        "Minor Symptoms",
        "Mild Symptoms",
        "Major Symptoms",
        "Severe Symptoms"
      )
    ),
    Exceeded_Recommended_Limit = factor(
      Exceeded_Recommended_Limit,
      levels = c(FALSE, TRUE),
      labels = c("Did Not Exceed Limit", "Exceeded Limit")
    )
  )
#plots figure 7
ggplot(health_screen, aes(
  x=Avg_Daily_Screen_Time_hr,
  y=Health_Level,
  fill=Health_Level
)) +
  geom_density_ridges(
    alpha=0.85,          
    scale=1.1,           
    color="black",       
    linewidth=0.4,
    rel_min_height=0.01
  ) +
  labs(
    title="Figure 7. Distribution of Screen Time by Health Impact Severity",
    x="Average Daily Screen Time (hours)",
    y="Health Impact Level"
  ) +
  theme_classic(base_size = 14) +
  theme(
    legend.position="none",
    plot.title=element_text(face="bold", size=16),
    axis.title=element_text(face="bold")
  )