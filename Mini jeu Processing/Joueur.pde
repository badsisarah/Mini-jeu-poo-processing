class Joueur {

  //attributs
  int joueurX, joueurY; //positin du joueur
  color couleur;  //couleur de joueur

  //constructeur par défaut
  Joueur() {
    joueurX = 50;
    joueurY = height - 100;
    couleur = color(255, 125, 25);
  }

  // constructeur avec argument
  Joueur(int joueurX, int joueurY, color couleur) {
    this.joueurX=joueurX;
    this.joueurY=joueurY;
    this.couleur=couleur;
  }

  //méthodes

  void DessinerJoueur() {
    fill(couleur);
    rect(joueurX, joueurY, 10, 20); // Bras gauche
    rect(joueurX + 10, joueurY, 10, 20); // Bras droit
    ellipse(joueurX + 5, joueurY - 30, 25, 25); // Tête
    rect(joueurX + 2, joueurY + 10, 6, 15); // Corps
    rect(joueurX + 2, joueurY + 25, 6, 15); // Jambes
    fill(0);
    textSize(12);
    text("Joueur ", joueurX - 10, joueurY + 40); // Affichage  du joueur
  }
}
