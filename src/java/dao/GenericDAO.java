/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author Byron
 */
public class GenericDAO {
    
    
    public String login(String username, String pass){
        String respuesta;
        if (username.equals("byron") && pass.equals("123456")){
            respuesta = "Bienvenido";
        }else{
            respuesta = "Usuario no Encontrado";
        }
        return respuesta;
    }
    
}
