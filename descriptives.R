# Descriptive Statistics for the Wikipedia General User Survey
# 
# Author: bcollier
###############################################################################

wpsurvey1 <- read.table("/home/bcollier/Data/WPSurveyData/contributor-descriptives-cleaned.csv", header=TRUE, sep=",", na.strings="-999", dec=".", strip.white=TRUE)
sampletitle <- "ENGLISH CONTRIBUTORS ONLY"   #title for this sample analysis
summary(wpsurvey1)
pdf("/home/bcollier/Data/WPSurveyData/graphs/histograms.pdf")   #,height=4,width=6)
par(mar=c(10,4.1,4.1,2.1))
hist(wpsurvey1$male, breaks=2, col="darkgray",xlab="MALE", ylab="Frequency", main="0=FEMALE, 1=MALE")
hist(wpsurvey1$age, breaks="Sturges", col="darkgray",xlab="AGE", ylab="Frequency", main=sampletitle)
hist(wpsurvey1$years_educ, breaks="Sturges", col="darkgray",xlab="Years of Education", ylab="Frequency", main=sampletitle)
hist(wpsurvey1$partner, breaks=2, col="darkgray",xlab="Partner", ylab="Frequency", main="0=NO, 1=YES")
hist(wpsurvey1$children, breaks=2, col="darkgray",xlab="Children", ylab="Frequency", main="0=NO, 1=YES")

par(mar=c(10,4.1,4.1,2.1))
barplot(table(wpsurvey1$read_lang), xlab="Reading Language", ylab="Frequency", main=sampletitle,las=2)
barplot(table(wpsurvey1$contrib_lang), xlab="Contributing Language", ylab="Frequency", main=sampletitle,las=2)
barplot(table(wpsurvey1$high_educ), xlab="", ylab="Frequency", main=sampletitle,las=2)
mtext("Highest Education Level", 1, line=7)
barplot(table(wpsurvey1$employment_stat), xlab="", ylab="Frequency", main=sampletitle,las=2)
mtext("Employment Status", 1, line=7)
hist(wpsurvey1$noincomereponse, breaks=2, col="darkgray",xlab="Provided Income", ylab="Frequency", main="0=NO, 1=YES",las=2)
barplot(table(wpsurvey1$access_level), xlab="", ylab="Frequency", main=sampletitle,las=2)
mtext("User Access Level", 1, line=7)
hist(wpsurvey1$wp_interaction, breaks="Sturges", col="darkgray",xlab="Interaction with Other Wikipedians", ylab="Frequency", main=sampletitle,las=2)
hist(wpsurvey1$wp_f2f_interaction, breaks="Sturges", col="darkgray",xlab="Face-to-Face Interaction with Other Wikipedians", ylab="Frequency", main=sampletitle,las=2)
hist(wpsurvey1$art_started, breaks="Sturges", col="darkgray",xlab="Number of Articles Started", ylab="Frequency", main=sampletitle,las=2)
hist(wpsurvey1$art_edited, breaks="Sturges", col="darkgray",xlab="Number of Articles Edited", ylab="Frequency", main=sampletitle,las=2)
hist(wpsurvey1$art_translated, breaks="Sturges", col="darkgray",xlab="Number of Articles Translated", ylab="Frequency", main=sampletitle,las=2)

dev.off()   #end writing to the pdf file
q()
n



