import "dart:io";
void main() {
  //mostrando as tabelas 
  print(""" FAIXA INSS
        Sálarios            // aliquotas
        1100                //  7.5%
        1100.01 ate 2203.48 //  9.0%
        2203.49 ate 3305.22 //  12.0%
        3305.23 ate 6433.57 //  14.0%  
        """);
  
  print(
    """ TETO SALARIAL
      Faixa1 = 82,50
      faixa2 = 99,31
      Faixa3 = 132,20
      faixa4 = 437,96
      Total a recolher = 751,97
      """);
  
  //atribuindo o teto salarial pra variavel de sua respectiva faixa
  double faixa1 = 82.50;
  double faixa2 = 99.31;
  double faixa3 = 132.20;
  double faixa4 = 437.96;
  //atribuindo o valor maximo que se deve recolher da renda
  double tot_recolher = 751.97;
  //processo: pega-se o valor da renda e subtrai pelo valor minimo da faixa correspondente e multiplica pela aliquota da faixa
  //depois pega-se o resultado e soma-se com o teto salarial das faixas anteriores, se o salario se encontrar na faixa 1 o valor 
  //sera somado com o teto salarial da propria faixa 1, pois n existem faixas anteriores.

 
 //comando de entradada onde o usuario deve digitar a sua renda.
  print("digite sua renda:");
  double renda = double.parse(stdin.readLineSync()??"");
  
  
  if (renda == 1100){
    double salario_novo = (renda - 1100) * 0.075;
    salario_novo = salario_novo + faixa1;
    print("sera retirado do seu salario um valor de $salario_novo");
  
  
//caso a renda seja menor que o valor minimo solicitado na faixa 1
  }if(renda < 1100){
    print("a sua renda não se aplica aos requisitos minimos solicitados pelo inss"); 
  
    
    
  }if (renda > 1100.01 && renda < 2203.48) {
    double salario_novo = (renda - 1100.01) * 0.09;
    salario_novo = salario_novo + faixa1;

    print("sera retirado do seu salario um valor de $salario_novo");
  }if (renda > 2203.49 && renda < 3305.22){
    double salario_novo = (renda - 2203.49)* 0.12;
    salario_novo = salario_novo + faixa1 + faixa2;
    print("sera retirado do seu salario um valor de $salario_novo");
  }if (renda > 3305.23 && renda < 6433.57){
    double salario_novo = (renda - 3305.23) * 0.14;
    salario_novo = salario_novo + faixa1 + faixa2 + faixa3;
    print("sera retirado do seu salario um valor de $salario_novo");
  }if (renda>6433.57){
    print("sera retirado do seu salario um valor de $tot_recolher");
  }
  }
    