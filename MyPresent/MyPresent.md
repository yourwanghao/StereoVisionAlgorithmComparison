Stereo Vision Algorithm Demo
========================================================
author: Hawk Wang (yourwanghao@gmail.com)
date: 2015-10-24
transition: linear
font-family: 'Helvetica'
autosize: true
type: sub-section

Introduction
========================================================

<small>This demo shows the stereo correspondance algorithm comparison between my algorithm and a competitors'. 

The algorithms are running on a dual camera phone that has one 13M pixels camera, and one 2M pixels camera. <small>You can get more information on my shiny app at https://yourwanghao.shinyapps.io/StereoVisionDemo </small> 

The baseline between the two cameras is 20mm, and below is the camera module:</small>

<img src='images/module.png'>

Main Image and Sub Image
========================================================

I use the two cameras to take photo at the same time so that I can use stereo vision algorithms to generate disparity maps.
<small><font color=#ff0000>Note: Sub image is 90 degree to main image.</font></small>

<table>
<tr>
<td width=40%><img src='images/mainRGB.jpg' width='100%'></td>
<td><img src='images/subRGB.jpg' width='85%'></td>
</tr>
</table>

Disparity Map Comparison
========================================================
<table frame=void rules=none border="0">
<tr>
<th> Mine</th>
<th> Competitor's </th>
<tr>
<tr>
<td><img src='images/mydepth.jpg' width='100%'></td>
<td><img src='images/competitor.png' width='100%'></td>
</tr>
</table>

Performance Comparison
========================================================

![plot of chunk unnamed-chunk-1](MyPresent-figure/unnamed-chunk-1-1.png) 
***
<small>As you can see from left figure, we test the disparity generation for ``10`` times. And
the result shows that mean time for competitor lib is ``5.359`` seconds, while for My lib it is ``2.097`` seconds. Apparently, my lib is ``much faster`` than the competitor's lib.

<font color=#ff0000>Note: The cell phone is based on QCOM MSM8939 platform, disparity map is 896 x 672 pixels</small></font>
