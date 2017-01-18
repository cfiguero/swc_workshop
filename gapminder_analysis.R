download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")
#Notes form scw
#Date: January 17-18, 2017


#head
#str
#colnames
#summary
#nrow
#View

#African countries' life expectancies for 2007
#Step 1: get 2007 data
is_2007 <- gapminder$year == 2007

#Step 2: get Africa data
is_Africa <- gapminder$continent == "Africa"

#Step 3: pull 2008 & Afric from gapminder
africa_2007 <- gapminder[is_2007 & is_Africa, ]
 

ggplot(data=gapminder, aes(x = year, y=lifeExp, color=continent)) + geom_point()
