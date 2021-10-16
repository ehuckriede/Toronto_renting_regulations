# Do rental market regulations really work? The Toronto case.

<p align="center">
  <img width="600" height="400" src="https://www.cpomanagement.ca/wp-content/uploads/2020/03/airbnb.jpg">
</p>

This repository belongs to our research into the effect of Toronto's operation to recover the housing market by implementing a new set of regulations on September 10, 2020. This research is performed as a part of the [Data Preparation and Workflow Management](https://dprep.hannesdatta.com) course at Tilburg University. In this research we answer the following research question:


__How did the implemented rental market regulations in Toronto affect rental prices on AirBnB?__

## Motivation

Many cities around the world are dealing with increasing housing prices due to the attractiveness of short term rentals. In order to deal with this problem, local governments in cities like [Amsterdam](https://www.reuters.com/article/us-netherlands-airbnb-amsterdam-idUSKBN2B81NS), [Barcelona](https://www.nytimes.com/2021/09/22/travel/barcelona-airbnb.html) and [Atlanta](https://www.ajc.com/news/atlanta-news/atlanta-delays-new-rules-for-airbnb-other-short-term-rentals/HDTLILUK2NHEPEW5LRABO3Z7FA/) have implemented new regulations to make the short term rental market less attractive in the past year.  

The city of Toronto was dealing with the same issue and implemented some [new rules](https://toronto.citynews.ca/2020/08/25/toronto-introduces-new-rules-for-airbnb-other-short-term-rental-platforms/) for the short term rental market, which also affects AirBnB operators, in september last year. By examing the results of these regulations this could form as a case for other cities dealing with the same issues as of now.

The new rules in Toronto implied the following:
- You have to register your AirBnB unit at the City of Toronto. After you have registered, you have to pay a $50 renewal fee per year. 
- The registered AirBnB owners have to pay a Municipal Accommodation Tax of 4% on a quarterly basis. 
- You will not be able to list properties on AirBnB if it is not your primary residence. This means that you can only AirBnB your home, whether that is a part of it or all of it. 

After the implementation of these rules, fewer listings will probably be available on AirBnB. This can result in three scenarios for the price of the listings: 

- The price of the listings could increase
- The price of the listings could not change significantly
- The price of the listings could decrease (while not very likely)

As the regulations can these three different scenario's it is important that the effects of these regulations are examined. So we aim to conclude whether these regulations had the intended effect in Toronto. With these results other cities facing the same prolem, might implement or might not implement similar short term rental market regulations. 

## Method and results

To analyze the data, first a linear regression is used to examine the relationship between the dependent variable 'price' and the independent variable 'regulation'. Linear regression also allows for easy control of covariates by simply adding them in the regression. In this research, covariates about the neighborhood, the room type, the time that someone is a host, the fact whether someone is a superhost and the fact whether a host's identity is verified are included. The results of this linear regression provide informative insights about the magnitude and the direction of the effect of the independent variable on the dependent variable, as well as all covariates. Another reason why linear regression is preferred in this particular case, instead of for example ANOVA, is that it provides p-values for each mean and thus indicates which variable is different from the reference immediateley.

With use of this linear regression, it is therefore easy to see which effect the regulation has on the price of AirBnB's and whether other factors such as the neighboorhood and room type also have a significance influence on this price. 

**Results**

The following results conclude our research: the prices go up after the regulation has been implemented: 11,5% price increase. This is visually represented in the bar plot below.

**Plotted difference in mean price before and after regulation**

<p align="center">     
<a href="https://lh3.googleusercontent.com/b4JhyzVsucv7RZRXzTxAKp5NJyrUiwI-F3HcSuZYwaLqLvrgbpOaSJ8eAtFb376aavhNoouJ4-lVi1D2v_N65n89tNXHDbCzCc0g28vsSEiT3x1jv6yIZqpSXvTRaMbw1exWBiE=w2400?source=screenshot.guru"> <img src="https://lh3.googleusercontent.com/b4JhyzVsucv7RZRXzTxAKp5NJyrUiwI-F3HcSuZYwaLqLvrgbpOaSJ8eAtFb376aavhNoouJ4-lVi1D2v_N65n89tNXHDbCzCc0g28vsSEiT3x1jv6yIZqpSXvTRaMbw1exWBiE=w582-h315-p-k" /> </a>
</p>

**Coefficient results of the linear regression**

The results of this linear regression are summarized below. As you can see, price has a significance influence on the price. However, so do many of our covariates. Only the neighborhoods in East York and York, the room types 'hotel room' and 'private room' and the fact whether the identity of the host is verified or not are not significant. 
The R-squared value is not particularly high, which means a lot of the variation in the price still has not been accounted for. Nevertheless, the regulation has had an impact on the AirBnB prices and that is for this research the most important goal and conclusion.  



<p align="center"> 
<a img width="400" height="1000" href="https://lh3.googleusercontent.com/H8ikHLyxZuuUHG2NV43l4G6BcuGfJzbRWm9r-1H-xmJa6pW6O70agqL-BZClz02fc91cB5i71zpw7kt5HfC5fR2SUcD8AfpEOZ5ewfssiBnLGpLneI3thUa93nRljrpYaU7eiVc=w2400?source=screenshot.guru"> <img src="https://lh3.googleusercontent.com/H8ikHLyxZuuUHG2NV43l4G6BcuGfJzbRWm9r-1H-xmJa6pW6O70agqL-BZClz02fc91cB5i71zpw7kt5HfC5fR2SUcD8AfpEOZ5ewfssiBnLGpLneI3thUa93nRljrpYaU7eiVc=w600-h315-p-k" /> </a>
</p>

## Repository overview

This repository contains the following files/folders:

- "src" folder: This folder includes all the code that is needed to download, transform and analyze the data of [Inside AirBnb](http://insideairbnb.com/toronto). Within the "src" folder you will find subfolders seperating between data preparation, analyzing and paper. In these subfolders you will find all the code to run the corresponding folder as well as a makefile per step. This makefile will run all code included in the specific folder instead of you manually loading every script, which will save a lot of time.   

- Gitignore: This file specifies files that should be ignored/untracked.

- .Rproj-file: File in which some settings are specified.

- README.md-file: The file you are currently viewing, which describes the repository and how to run it.


## Running instructions

During this project, multiple subdirectories were used. Within the subdirectory 'src', the code is stored within R scripts. These scripts can be run automatically by running the makefile within the repository. [Make](https://tilburgsciencehub.com/building-blocks/configure-your-computer/automation-and-workflows/make/) will run the scripts in the following order:

1. src/datapreparation/get_data.R
2. src/datapreparation/data_merging.R
3. src/datapreparation/data_transformation.R
4. src/datapreparation/data_cleaning.R
5. src/analysis/linear_model.R
6. src/analysis/get_data_for_full_plot.R
7. src/analysis/get_data_for_percentual_plot.R
8. src/analysis/get_data_for_barplot.R
9. src/analysis/create_full_plot.R
10. src/analysis/create_percentual_plot.R
11. src/analysis/create_prices_barplot.R

## More resources

If you are interested in the topic of regulations in the short term rental market, the following articles may be interesting to read:

- C, S. (n.d.). Why did it not work? reflections on regulating airbnb and the complexity and agency of platform capitalism. Geographica Helvetica, 75, 253–257. https://doi-org.ru.idm.oclc.org/10.5194/gh-75-253-2020

This article provides an overview of issues in the current short term, which helps us to understand some of the conflicts over Airbnb and the pitfalls with current forms of regulation on the one side as well as showing the complexity and agency of short-term rentals on the other.

- Koster, H. R. A., van Ommeren, J., &amp; Volkhausen, N. (2021). Short-term rentals and the housing market: quasi-experimental evidence from airbnb in los angeles. Journal of Urban Economics, 124. https://doi-org.ru.idm.oclc.org/10.1016/j.jue.2021.103356

This article addresses a similar case to ours, namely the case of Los Angeles County. It studies the effects of regulation on the housing market using a quasi-experimental research design. 18 out of 88 cities in Los Angeles County have implemented similar regulations as we see in Toronto and it provides clear results. 

## About

This repository is created for the course "Skills: Data Preparation & Workflow Management", given by Hannes Datta, at Tilburg School of Economics and Management. Eveline Huckriede, Julie Habets, Marit Verbruggen, Teun Geurts and Ilse van den Bosch contributed to this repository.
