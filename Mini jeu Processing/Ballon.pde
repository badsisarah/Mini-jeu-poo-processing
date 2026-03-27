class Ballon {

  //attributs
  float ballonX, ballonY; // Position du ballon
  Score score; // Référence à l'objet Score

  //constructeur par défaut
  Ballon(Score score) {
    this.score = score;
    ballonX = width / 2;
    ballonY = height / 2;
  }

  //méthodes

  void DessinerBallon() {
    // Dessiner le ballon
    fill(255, 255, 0); // Couleur jaune pour le ballon
    ellipse(ballonX, ballonY, 30, 30); // Dessiner le ballon
  }

  void DistanceBallon() {
    // Verifier si le ballon est dans le panier droit
    if (dist(ballonX, ballonY, 50, height/2)<40) {
      score.incrementerScoreJoueur1(); // Appeler la méthode pour incrémenter le score du joueur 1
      ballonX = width / 2; // Réinitialiser la position du ballon
      ballonY = height / 2;
    }
    // Verifier si le ballon est dans le panier gauche
    if (dist(ballonX, ballonY, width-50, height/2)<40) {
      score.incrementerScoreJoueur2(); // Appeler la méthode pour incrémenter le score du joueur 1
      ballonX = width / 2; // Réinitialiser la position du ballon
      ballonY = height / 2;
    }
  }

  void deplacer(float nouveauX, float nouveauY) {

    // Mettre à jour la position du ballon avec la position de la souris
    ballonX = nouveauX;
    ballonY = nouveauY;
  }
}
