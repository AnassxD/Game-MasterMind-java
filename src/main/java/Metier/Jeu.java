package Metier;

public class Jeu {
    private int nombreSecret;

    public void genererNombre() {
        nombreSecret = (int) (Math.random() * 1000);
    }

    public String jouer(int nombrePropose) {
        if (nombrePropose == nombreSecret) {
            return "Bravo!! vous avez réussi";
        } else {
            if (nombrePropose > nombreSecret) {
                return "Entrer un nombre plus petit que " + nombrePropose;
            } else {
                return "Entrer un nombre plus grand que " + nombrePropose;
            }
        }
    }
}
