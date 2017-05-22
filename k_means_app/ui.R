pageWithSidebar(
  headerPanel('Iris k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(my_data)),
    selectInput('ycol', 'Y Variable', names(my_data),
                selected=names(my_data)[[2]]),
    selectInput('val', 'Y Variable', c(1,2,3)),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)
