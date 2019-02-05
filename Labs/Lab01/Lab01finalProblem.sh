cut -f 2-4 -d , PredPreyData.csv | head -n 1 > PredPreyDataTest.csv
cut -f 2-4 -d , PredPreyData.csv |tail >> PredPreyDataTest.csv