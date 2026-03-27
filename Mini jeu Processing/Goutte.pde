class Goutte {

  //attributs
  float x; // Position horizontale
  float y; // Position verticale
  float vitesse; // Vitesse de chute

  // Constructeur par défaut
  Goutte() {
    x = random(width);
    y = random(500, 50);
    vitesse = random(1, 3);
  }


  //méthodes

  void tomber() {     // Méthode pour mettre à jour la position de la goutte
    y += vitesse; // Déplacement vers le bas
    if (y > height) {       // Si la goutte atteint le bas de l'écran, réinitialiser sa position
      y = random(-200, -100); // Position verticale aléatoire (en haut de l'écran)
      x = random(width); // Nouvelle position horizontale aléatoire
    }
  }

  void afficher() {    // Méthode pour afficher la goutte
    stroke(138, 184, 209); // Couleur de la goutte
    line(x, y, x, y+10); // Dessiner la goutte
  }
}
