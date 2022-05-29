
import 'dart:io';
import 'dart:math';

void main(){
double armotizacao = 0;
double devedor = 0;
double soma1 = 0;
double soma2 = 0;
double soma3 = 0;
 var listaParc = [];
 print("Tomador:");
 dynamic tomador = stdin.readLineSync();
 print("valor do emprestimo:");
 double emprestimo = double.parse(stdin.readLineSync()??"");
 print("informe a taxa de juros:");
 double juros = double.parse(stdin.readLineSync()??"");
 double juros2 = juros / 100;
 double juros3 = juros2 + 1;
 print("informe o numero de parcelas:");
 int parcelas = int.parse(stdin.readLineSync()??"");
 double pv = emprestimo;
 double i = juros2;
 int n = parcelas;
 dynamic pot = pow(juros3, n);
 dynamic pmt = (pot * juros2)/(pot -1);
 dynamic pmt2 = pv*pmt;
 soma1 = pmt2 * parcelas;
 print("SALDO DEVEDOR            VALOR DA PARCELA          ARMOTIZAÇÃO            JUROS");
 for(int c = 0; c<=59; c = c +1){
    double emprestimo2 = emprestimo * juros2;
    soma3 = soma3 + emprestimo2;
    armotizacao = pmt2 - emprestimo2;
    soma2 = soma2 + armotizacao;
    devedor = emprestimo - armotizacao;
    emprestimo = devedor;
    print("$devedor \t  $pmt2  \t  $armotizacao  \t  $emprestimo2  ");
 }print("====================================================================================");
print("total: valor da parcela: $soma1 \t    arotização: $soma2   \t juros: $soma3 ");


}