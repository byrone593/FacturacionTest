/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import dao.GenericDAO;

/**
 *
 * @author Byron
 */
public class Usuario {
    
    private int id;
    private String nombre;
    private String username;
    private String password;
    private String role;
    
    private GenericDAO gDAO;
    
    public Usuario(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    /*METODO*/
    public String login(String usuario, String pass){
        gDAO = new GenericDAO();
        return gDAO.login(username, pass);
    }
    
}
