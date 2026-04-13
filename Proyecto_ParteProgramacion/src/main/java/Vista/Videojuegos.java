package Vista;

public class Videojuegos {
    String numSerie;
    String nombre;
    String genero;

    //Constructores


    public Videojuegos() {
    }

    public Videojuegos(String numSerie, String nombre, String genero) {
        this.numSerie = numSerie;
        this.nombre = nombre;
        this.genero = genero;
    }

    // Getter y setters


    public String getNumSerie() {
        return numSerie;
    }

    public void setNumSerie(String numSerie) {
        this.numSerie = numSerie;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    // toString


    @Override
    public String toString() {
        return "Videojuegos{" +
                "numSerie='" + numSerie + '\'' +
                ", nombre='" + nombre + '\'' +
                ", genero='" + genero + '\'' +
                '}';
    }
}
