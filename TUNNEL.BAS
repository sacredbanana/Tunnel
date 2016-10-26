'Tunnel by Cameron Armstrong

open window 640,512
numcircles=2
dim circlerad(numcircles),circlered(numcircles),circlegrn(numcircles),circleblu(numcircles)
for circles=1 to numcircles
circlerad(circles)=420/numcircles*circles
next circles
label draw
setdrawbuf dw
clear window
for circles=1 to numcircles
circlered(circles)=255*sin(circles/2)
circlegrn(circles)=255*cos(circles/3)
circleblu(circles)=255*sin(circles/4)
setrgb 1,circlered(circles),circlegrn(circles),circleblu(circles)
circle 320,256,circlerad(circles)
circlerad(circles)=(circlerad(circles)+.1)^1.05
if circlerad(circles)>420 circlerad(circles)=0
next circles
setdispbuf dw
dw=1-dw
goto draw
