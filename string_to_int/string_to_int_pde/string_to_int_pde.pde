void setup (){

  String expression = "-2,1";
  
  println("Valeur attendu 6"+" ->La valeur recu : "+calculate(expression));
}

int calculate(String expression){
  int somme = 0;
  String[] tab = splitTokens(expression,"/{%}{},\n");
  int i = 0;
  
    for(i = 0; i < tab.length; i++){
      if(expression == ""){
       somme = 0;
      }else if(Integer.parseInt(tab[i]) > 1000){
       tab[i]= "0";
       somme += Integer.parseInt(tab[i]);
      }else if(Integer.parseInt(tab[i]) < 0){
       println("erreur negative not allowed : "+tab[i]);
      }else if(Integer.parseInt(tab[i]) > 0){
       somme += Integer.parseInt(tab[i]);
      }
    }
  return somme;
}
