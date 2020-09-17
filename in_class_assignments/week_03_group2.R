install.packages("palmerpenguins")
install.packages("here")
?require
require(palmerpenguins)
require(here) # what's the difference between library() and require()?

penguins <- data.frame(penguins) # convert to data frame

# data exploration follows
mean(penguins$body_mass_g) # NA output
mean(penguins$body_mass_g, na.rm = TRUE) # mean = 4201.754

summary(penguins) # outputs min/max/mean/quantiles/NAs in each column/variable
colnames(penguins)
lapply(penguins, class)

# graphical exploration follows
pairs(penguins[c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g")]) # pairs plot of numeric variables
# bill length and depth, flipper length, and body mass are all positively associated.
# there seem to be clusters. something like a co-plot or panel plot may come in handy.
plot(penguins$body_mass_g, penguins$flipper_length_mm) # scatterplot shows positive association
max(penguins$body_mass_g, na.rm = TRUE) # max = 6300
hist(penguins$body_mass_g)

# box plots
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins) # plot bill depth grouped by sex
par(mfrow = c(1, 2))
  boxplot(penguins$bill_depth_mm)
  boxplot(bill_depth_mm ~ sex, data = penguins)
dev.off()

# co-plots
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)
# coplot(x ~ y | group, data = ...)
# i.e. sex is used as a conditioning variable
# both categorical and numerical variables can be used to condition a plot

# graphics export
require(here)
png(filename = here("basic_histogram.png"), width = 800, height = 600)
hist(penguins$body_mass_g)
dev.off()
# saves graphic as .png file to project directory
# I will never use this... for the principle.


# deliverables
# boxplot
par(mfrow = c(1, 2))
boxplot(body_mass_g ~ sex, data = penguins, xlab = "Sex", ylab = "Body Mass (g)")
boxplot((bill_length_mm/body_mass_g) ~ sex, data = penguins, xlab = "Sex", ylab = "Ratio of Bill Length to Body Mass")
dev.off()






