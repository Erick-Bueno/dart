import 'dart:io';

void main (){
  int c;
  int pergunta = 0;
  var ficha = [];
  while(pergunta != 3){
    print("1 - Cadastro");
    print("2 - Listagem");
    print("3 - Sair");
    print("escolha oque deseja fazer");
    int pergunta = int.parse(stdin.readLineSync()??"");
    if(pergunta == 2){
      print(" NOME                     IDADE                 TELEFONE ");
  
        for(c = 0; c < ficha.length;c=c+1){
        String nome = ficha[c][0];
        int idade = ficha[c][1];
        int telefone = ficha[c][2];
        print(" $nome         \t--         $idade    --\t        $telefone ");
      
      }
    }
    if(pergunta == 1){
       print("CADASTRO");
       print("digite o seu nome:");
       String nome = (stdin.readLineSync()??"");
       print("digite a sua idade:");
       int idade = int.parse(stdin.readLineSync()??"");
       print("digite o seu telefone:");
       int telefone = int.parse(stdin.readLineSync()??"");
       ficha.add([nome, idade, telefone]);
    }
    if(pergunta == 3){
      print("cadastro feito");
      break;
    }
       
  else{
    print("digite uma opção válida");
  }

}



}