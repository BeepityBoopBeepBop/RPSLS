
#title:RPSLS Dynamics
#author:Daniel Van Zyl
#date:2025-11-17

d <- data.frame(
  from = c("Rock", "Rock",
           "Paper", "Paper",
           "Scissors", "Scissors",
           "Lizard", "Lizard",
           "Spock", "Spock"),
  to   = c("Scissors", "Lizard",
           "Rock", "Spock",
           "Paper", "Lizard",
           "Spock", "Paper",
           "Rock", "Scissors")
)

g <- graph_from_data_frame(d, directed = TRUE)
set.seed(1) 
layout_circle <- layout_in_circle(g)

vertex_colors <- c(
  "Rock" = "#F4A8A8", # pastel red
  "Paper" = "#DAB4F5", # pastel purple
  "Scissors" = "#A8D1F4", # pastel blue
  "Lizard" = "#BCEBBE", # pastel green
  "Spock" = "#F5E6A6" # pastel yellow
)

edge_colors <- vertex_colors[d$from]

order_vec <- c("Paper", "Rock", "Spock", "Lizard", "Scissors")
layout_circle <- layout_in_circle(g, order = V(g)[order_vec])

plot(
  g,
  layout = layout_circle,
  vertex.size = 50,
  vertex.color = vertex_colors[V(g)$name],
  vertex.label.color = "black",
  vertex.label.cex = 1,
  vertex.label.font = 1,
  edge.arrow.size = 0.75,
  edge.color = edge_colors,
  margin = -0.05,
  main = ""
)
