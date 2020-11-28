NEI <- readRDS("./summarySCC_PM25.rds")
SCC <- readRDS("./Source_Classification_Code.rds")

#Task 6
baltimoreVSla <- subset(NEI, NEI$fips %in% c("24510","06037") & NEI$type == "ON-ROAD")
baltimoreVSla_agg <- aggregate(Emissions ~ year + fips, baltimoreVSla, sum)

ggplot(baltimoreVSla_agg, aes(year, Emissions, col = fips)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Baltimore and Los Angeles" ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) +
  labs(x = "Year", y = expression(~PM[2.5]~ "Motor Vehicle Emissions") ) +
  scale_colour_discrete(name = "County", labels = c("Los Angeles", "Baltimore"))
#Answer - in Baltimore, motor vehicle emissions decreased, in LA - increased
