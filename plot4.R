NEI <- readRDS("./summarySCC_PM25.rds")
SCC <- readRDS("./Source_Classification_Code.rds")
SCC_coal <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
NEI_coal <- NEI[NEI$SCC %in% SCC_coal$SCC,]

#Task 4
coal_emission <- aggregate(Emissions ~ year + type, NEI_coal, sum)
ggplot(coal_emission, aes(year, Emissions, col = type)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Total US" ~ PM[2.5] ~ "Coal Emission by Type and Year")) +
  xlab("Year") +
  ylab(expression("US " ~ PM[2.5] ~ "Coal Emission"))
#Answer: both types decreased