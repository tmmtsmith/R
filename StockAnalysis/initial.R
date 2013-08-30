library(RODBC)
scon <- odbcDriverConnect('driver={SQL Server};server=SERVER;database=StockAnalysis;trusted_connection=true')
thdsma <- sqlQuery(scon, 'SELECT Date, Price, TwoHundredDaySMA FROM HistoricalData')
summary(thdsma)
