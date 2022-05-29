import 'dart:io';

void main(){
  double metragem = 0.0;
  double metragem2 = 0.0;
  double metragemtot;
  print("qual a area da construção:");
  double area = double.parse(stdin.readLineSync()??"");
  print("quantas janelas são:");
  int janelas = int.parse(stdin.readLineSync()??"");
  if(janelas > 0){
    print("qual a metragem das janelas:");
    metragem = double.parse(stdin.readLineSync()??"");
  }
   print("são $janelas janelas com $metragem metros");
  print("quantas portas são:");
  int portas = int.parse(stdin.readLineSync()??"");
  if(portas > 0){
    print("qual a metragem das portas:");
     metragem2 = double.parse(stdin.readLineSync()??"");
  }
  print("são $portas portas com $metragem2 metros");
  metragemtot = area - ((janelas * metragem) + (portas * metragem2));
  print("a metragem total é de $metragemtot");
}