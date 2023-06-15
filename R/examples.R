# ggplot

# categorical
diamonds %>%
  ggplot(aes(x = color, y = price, fill = cut)) +
  geom_bar(width = 0.6, position = position_dodge(0.7), stat = "identity") +
  scale_fill_manual(values = af_colours("categorical", 5))

# duo
diamonds %>%
  filter(color %in% c("D", "J")) %>%
  ggplot(aes(x = carat, y = price, colour = color)) +
  geom_point() +
  scale_colour_manual(values = af_colours("duo"))

# sequential
diamonds %>%
  filter(color %in% c("D", "E", "F")) %>%
  ggplot(aes(x = cut, y = price, fill = color)) +
  geom_bar(width = 0.6, position = position_dodge(0.7), stat = "identity") +
  scale_fill_manual(values = af_colours("sequential"))

# focus
af_focus_assigned <- c("I1" = af_colours("focus")[1],
                       "SI2" = af_colours("focus")[2],
                       "SI1" = af_colours("focus")[2],
                       "VS2" = af_colours("focus")[2],
                       "VS1" = af_colours("focus")[2],
                       "VVS2" = af_colours("focus")[2],
                       "VVS1" = af_colours("focus")[2],
                       "IF" = af_colours("focus")[2])


diamonds %>%
  group_by(color, clarity) %>%
  summarise(mean_price = mean(price)) %>%
  ggplot(aes(x = color, y = mean_price, colour = clarity, group = clarity)) +
  geom_line() +
  scale_colour_manual(values = af_focus_assigned)






## plotly

# categorical
diamonds %>%
  group_by(cut, color) %>%
  summarise(mean_price = mean(price)) %>%
  plot_ly(x = ~color,
          y = ~mean_price,
          color = ~factor(cut),
          type = 'bar',
          colors = af_colours_plotly("categorical", 5))
