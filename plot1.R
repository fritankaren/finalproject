NEI <- readRDS("./summarySCC_PM25.rds")
SCC <- readRDS("./Source_Classification_Code.rds")
#Task 1
totalNEI <- aggregate(Emissions ~ year, NEI, sum)
plot(totalNEI$year, totalNEI$Emissions, type = "o",
     main = expression("Total US "~ PM[2.5]~ "Emissions by Year"), 
     ylab = expression("Total US "~   PM[2.5] ~ "Emissions"), xlab = "Year")
#Answer - yes, total emissions from PM2.5 have decreased in the United States from 1999 to 2008