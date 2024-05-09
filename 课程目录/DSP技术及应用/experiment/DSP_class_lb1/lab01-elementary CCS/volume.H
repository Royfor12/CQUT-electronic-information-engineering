#define BUF_SIZE 0x64
#define TRUE 1
#define FALSE 0

struct PARMS {
	int Beta;
	int EchoPower;
	int ErrorPower;
	int Ratio;
	struct PARMS *Link;
}; 


