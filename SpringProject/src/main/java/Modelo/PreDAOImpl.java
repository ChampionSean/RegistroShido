/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import MapeoBD.Keylle;
import MapeoBD.Keypre;
import MapeoBD.Llegaron;

import MapeoBD.Preorder;
import java.util.LinkedList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Marco
 */
public class PreDAOImpl {
    private SessionFactory sessionFactory;
    
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public List<Preorder> getPre(){
         Session session = sessionFactory.openSession();
        Transaction tx = null;
        List<Preorder> lista = new LinkedList<>();
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("from Preorder");
            lista = query.list();
        }catch(Exception e){
            e.printStackTrace(); 
        }finally{
            session.close();
        }
        return lista;   
     }
    
    
    public List<Llegaron> getLle(){
         Session session = sessionFactory.openSession();
        Transaction tx = null;
        List<Llegaron> lista = new LinkedList<>();
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("from Llegaron");
            lista = query.list();
        }catch(Exception e){
            e.printStackTrace(); 
        }finally{
            session.close();
        }
        return lista;   
     }
    
    
     public void crearPre(Llegaron pre){
      Session session = sessionFactory.openSession();
        Transaction tx = null;
        Llegaron p = pre;
        try {
            
           tx = session.beginTransaction();
            session.save(p);
             
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
}
     
     
     public void editarPre(Llegaron pre){
      Session session = sessionFactory.openSession();
        Transaction tx = null;
        Llegaron p = pre;
        try {
           tx = session.beginTransaction();
           
               session.update(p);
           
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
}
     
     
     public List<Preorder> porCorreo(String correo){
         Session session = sessionFactory.openSession();
        Transaction tx = null;
        List<Preorder> lista = new LinkedList<>();
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("from Preorder where email = :var");
            query.setParameter("var",correo);
            lista = query.list();
        }catch(Exception e){
            e.printStackTrace(); 
        }finally{
            session.close();
        }
        return lista;   
     }
     
     
     public List<Preorder> porNombre(String nombre, String apellido){
         Session session = sessionFactory.openSession();
        Transaction tx = null;
        List<Preorder> lista = new LinkedList<>();
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("from Preorder where nombre = :var and apellido = :vvv");
            query.setParameter("var",nombre);
            query.setParameter("vvv",apellido);
            lista = query.list();
        }catch(Exception e){
            e.printStackTrace(); 
        }finally{
            session.close();
        }
        return lista;   
     }
     
      public List<Llegaron> porNombreL(String nombre, String apellido){
         Session session = sessionFactory.openSession();
        Transaction tx = null;
        List<Llegaron> lista = new LinkedList<>();
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("from Llegaron where nombre = :var and apellido = :vvv");
            query.setParameter("var", nombre);
            query.setParameter("vvv",apellido);
            lista = query.list();
        }catch(Exception e){
            e.printStackTrace(); 
        }finally{
            session.close();
        }
        return lista;   
     }
     
     public List<Llegaron> porCorreoL(String correo){
         Session session = sessionFactory.openSession();
        Transaction tx = null;
        List<Llegaron> lista = new LinkedList<>();
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("from Llegaron where email = :var");
            query.setParameter("var",correo);
            lista = query.list();
        }catch(Exception e){
            e.printStackTrace(); 
        }finally{
            session.close();
        }
        return lista;   
     }
     
    public List<Preorder> consultaPre(Long id){
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        List<Preorder> lista = new LinkedList<>();
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("from Preorder where orderr = :var");
            query.setParameter("var",id);
            lista = query.list();
        }catch(Exception e){
            e.printStackTrace(); 
        }finally{
            session.close();
        }
        return lista;   
    }
    
    public List<Llegaron> consultaLle(Long id){
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        List<Llegaron> lista = new LinkedList<>();
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("from Llegaron where orderr = :var");
            query.setParameter("var", id);
            lista = query.list();
        }catch(Exception e){
            e.printStackTrace(); 
        }finally{
            session.close();
        }
        return lista;   
    }
    
    
}
