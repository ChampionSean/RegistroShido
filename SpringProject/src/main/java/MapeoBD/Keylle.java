/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MapeoBD;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author Marco
 */
@Embeddable
public class Keylle implements Serializable{
    
  private static final long serialVersionUID = 1L;
    
    @Column(name = "orderr")
     public long orderr;
     
     @Column(name = "email")
     public String email;

     public Keylle(){
         
     }
     
     public Keylle(Long id, String correo){
         this.orderr = id;
         this.email = correo;
     }
     
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
    
     @Override
    public boolean equals(Object o){
        Keypre p = (Keypre) o;
        if((this.orderr == p.getOrderr()) && this.email.equals(p.getEmail())){
            return true;
        }else{
            return false;
        }
       
    }
    
    @Override
    public int hashCode(){
       String g = this.getEmail() + String.valueOf(this.getOrderr());
       return g.hashCode();
    }
     
     
     
     
}
