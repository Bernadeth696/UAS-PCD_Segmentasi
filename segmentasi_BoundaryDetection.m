%Segmentasi menggunakan metode Boundary Detection
%Ujian Akhir Semester PCD
%Bernadeth Putri Meo F55120047 | Kelas B

clc;
clear all;
close all;
%Membaca citra
file = imread('gambar3.jpeg');
img = imresize(file,[400,400]);
I=rgb2gray(img);

%Struktur element untuk boundary
SE=strel('disk',5);
B=imerode(I,SE); 
B=I-B;

%Tampilan citra
figure;imshow(img);title('Citra Asli');
figure;imshow(B);title('Boundary Detection');