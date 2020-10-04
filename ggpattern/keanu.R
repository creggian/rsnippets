# install.packages("remotes")
# remotes::install_github("coolbutuseless/ggpattern")

library("ggplot")
library("ggpattern")

df <- data.frame(
  category = c("a", "b", "c", "d"),
  outcome = c(2.9, 1.9, 3.2, 5.1)
)

p <- ggplot(df, aes(category, outcome)) +
  geom_col_pattern(
    pattern      = 'placeholder',
    pattern_type = 'keanu',
    colour       = 'black'
  ) +
  theme_bw(18) +
  labs(
    title = "ggpattern::geom_col_pattern()",
    subtitle = "pattern = 'placeholder', pattern_type = 'keanu'"
  ) +
  theme(legend.position = 'none') +
  coord_fixed(ratio = 1/2)

p
