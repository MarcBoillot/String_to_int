void setup (){
float prixUnitaire = 1.21;
int qte = 5;
float taxe = 10;
println("Le prix total est de : " + nf(calculPrix(prixUnitaire, 3 ,0), 0,2)+" pour "+"3"+" articles a "+prixUnitaire+" euros avec "+"0"+" % "+" de taxe -> attendu 3.63$");
println("Le prix total est de : " + nf(calculPrix(prixUnitaire, 3 ,5),0,2)+" pour "+"3"+" articles a "+prixUnitaire+" euros avec "+"5"+" % "+" de taxe -> attendu 3.81$");
println("Le prix total est de : " + nf(calculPrix(prixUnitaire, 3 ,20),0,2)+" pour "+"3"+" articles a "+prixUnitaire+" euros avec "+"20"+" % "+" de taxe -> attendu 4.36$");
println("Le prix total est de : " + nf(calculPrix(345,qte ,taxe), 0,2)+" pour "+"5"+" articles a "+"345"+" euros avec "+"10"+" % "+" de taxe -> attendu 1840.58$");
println("Le prix total est de : " + nf(calculPrix(1299,qte ,taxe),0,2)+" pour "+qte+" articles a "+prixUnitaire+" euros avec "+taxe+" % "+" de taxe -> attendu 6787.28$");
}
float calculPrix(float prixUnitaire , int qte , float taxe){
 float prixHT = prixUnitaire * qte;
 float reduction = 0;
 float prixTTC = (prixHT - reduction) + taxe;
 taxe = taxe/100;
    
 if(prixHT >= 5000 ){
     reduction = 5;
     prixHT = prixHT - ((prixHT)*reduction/100);
  }else if(prixHT >= 1000){
    reduction = 3;
    prixHT = prixHT - ((prixHT)*reduction/100);
  }
 prixTTC = prixHT + (prixHT*taxe);
 return prixTTC;
}
