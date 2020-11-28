NEI <- readRDS("./summarySCC_PM25.rds")
SCC <- readRDS("./Source_Classification_Code.rds")

#Task 5
baltimore_motor <- subset(NEI, NEI$fips == "24510" & NEI$type == "ON-ROAD")
baltimore_motor_agg <- aggregate(Emissions ~ year, baltimore_motor, sum)
ggplot(baltimore_motor_agg, aes(year, Emissions)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Baltimore " ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) +
  xlab("Year") +
  ylab(expression(~PM[2.5]~ "Motor Vehicle Emissions"))
#Answer: motor vehicle emissions decreased