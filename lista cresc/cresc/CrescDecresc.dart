void main() {
var lista2 = [];
var lista3 = [];
var maior = 0;
var lista =   [10000,1,10,3,12];
for(int numero = 0; numero < lista.length; numero ++){
  if(numero == lista[0]){
    maior = lista[numero];
  }else{
    if (lista[numero] > maior){
      maior = lista[numero];
      
    }
    
  }
}
print(maior);
 

for(int numero2 = 0; numero2 <= maior; numero2 = numero2 + 1){
  for(int numero3 = 0; numero3 < lista.length; numero3 = numero3 + 1){
    if (numero2 == lista[numero3]){
      lista2.add(numero2);
      
      
    }
  }
  
}
print(lista2);
for(int numero2 = maior; numero2 > 0; numero2 = numero2 -1){
  for(int numero3 = 0; numero3 < lista.length; numero3= numero3 +1){
    if (numero2== lista[numero3]){
      lista3.add(numero2);
      

    }
  }   
}   
 print(lista3);
}