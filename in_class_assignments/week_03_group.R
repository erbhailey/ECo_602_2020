# load csv files into environment as data frames
dat_birds <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/bird.sta.csv")
dat_habitat <- read.csv("https://michaelfrancenelson.github.io/eco_602_634_2020/data/hab.sta.csv")

# explore habitat data using pairs plots
lapply(dat_habitat, class) # determine numeric-class variables to include in pairs plot 
pairs(dat_habitat[, c("lat", "elev", "slope", "aspect", "ba.tot", "ba.ratio", "snag.dc1")])

# create histograms to explore bird counts
max(dat_birds$WIWR) # determine max count value for defining hist() bins
hist(dat_birds$WIWR, main = "Winter Wren Abundance", xlab = "Number of Winter Wrens Counted", breaks = 0:7 - 0.5) # winter wren abundance distribution

max(dat_birds$CBCH) # determine max count value for defining hist() bins
hist(dat_birds$CBCH, main = "Chestnut Back Chickadee Abundance", xlab = "Number of Chickadees Counted", breaks = 0:7 - 0.5) # chickadee abundance distribution

max(dat_birds$b.total) # determine max count value for defining hist() bins
hist(dat_birds$b.total, main = "Total Bird Abundance", xlab = "Number of Birds Counted", breaks = 0:81 - 0.5) # total bird abundance distribution
