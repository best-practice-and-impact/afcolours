# afcolours
## Depecation Notice
Please note that afcolours has been superceded by [afcharts](https://github.com/best-practice-and-impact/afcharts), which expands on the functionality of afcolours, and automates the implementation of much of the Analysis Function accessibility guidance. As such, afcolours is no longer being supported.

## Overview

afcolours is an R package which can be used produce the Analysis Function recommended colour palettes to help meet accessibility guidelines. See the [Government Analysis Function website](https://analysisfunction.civilservice.gov.uk/policy-store/codes-for-accessible-colours/) for more information.

afcolours can be used to return either hex or rgb codes using the `colour_format` argument

## Installation

To install the latest version of afcolours, run:

```{R}
install.packages("afcolours")
```

## Example

This is a basic example of how to use afcolours with [ggplot2](https://ggplot2.tidyverse.org/):

``` r
library(afcolours)

data <- data.frame(x = c(1,2),
                   y = c(1,2),
                   z = c("a","b")
        )
ggplot2::ggplot(data, ggplot2::aes(x = x, y = y, colour = z)) +
ggplot2::geom_point() +
ggplot2::scale_colour_manual(values = af_colours("duo"))
}
```
