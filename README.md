Ruby3D
========

Ruby3D is an simple yet effective approach to generate 3D Images. With few lines of Ruby Code
and using RMagick RubyGem all you need is one good 2D image and bingo you will it in 3D. 

### Whats is a 3DImage or Anaglyph?
Anaglyph images are images with 3D effect when viewed with a 2 color red and cyan glasses.


### With Ruby3D

1. Place the script `ruby3d.rb` in any folder e.g /home/Downloads
2. On linux given execute permissions `chmod u+x /home/Downloads/ruby3d.rb`
3. Finally with a 2D Image at some file location run `./ruby3d.rb 9 /home/Downloads/demo.jpg`
3. You have your 3D Image File ready in `/home/Downloads/3D_demo.jpg`


### Knowhow
1. In this I am using only one 2D Image. If you already have two sterioscopic Images at hand modify
the code to take two Image Inputs.
2. While executing the code I pass the `shift` in generating sterioscopic Images as 9, feel free to pass any value for accurate results you need for your Image.

### Demo
2D Image  
![2D Image](http://db.tt/t3VDvVUc "2D")

After processing with Ruby3D the 3D Image
![3D Image](http://db.tt/uVmcgYHj "3D")

### How would you have done the same on PHOTOSHOP? WITHOUT a Ruby3D!

1. Take two pictures along a straight line with some distance. 
Unlike the case of making lenticular prints, the precision requirement of making anaglyph 
is not very tight. You can take your pictures by moving the camera on a flat surface. 
Try to use a rigid ruler to guide the camera when you move the camera from left to right. 
The distance between the first picture on the left and the second picture on the right 
should be about 2.5 inch (or 65mm).

2. Open both pictures into Photoshop. Paste left picture over right picture so the left picture is on top of the right picture. On the Left Picture Layer in Layer Style dialog,un-tick the B and G check boxes under Advanced blending. Viola you are done!



