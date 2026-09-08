clear all
close all
clc

w1 = tf(0.0067, [1, 0]);
w2 = feedback(w1, 21, -1);
w21 = tf(14, [0.15 1]);
w3 = series(w2, w21);
w4 = feedback(w3, 36, -1);
w5 = tf(1, [1 0]);
w6 = series(w4, w5);

w7 = 59 * w6
figure;
margin(w7)

w7f = feedback(w7, 1, -1)
figure
step(w7f)