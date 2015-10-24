library(shiny)

require(jpeg)
require(bmp)
require(png)


# Define server logic 
#required to draw a histogram
shinyServer(function(input, output) {
  output$img <- renderImage({
    if (input$imgID==0)
    {
      return(list(
        src = "images/testenv.jpg",
        contentType = "image/jpg",
        alt = "testenv",
        height=500
      ))
    }
    else if (input$imgID==1)
    {
      return(list(
        src = "images/mainRGB.jpg",
        contentType = "image/jpg",
        alt = "main image",
        height=500
      ))
    }
    else if (input$imgID==2)
    {
      return(list(
        src = "images/subRGB.jpg",
        contentType = "image/jpg",
        alt = "sub image",
        width=500
      ))
    }
    else if (input$imgID==3)
    {
      return(list(
        src = "images/mydepth.jpg",
        contentType = "image/jpg",
        alt = "depth image",
        height=500
      ))
    }
    else if (input$imgID==4)
    {
      return(list(
        src = "images/competitor.png",
        contentType = "image/png",
        alt = "depth image",
        height=500
      ))
    }
  }, deleteFile = FALSE)
})