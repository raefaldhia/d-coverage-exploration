module c_looping;

import std.stdio;

void main() {

}

void OutputBintang_21(int N){
	int i;
	
	for (i=1; i<=N; i++){
		write("*");
	}
}
	
int jumBil_22(int[] bil, int N){
	int i, sum;
	
	sum = 0;
	i=0;
	while (i<N){
		sum = sum + bil[i];
		i = i+1;
	}
	return sum;
}
	
int jumBil_23(int N){
	int sum, i;
	
	sum = 0;
	i = 0;
	do{
		sum = sum + 1;
		i = i + 1;
	}while (i<=N);
	return sum;
}
	
void outputFaktorlBilangan_24(int nilai){
    int i;
   
	writeln("Faktor-faktornya:");
    for (i=nilai; i>=1; i--) {
        if (nilai % i == 0) {
            writefln("%d ", i /* tampilkan bilangan ketika nilainya
                               * merupakan modulus dari nilai yang dicari
                               */
                            );
        }
    }
}
	
bool cariBil_25(int[] bil, int N, int cari){
	int i;
	bool ketemu = false;
	
	i=0;
	while (i<N || ketemu == true){
		if (bil[i] == cari) {
			ketemu = true;
		}
		i = i+1;
	}
	return ketemu;
}

void OutputDeretGanjilGenap_27(int N){
	int i, nGanjil, nGenap;	
	int[] deretGanjil =  new int[N];
	int[] deretGenap =  new int[N];
	
	nGanjil = 0;
	nGenap = 0;
	for (i=1; i<=N; i++){
		if (i % 2 > 0) {
			deretGanjil[nGanjil] = i;
			nGanjil = nGanjil + 1;
		}else { 
			deretGenap[nGenap] = i;
			nGanjil = nGenap + 1;
		}
	}
	writeln("Deret Ganjil");
	for (i=0; i<nGanjil; i++){
		writef("%d ", deretGanjil[i]);
	}
	writeln("Deret Genap");
	for (i=0; i<nGenap; i++){
		writef("%d ", deretGenap[i]);
	}
}
bool guessNumber_28(int[] guessBil, int N, int secret){
	int i;
	bool ketemu = false;
	
	i=0;
	while (i<N || ketemu == true){
		if (guessBil[i] < secret) {
			writefln("Sorry, your guess (%d) is too low.", guessBil[i]);
			writeln( " Try again.\n> " );
		}else if ( guessBil[i] > secret ) {
			writefln( "Sorry, your guess (%d) is too high.", guessBil[i]);
			writeln( " Try again.\n> " );
		}else {
			writefln( "Yeaa, your guess (%d) is right.",  guessBil[i]);
			writefln( "secret = %d", secret);
			ketemu = true;	
		}
		i = i+1;
	}
	return ketemu;
}
	
void OutputPolaXYZ29(int N, int X) {
	// prekondisi N dan X tidak bernilai 0 
	// menampilkan pola bilangan dari 1 s.d. N
	// dimana bilangan yang berkelipatan value dari X diganti dengan bintang
	// contoh : 15, 3 --> output : 1 2 * 4 5 * 7 8 * 10 11 * 13 14 * 
	
	int i;
	i=1;
	do {
		if(i % X == 0) {
			write("* ");
		}else {
			writef("%d ", i);
		}
	}while(i<=N);
}
	
void OutputCountBilPencacah_30(int[] bil, int N, int cari) {
	// menghitung nilai pencacah bilangan dari kumpulan bilangan
	// nilai pencacah bilangan antara 1 s.d 10, lebih dari itu tidak dihitung
	// contoh : isi bil 1, 1, 2, 15
	// nilai 1 ada 2, nilai 2 ada 1 dan tidak terdefinisi ada 1
	
	int i, count1, count2, count3, count4, count5, count6;
	int count7, count8, count9, count10, countUnd;
	
	count1 = 0;
	count2 = 0;
	count3 = 0;
	count4 = 0;
	count5 = 0;
	count6 = 0;
	count7 = 0;
	count8 = 0;
	count9 = 0;
	count10 = 0;
	countUnd = 0;
	for(i=0; i<N; i++){
		switch(bil[i]) {
			case 1 		: count1 	= count1 + 1; break;
			case 2 		: count2 	= count2 + 1; break;
			case 3 		: count3 	= count3 + 1; break;
			case 4 		: count4 	= count4 + 1; break;
			case 5 		: count5 	= count5 + 1; break;
			case 6 		: count6 	= count6 + 1; break;
			case 7 		: count7 	= count7 + 1; break;
			case 8 		: count8 	= count8 + 1; break;
			case 9 		: count9 	= count9 + 1; break;
			case 10 	: count10 	= count10 + 1; break;
			default 	: countUnd 	= countUnd + 1; break;
		}
	}
	
	writefln("pencacah 1 = %d" , count1);
	writefln("pencacah 2 = %d" , count2);
	writefln("pencacah 3 = %d" , count3);
	writefln("pencacah 4 = %d" , count4);
	writefln("pencacah 5 = %d" , count5);
	writefln("pencacah 6 = %d" , count6);
	writefln("pencacah 7 = %d" , count7);
	writefln("pencacah 8 = %d" , count8);
	writefln("pencacah 9 = %d" , count9);
	writefln("pencacah 10 = %d" , count10);
	writefln("pencacah diluar 1.d. 10 = %d" , countUnd);
}
	
int OutputCalculateDeretBilBaseOnOp_31(int[] bil, int N, char op) {
	// mengirimlkan hasil kalkulasi dari deret bilangan berdasarkan operatornya (+, -, *)
	// Contoh : Bil = [1, 5, 7, 10] dan op = +
	// Output = 23
	
	int result = 0;
	int i = 0;
	
	while (i<N) {
		switch (op) {
			case '+' : result = result + bil[i]; break; 
			case '-' : result = result - bil[i]; break; 
			case '*' : result = result * bil[i]; break; 
            default: break;
			}
		i = i+1;
	}
	
	return result;
}
	
string konversiDesToBiner_32(int bil){
	int sisa;
	string biner;		
	
	biner = " ";
	do{
		sisa = bil % 2;
		bil = bil / 2;
		switch (sisa) {
			case 0 : biner = "0" ~ biner; break;
			case 1 : biner = "1" ~ biner; break;
            default: break;
		}
	}while (bil > 0);
	return biner;
}
	
void OutputBintangSegiempat_33(int N){
	int i, j;
	
	for (i=1; i<=N; i++){
		for (j=1; j<=i; j++) {
			write("*");
		}
		writeln();
	}
}
	
void OutputBintangSegitiga_34(int N){
	int i, j;
	
	i = 1;
	while (i<=N){
		for (j=1; j<=i; j++) {
			write("*");
		}
		writeln();
		i = i+1;
	}
}
	
char[] geserBilKiri_36(char[] str, int N, int nGeser){
	// Geser 3 kali
	// str --> 1, 2, 5, 7
	// 1 : 7, 1, 2, 5
	// 2 : 5, 7, 1, 2
	// 3 : 2, 5, 7, 1
	
	int i, j;
	char temp;
	
	for (i=1; i<=nGeser; i++){
		temp = str[N-1];
		j=N-1; 
		while (j>0) {
			str[j] = str[j-1]; 
			j = j - 1;
		}
		str[j] = temp;
	}
	return str;
}
	
void OutputBintangSegitigaTerbalik_37(int N){
	int i, j;
	
	i = 1;
	while (i<=N){
		j=1;
		while (j<i) {
			write(" ");
			j = j + 1;
		}
		while (j<=N) {
			write("*");
			j = j + 1;
		}
           writeln();
		i = i+1;
	}
}