#initial
library(RODBC)
scon <- odbcDriverConnect('driver={SQL Server};server=SERVER;database=StockAnalysis;trusted_connection=true')
thdsma <- sqlQuery(scon, 'SELECT Date, Price, TwoHundredDaySMA FROM HistoricalData')
summary(thdsma)

# Plot data
sox <- sqlQuery(scon, 'SELECT Date FROM HistoricalData ORDER BY ID ASC')
soy <- sqlQuery(scon, 'SELECT Price FROM HistoricalData ORDER BY ID ASC')
plot(as.factor(sox$Date), (soy$Price), , main="Stock Price By Year", ylab="Price", xlab="Date", cex.lab=1, cex.main=1.5)
# cex.main = font size of main title, cex.lab = font size of labels
# compare:
plot(as.factor(sox$Date), (soy$Price), ylab="Price", xlab="Date")
title(main="Stock Price", col.main="Blue", font.main=4)
odbcCloseAll()

#installation - update to latest version
install.packages("ggplot2")
