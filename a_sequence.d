import std.stdio;

void main() {
	// menghitung luas limas
	float alasLimas, tinggiLimas;
	alasLimas = 12.95f;
	tinggiLimas = 10.5f;
   	writeln("Luas Limas = ", luasLimas(alasLimas, tinggiLimas));
	
	// persamaan linear y = 3x - 4
	int X;
	writeln("(x) : ");
	readf(" %d", &X);
	writeln("Persamaan Linear");
	writeln("y = 3x + 4");
	writefln("  = 3*%d + 4", X);
	writefln("  = %d", persamaanLinear(X));

	// menambahkan detik dengan jam yang sudah ditentukan
	int tbhJam, tbhMenit, tbhDetik, detik;
	detik    = 500;
	tbhJam   = 1;
	tbhMenit = 10;
	tbhDetik = 50;
	writeln("Penambahan detik : 500, dengan 1 jam 10 menit 50 detik");
	writefln("  = %d", addDetikWithJam(detik, tbhJam, tbhMenit, tbhDetik));
}

float luasLimas(float sisiAlas, float tinggiMiring) {
	float luas;
	luas = (sisiAlas * sisiAlas) + (4 * (sisiAlas * tinggiMiring / 2));
	return luas;	
}

int persamaanLinear(int x) {
	int y;	
	y = 3 * x - 4;		
	return y;	
}

int addDetikWithJam(int detik, int hour, int minute, int second){
	int s;
	
	s = (hour * 3600) + (minute * 60) + second;
	detik = detik + s;
	return detik;
}

int sisaTukarNominalPec1Kdgn50K10K5K(int nominalUang){
	int pec50K, pec10K, pec5K, pec1K;
	
	pec50K = nominalUang / 50000;
	pec10K = (nominalUang % 50000) / 10000;
	pec5K = ((nominalUang % 50000) % 10000) / 5000;
	pec1K = (((nominalUang % 50000) % 10000) % 5000) / 1000;
	return pec1K;	
}

bool isYearKabisat(int idxMonth, int year){
	bool isKabisat;
	
	isKabisat = ((year % 4 == 0) && (year % 100 > 0)) || (year % 400 == 0); 
	return isKabisat;
}

bool isPointOrigin(int x, int y){
	bool isOrigin;
	
	isOrigin = (x == 0)  && (y == 0); 
	return isOrigin;
}

bool isPointKuadran1(int x, int y){
	bool isKuadran1;
	
	isKuadran1 = (x > 0)  && (y > 0); 
	return isKuadran1;
}

bool isPointKuadran2(int x, int y){
	bool isKuadran2;
	
	isKuadran2 = (x < 0)  && (y > 0); 
	return isKuadran2;
}

bool isPointKuadran3(int x, int y){
	bool isKuadran3;
	
	isKuadran3 = (x < 0)  && (y < 0); 
	return isKuadran3;
}

bool isPointKuadran4(int x, int y){
	bool isPointKuadran4;
	
	isPointKuadran4 = (x > 0)  && !(y >= 0); 
	return isPointKuadran4;
}

bool isPointNotOrigin(int x, int y){
	bool isNotOrigin;
	
	isNotOrigin = (x != 0) || (y != 0); 
	return isNotOrigin;
}

bool isSuhuPadat(int suhu){
	bool isPadat;
	
	isPadat = (suhu >=0 && suhu<= 100); 
	return isPadat;
}

bool isSuhuCair(int suhu){
	bool isCair;
	
	isCair = (suhu<= 0); 
	return isCair;
}

bool isSuhuUap(int suhu){
	bool isUap;
	
	isUap = (suhu >= 100); 
	return isUap;
}
