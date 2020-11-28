NEI <- readRDS("./summarySCC_PM25.rds")
SCC <- readRDS("./Source_Classification_Code.rds")
#Task 3
baltimore <- subset(NEI, NEI$fips == "24510")
baltimoretype <- aggregate(Emissions ~ year + type, baltimore, sum)
ggplot(baltimoretype, aes(year, Emissions, col = type)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Total Baltimore " ~ PM[2.5] ~ "Emissions by Type and Year")) +
  ylab(expression("Total Baltimore " ~ PM[2.5] ~ "Emissions")) +
  xlab("Year")
#Answer: non-road, on-road and nonpoint are the sources