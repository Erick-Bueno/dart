
void main(){
  print("PROGAMA SENDO INICIADO......");
  print("CALCULANDO NOSSO HOLERITE");
  
  print("Informe sua renda:");              //declarando o valor de renda
  
  double renda = 0.0;                         
  
  tabela();     //chamando funcao tabela      
  
  double base = renda;                            //Base recebe renda
                              
  double valorIR = 0.0;                           //declarando variaveis
  int controle = 1;
  double valorfaixa = 0.0;
  double aliquota = 0.0;
  
  
  
  
  
  
  while( controle<5 ){                             //primeira faixa
    if (controle == 1){
      valorfaixa = 1903.98;
      aliquota = 0.0;
      if (base < 1903.98){                    //verifica se base e menor que o valor da faixa 1
        valorIR = base * (0.0/100);
      }else {
        base = base - valorfaixa;
        valorIR = valorIR  + valorfaixa * (aliquota/100);
        controle = controle + 1;
      }
      
    } 
    
                                                 
    
  }
  print( "terminei" );
  print("valor IR: $valorIR");
}




  
  
  

  


  void  tabela(){
  print("            TABELA IRPF 2021             ");     
  print(" FAIXA // INICIO  // FINAL    // ALÍQUOTA");
  print(" 1º    // 0,000,00 // 1903,98 // 0.0%    ");
  print(" 2º    // 1,983,99 // 2826,65 // 7.5%    ");
  print(" 3º    // 2,826,66 // 3751,05 // 15.0%   ");
  print(" 4º    // 3,751,06 // 4674,78 // 22.5%   ");
  print(" 5º    // 4,674,79 // ------- // 27.5%   ");
 
  
}
