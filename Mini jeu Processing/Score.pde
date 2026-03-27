class Score {

  // attributs
  int scoreJoueur1 ; // Score du joueur 1
  int scoreJoueur2 ; // Score du joueur 2
  int tempsDeJeu ; // Temps en secondes
  int tempsRestant ; // Initialise le temps restant
  boolean jeuFini ; //Verifie si le jeu est finie ou pas

  // constructeur par defaut
  Score() {
    scoreJoueur1=0;
    scoreJoueur2=0;
    tempsDeJeu = 60;
    tempsRestant = tempsDeJeu;
    jeuFini = false;
  }


  //methodes

  void CalculerScore() {
    fill(255);
    textSize(20);
    text("Score Joueur 1: " + scoreJoueur1, width/4, 45);  // Afficher le score du joueur 1
    text("Score Joueur 2: " + scoreJoueur2, (width*3)/4, 45);  // Afficher le score du joueur 2

    if (tempsRestant > 0) {   // Verifier s'il reste encore du temps
      tempsRestant = tempsDeJeu - int((millis() / 1000));  // Calculer  le temps restant
      fill(255, 0, 0);  //  Couleur rouge pour le texte
      textSize(30);  // La taille du texte
      textAlign(CENTER);
      text("Temps restant: " + tempsRestant + " s", width/2, 80);  // Afficher le temps restant
    } else {
      jeuFini = true;  // Le jeu est fini
      noLoop();

      // Verifie les scores pour déterminer le gagnant ou s'il y a match nul
      if (scoreJoueur1 > scoreJoueur2) {
        text("Joueur 1 a gagné avec " + scoreJoueur1 + " points!", width/2, height/2);  // Afficher le message pour le joueur 1 gagnant
      } else if (scoreJoueur2 > scoreJoueur1) {
        text("Joueur 2 a gagné avec " + scoreJoueur2 + " points!", width/2, height/2);  // Afficher le message pour le joueur 2 gagnant
      } else {
        text("Match nul! Les deux joueurs ont le même score.", width/2, height/2);  // Afficher le message de match nul
      }
    }
  }
  void incrementerScoreJoueur1() {   // Méthode pour incrémenter le score du joueur 1
    scoreJoueur1++;
  }
  void incrementerScoreJoueur2() {   // Méthode pour incrémenter le score du joueur 2
    scoreJoueur2++;
  }
}
