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

First, introduce and motivate your chosen method, and explain how it contributes to solving the research question/business problem.

Second, summarize your results concisely. Make use of subheaders where appropriate.

## Repository overview

This repository contains the following files/folders:

- "src" folder: This folder includes all the code that is needed to download, transform and analyze the data of [Inside AirBnb](http://insideairbnb.com/toronto). Within the "src" folder you will find subfolders seperating between data preparation, analyzing and paper. In these subfolders you will find all the code to run the corresponding folder as well as a makefile per step. This makefile will run all code included in the specific folder instead of you manually loading every script, which will save a lot of time.   

- Gitignore: This file specifies files that should be ignored/untracked.

- .Rproj-file: File in which some settings are specified.

- README.md-file: The file you are currently viewing, which describes the repository and how to run it.


## Running instructions

During this project, multiple subdirectories were used. Within the subdirectory 'src', the code is stored within R scripts. These scripts can be run automatically by running the makefile within the repository. [Make](https://tilburgsciencehub.com/building-blocks/configure-your-computer/automation-and-workflows/make/) will run the scripts in the following order:

1. src/datapreparation/get_data.R
2. src/datapreparation/Data_Merging.R
3. src/datapreparation/Data_Transformation.R
4. src/datapreparation/Data_Cleaning.R
5. ...

## More resources

Point interested users to any related literature and/or documentation.

## About

This repository is created for the course "Skills: Data Preparation & Workflow Management", given by Hannes Datta, at Tilburg School of Economics and Management. Eveline Huckriede, Julie Habets, Marit Verbruggen, Teun Geurts and Ilse van den Bosch contributed to this repository.
