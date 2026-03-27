Terrain terrain; // Déclaration d'un objet de la classe Terrain

Ballon ballon; // Déclaration d'un objet de la classe Ballon

Score score; // Déclaration d'un objet de la classe Score

Joueur[] joueurs = new Joueur[2]; // Déclaration d'un tableau de joueurs

Goutte[] gouttes = new Goutte[250]; // Déclaration d'un tableau de gouttes

void setup() {

  size(1000, 500);
  joueurs[0] = new Joueur(); // Initialisation du premier joueur avec le constructeur par défaut
  joueurs[1] = new Joueur(width-60, height-100, color(255, 0, 255)); // Initialisation du deuxième joueur par le constructeur avec argument
  terrain = new Terrain(); // Initialisation de l'objet de Terrain
  // Initialiser chaque goutte dans le tableau
  for (int i = 0; i < gouttes.length; i++) {
    gouttes[i] = new Goutte();
  }
  score = new Score(); // Initialisation de l'objet de Score
  ballon = new Ballon(score); // Initialisation de l'objet de Ballon avec une référence à l'objet de Score
}

void draw() {
  background(100);
  terrain.DessinerTerrain(); // Appel de la méthode DessinerTerrain pour afficher le terrain
  ballon.DessinerBallon(); // Appel de la méthode DessinerBallon  pour afficher le ballon
  ballon.DistanceBallon(); // Appel de la méthode DistanceBallon pour calculer la distance du ballon
  joueurs[0].DessinerJoueur(); // Appel de la méthode DessinerJoueur du premier joueur pour l'afficher
  joueurs[1].DessinerJoueur(); // Appel de la méthode DessinerJoueur du deuxième joueur pour l'afficher
  score.CalculerScore(); //  Appel de la méthode CalculerScore()

  // Mettre à jour et afficher chaque goutte
  for (int i = 0; i < gouttes.length; i++) {
    gouttes[i].tomber(); // Mettre à jour la position de la goutte
    gouttes[i].afficher(); // Afficher la goutte
  }
}

void mousePressed() {
  // Mettre à jour la position du ballon avec la position de la souris lorsqu'un clic de souris est détecté
  ballon.deplacer(mouseX, mouseY);
}

void keyPressed() {
  // Contrôles du joueur 1
  if (key == 'h') {
    joueurs[0].joueurY -= 10; // Déplacer vers le haut
  } else if (key == 'b') {
    joueurs[0].joueurY += 10; // Déplacer vers le bas
  } else if (key == 'g') {
    joueurs[0].joueurX -= 10; // Déplacer vers la gauche
  } else if (key == 'd') {
    joueurs[0].joueurX += 10; // Déplacer vers la droite
  }

  // Contrôles du joueur 2
  if (keyCode == UP) {
    joueurs[1].joueurY -= 10; // Déplacer vers le haut
  } else if (keyCode == DOWN) {
    joueurs[1].joueurY += 10; // Déplacer vers le bas
  } else if (keyCode == LEFT) {
    joueurs[1].joueurX -= 10; // Déplacer vers la gauche
  } else if (keyCode == RIGHT) {
    joueurs[1].joueurX += 10; // Déplacer vers la droite
  }
}
