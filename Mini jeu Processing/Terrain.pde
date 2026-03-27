class Terrain {

  //attributs
  float x, y ; // Possition du terrain
  float panierGX, panierGY;  // position du panier gauche
  float panierDX, panierDY;  //position du panier droit

  //constructeur par défaut
  Terrain() {
    x=width-100;
    y=height-100;
    panierGX=50;
    panierGY=height/2;
    panierDX=width-50 ;
    panierDY=height/2;
  }

  //méthodes

  void DessinerTerrain() {
    // Dessiner le terrain
    fill(0, 128, 0); // Remplir le rectangle avec une couleur verte foncée
    rect(50, 50, x, y); // Dessiner le rectangle représentant le terrain
    // Dessiner les lignes du terrain
    stroke(255);
    strokeWeight(2);
    line(width/2, 50, width/2, height-50); // Ligne verticale au milieu
    line(50, height/2, width-50, height/2); // Ligne horizontale au milieu
    line(50, 150, width-50, 150); // Ligne horizontale en haut
    line(50, height-150, width-50, height-150); // Ligne horizontale en bas
    // dessiner les deux paniers
    fill(255);
    ellipse(panierGX, panierGY, 80, 80); // Cercle du panier de gauche
    ellipse(panierDX, panierDY, 80, 80); // Cercle du panier de droite
  }
}
