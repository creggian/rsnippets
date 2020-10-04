# install.packages("rvest")

library("rvest")
library("magrittr")

url <- 'https://madewithml.com/projects/?sortby=latest'
made_with_ml <- read_html(url)

xpath <- '//div[contains(@class, "ai-content-text-col")]//b'
made_with_ml %>%
  html_nodes(xpath = xpath) %>%
  html_text()
