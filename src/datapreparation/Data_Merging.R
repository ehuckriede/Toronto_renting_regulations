# Load Data
listings0820 <- read.csv("../../data/listings0820.csv")
listings0821 <- read.csv("../../data/listings0821.csv")

#Create dummy variable 'regulation' in both datasets. 
# Dummy variable = 0 for dataset before regulation
# Dummy variable = 1 for dataset after regulation

listings0820$regulation <- 0
listings0821$regulation <- 1

#Merge datasets together to be able to perform analysis

listings_merged <- merge(listings0820, listings0821, all.x=TRUE, all.y=TRUE)

#Make dummy variable a factor 

listings_merged$regulation <- as.factor(listings_merged$regulation)

# Write output

dir.create('../../gen')
dir.create('../../gen/data-preparation')
dir.create('../../gen/data-preparation/input')
write.csv(listings_merged, "../../gen/data-preparation/input/Merged_data.csv", row.names = FALSE)

