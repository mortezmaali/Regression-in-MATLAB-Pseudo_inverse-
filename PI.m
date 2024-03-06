b = imread('MorteziChristine2021-64-Original.jpg');
b = im2double(b);
a =  imread('Yellow_MorteziChristine2021-64-Original.jpg');
a = im2double(a);

[s1 s2 ~]=size(b);

a = imresize(a, [s1 s2]);

b = reshape(b, [s1*s2 3]);

a = reshape(a, [s1*s2 3]);

M = pinv(a)*b;

c = imread('Yellow_IMG-9100.jpg');
c = im2double(c);
c = imresize(c, [s1 s2]);

c = reshape(c, [s1*s2 3]);
C = c*M;
C = reshape(C, [s1 s2 3]);
c = reshape(c, [s1 s2 3]);
c=imrotate(c,-90);
C=imrotate(C,-90);
montage({c, C})

