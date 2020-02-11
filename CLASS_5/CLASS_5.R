#' ---
#' title: "Class 5: Data Visualization and Graphs in R"
#' author: "Berenice Ramirez Leal"
#' date: "Jan 21st, 2020"
#' ---

# Class 5
# Data Visualization and graphs in R

plot(1:10, col="blue", typ="o")

read.table("bimm143_05_rstats/weight_chart.txt", header= TRUE)

# Need to import/read input data file first
baby <- read.table ("bimm143_05_rstats/weight_chart.txt", header= TRUE)

# A basic plot of age vs weight
plot(baby$Age, baby$Weight, col="blue", 
     type="o", pch=15, cex=1.5, ylim = c(2,10), xlab="Age (Months)", 
     ylab="Weight (kg)", main="Baby Weight with Age")

# A silly example of "pch" plot character and 'cex' size
plot(1:5, cex=1:5, pch=1:5)

# Next example mouse genome features

mouse <- read.table("bimm143_05_rstats/feature_counts.txt", sep="\t", header=TRUE)

barplot(mouse$Count)


mouse <- read.table("bimm143_05_rstats/feature_counts.txt", 
           sep="\t", header=TRUE)

barplot(mouse$Count, horiz = TRUE, col="lightpink", 
        names.arg = mouse$Feature, las=1)

par(mar=c(5,11,0,1))
barplot(mouse$Count, horiz = TRUE, col="lightpink", 
        names.arg = mouse$Feature, las=1)

par(mar=c(5,4,2,2))
plot(1:10)

#Section 3
#Providing Color Vectors

mf <- read.delim("bimm143_05_rstats/male_female_counts.txt")
barplot(mf$Count, names.arg=mf$Sample, col=rainbow(10))

#Another plot of the same thing with different colors

barplot(mf$Count, names.arg=mf$Sample, col=c("red","blue", "darkgreen"))

# AS A SIDE NOTE CLICKING SOURCE WILL RUN EVERYTHING AGAIN

