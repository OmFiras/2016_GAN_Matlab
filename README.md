# Generative Adversarial Nets for Matlab
only class 2 with GAN

![](https://github.com/layumi/2016_GAN_Matlab/blob/master/show.png)

class 0-9 with infoGAN

![](https://github.com/layumi/2016_GAN_Matlab/blob/master/show2.png)

I use feature matching to train Generative model. (I define this Loss in the `/matlab/+dagnn/Feature_Match_Loss.m`)

1.Compile matconvnet by run `gpu_compile.m` which you should remove comment in it.

2.You can test this code by run `test_gan_3.m` or `test_gan_info.m` 

3.If you wanna train this code, you can run `train_gan_3.m` or `train_gan_info.m` 
You can find the network structure in `GDnet_3.m` and `GDnet_info.m` 


# Some Details
1.I may miss some thing or not select a good initial parameter. So any advice is welcome. 

2.
GDnet_1 is using 32*32 random map as input

GDnet_2 is using 100 random vector and using deconv 

GDnet_3 is using 100 random vector and using conv (like fc layer)

In my experiment, deconv show that the output adjacent pixel is likely.
So in the minist using conv(fc layer) is better. (deconv may suit for real images such as CIFAR)   


# I have give up this code, you may try the code in tensorflow.
I am sorry for that. I think my GAN training code on github is not good enough to rehearsal the result in the original paper. In fact, I give up my code and turn to use the dcgan wrote in the tensrflow. The code url is https://github.com/carpedm20/DCGAN-tensorflow. You may try it.
Recently I also test the code for wgan. https://github.com/carpedm20/DCGAN-tensorflow   It’s also awesome.
I hope it can help you.
