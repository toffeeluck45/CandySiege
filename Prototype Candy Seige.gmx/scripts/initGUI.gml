//Scale Factors
scale_x = view_wport/gui_width;
scale_y = view_hport/gui_height;
global.scale_factor = 1;

//Choose scale factor
if(scale_x < scale_y)
    global.scale_factor = scale_x;
else
    global.scale_factor = scale_y;
