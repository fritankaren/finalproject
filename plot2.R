NEI <- readRDS("./summarySCC_PM25.rds")
SCC <- readRDS("./Source_Classification_Code.rds")
#Task 2
baltimore <- subset(NEI, NEI$fips == "24510")
totalbaltimore <- aggregate(Emissions ~ year, baltimore, sum)
plot(totalbaltimore$year, totalbaltimore$Emissions, type = "o", 
     main = expression("Total Baltimore" ~ PM[2.5] ~ "Emissions by Year"), 
     xlab = "Year", ylab = expression("Total Baltimore "~ PM[2.5] ~ "Emissions"))
#Answer - yes, total emissions from PM2.5 have decreased
