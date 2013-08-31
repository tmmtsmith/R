library(RODBC)
scon <- odbcDriverConnect('driver={SQL Server};server=SERVER;database=StockAnalysis;trusted_connection=true')
thdsma <- sqlQuery(scon, 'SELECT Date, Price, TwoHundredDaySMA FROM HistoricalData')
summary(thdsma)

# Plot data
sox <- sqlQuery(scon, 'SELECT Date FROM HistoricalData ORDER BY ID ASC')
soy <- sqlQuery(scon, 'SELECT Price FROM HistoricalData ORDER BY ID ASC')
plot(as.factor(sox$Date), (soy$Price))
odbcClose(scon)
