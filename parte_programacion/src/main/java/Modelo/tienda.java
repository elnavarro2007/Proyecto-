package Modelo;

public class tienda {
    int id;
    int stock;
    int telefono;
    String ubicacion;
    String nombreTienda;

    //Constructores


    public tienda() {
    }

    public tienda(int id, int stock, int telefono, String ubicacion, String nombreTienda) {
        this.id = id;
        this.stock = stock;
        this.telefono = telefono;
        this.ubicacion = ubicacion;
        this.nombreTienda = nombreTienda;
    }

    // Getter and setter


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getNombreTienda() {
        return nombreTienda;
    }

    public void setNombreTienda(String nombreTienda) {
        this.nombreTienda = nombreTienda;
    }

    //Tostring

    @Override
    public String toString() {
        return "tienda{" +
                "id=" + id +
                ", stock=" + stock +
                ", telefono=" + telefono +
                ", ubicacion='" + ubicacion + '\'' +
                ", nombreTienda='" + nombreTienda + '\'' +
                '}';
    }
}
