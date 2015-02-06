if(x < xprevious && y == yprevious) image_angle = 180; //Move left
else if (x < xprevious && y > yprevious) image_angle += 4; //Down left turn
else if(y > yprevious && x == xprevious) image_angle = 270; //Move down
else if (x > xprevious && y > yprevious){
    if(image_angle >= 270) image_angle += 4; //Down left turn
    //else image_angle -= 4; //Down right turn
}
else if(x > xprevious && y == yprevious) image_angle = 360; //Move right
//else if (x < xprevious && y > yprevious) image_angle -= 4; // turn
else image_angle = 0;
