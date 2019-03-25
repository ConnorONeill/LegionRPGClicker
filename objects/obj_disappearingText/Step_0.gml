alpha -= .02;
if(alpha <= 0) instance_destroy(id);
if(moving == true) y += ySpd*dir;
