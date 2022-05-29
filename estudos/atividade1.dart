
import "dart:io";
void main(){
//metragem total
print("quantos metros sera a construção:");
double metros = double.parse(stdin.readLineSync()?? "");
print("quantas janelas serão:");
int janelas = int.parse(stdin.readLineSync()?? "");

print("qual a metragem das janelas");
double metroJanela = double.parse(stdin.readLineSync()?? "");
print("quantas portas serão:");
int portas = int.parse(stdin.readLineSync()??"");

print("qual a metragem das portas");
double metroPorta = double.parse(stdin.readLineSync()??"");
double metragemTot = metros - ((janelas*metroJanela) + (portas*metroPorta));
print(metragemTot);





//blocos
//rendimento dos blocos
double bloco1 = 14 * 24;
double m2B1 = 10000/bloco1;
double blocoMetragemTot = metragemTot * m2B1;
print("caso voce escolha o bloco 1 voce tera que comprar ${m2B1.toStringAsFixed(0)} blocos por metro quadrado");
print("com o modelo de bloco 1 serão necessarios ${blocoMetragemTot.toStringAsFixed(0)} blocos para a metragem total");
print("========================================================================================");
double bloco2 = 19 * 19;
double m2B2 = 10000/bloco2;
double bloco2MetragemTot = metragemTot * m2B2;
print("caso voce escolha o bloco 2 voce tera que comprar ${m2B2.toStringAsFixed(0)} blocos por metro quadrado");
print("com o modelo de bloco 2 serão necessarios ${bloco2MetragemTot.toStringAsFixed(0)} blocos para a metragem total");
print("=========================================================================================");
double bloco3 = 20 * 30;
double m2B3 = 10000/bloco3;
double bloco3metragemTot = metragemTot * m2B3;
print("caso voce escolha o bloco 3 voce tera que comprar ${m2B3.toStringAsFixed(0)} por metro quadrado");
print("com o modelo de bloco 3 serão necessarios ${bloco3metragemTot.toStringAsFixed(0)} blocos para a metragem total");
print("=========================================================================================");

//tabela
double bloco1A = 0.98 * blocoMetragemTot;
double bloco1B = 1.04 * blocoMetragemTot;
double bloco1C = 1.12 * blocoMetragemTot;


double bloco2A = 1.50 * bloco2MetragemTot;
double bloco2B = 1.57 * bloco2MetragemTot;
double bloco2C = 1.65 * bloco2MetragemTot;

double bloco3A = 1.84 * bloco3metragemTot;
double bloco3B = 1.90 * bloco3metragemTot;
double bloco3C = 1.96 * bloco3metragemTot;


print("------------TABELA DO GASTO TOTAL COM OS BLOCOS------------");
print("----------------------------------------------------------------------------");
print("  MODELO       PREÇO TOTAL A    PREÇO TOTAL B    PREÇO TOTAL C                       ");
print("  BLOCO 1        ${bloco1A.toStringAsFixed(0)}               ${bloco1B.toStringAsFixed(0)}             ${bloco1C.toStringAsFixed(0)}    ");
print("  BLOCO 2        ${bloco2A.toStringAsFixed(0)}             ${bloco2B.toStringAsFixed(0)}             ${bloco2C.toStringAsFixed(0)}       ");
print("  BLOCO 3        ${bloco3A.toStringAsFixed(0)}               ${bloco3B.toStringAsFixed(0)}             ${bloco3C.toStringAsFixed(0)}    ");
}