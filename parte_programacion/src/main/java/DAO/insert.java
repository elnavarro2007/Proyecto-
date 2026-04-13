package DAO;

import Modelo.Cliente;

public class insert {
    public static void main(String[] args) {
        System.out.printf("introduciendo cliente");

        Cliente cliente = new Cliente("12345678A","Maestro","Guille","h@gmail.com",123456789);

        System.out.print(cliente);
    }
}
