## Pairs of different normal distributions ##

library(scales)

s <- seq(-3, 3, 0.005)

tiff(filename = 'CTdiff.png', width = 9, height = 9,
     units = 'in', pointsize = 12, bg = 'white', res = 300) # image file

# central tendency difference
plot(s, dnorm(s, 0, 1), type = 'h',
     col = alpha('#0035C2', .05), axes = F, ylim = c(0,.4))
lines(s, dnorm(s, 0, 1), lwd = .5, col = '#0035C2')
lines(s, dnorm(s, .3, 1), type = 'h', col = alpha('#E82728', .05))
lines(s, dnorm(s, .3, 1), lwd = .5, col = '#E82728')

dev.off() # write image to working directory


tiff(filename = 'Vardiff.png', width = 9, height = 9,
     units = 'in', pointsize = 12, bg = 'white', res = 300) # image file

# variability difference
plot(s, dnorm(s, 0, sqrt(1.25)), type = 'h',
     col = alpha('#0035C2', .04), axes = F, ylim = c(0,.4))
lines(s, dnorm(s, 0, sqrt(1.25)), lwd = .5, col = '#0035C2')
lines(s, dnorm(s, 0, 1), type = 'h', col = alpha('#E82728', .04))
lines(s, dnorm(s, 0, 1), lwd = .5, col = '#E82728')

dev.off() # write image to working directory





