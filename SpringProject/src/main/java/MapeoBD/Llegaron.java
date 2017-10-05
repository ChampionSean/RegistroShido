/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MapeoBD;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

/**
 *
 * @author Marco
 */
@Entity
@Table(name="llegaron")
@IdClass(Keylle.class)
public class Llegaron implements Serializable{
   
    public static long cuantos = 400;
    
    @Id
    public long orderr;
    
     @Id
     public String email;
    
    @Column(name = "orderdate")
    private String orderdate;

    public long getOrderr() {
        return orderr;
    }

    public void setOrderr(long orderr) {
        this.orderr = orderr;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    @Column(name = "nombre")
    private String nombre;
    
    @Column(name = "apellido")
    private String apellido;
    
  
    
    @Column(name = "puesto")
    private String puesto;
    
    @Column(name = "empresa")
    private String empresa;
    
    @Column(name = "domicilio")
    private String domicilio;
    
    @Column(name = "colonia")
    private String colonia;
    
    @Column(name = "delegacion")
    private String delegacion;
    
    @Column(name = "ciudad")
    private String ciudad;
    
    @Column(name = "workzip")
    private String worksizp;
    
    @Column(name = "pais")
    private String pais;
    
    @Column(name = "telefono")
    private String telefono;
    
    @Column(name = "disc")
    private String disc;
    
     
    

    public Llegaron(){
        
    }
    
   

  

   

    public String getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

  

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getDelegacion() {
        return delegacion;
    }

    public void setDelegacion(String delegacion) {
        this.delegacion = delegacion;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getWorksizp() {
        return worksizp;
    }

    public void setWorksizp(String worksizp) {
        this.worksizp = worksizp;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    

    public String getDisc() {
        return disc;
    }

    public void setDisc(String disc) {
        this.disc = disc;
    }
    
    
}
