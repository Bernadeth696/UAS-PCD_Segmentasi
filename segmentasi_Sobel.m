
%Segmentasi menggunakan metode Sobel
%Ujian Akhir Semester PCD
%Bernadeth Putri Meo F55120047 | Kelas B

% Membaca citra
file1 = imread('gambar3.jpeg');
file = imresize(file1,[400,400]);
Grayscale=rgb2gray(file);

% Menggunakan metode sobel 
a=edge(Grayscale,'sobel');

% Menampilkan citra
figure, imshow(file), title('Citra Asli');
figure, imshow(Grayscale), title('Citra Grayscale');
figure, imshow(a), title('Citra Sobel Edge Detection ');