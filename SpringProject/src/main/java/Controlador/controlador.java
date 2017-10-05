/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import MapeoBD.Keylle;
import MapeoBD.Llegaron;

import MapeoBD.Preorder;
import Modelo.PreDAOImpl;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Marco
 */
@Controller
public class controlador {
    
    @Autowired
    private PreDAOImpl pre_bd;
    
    @RequestMapping(value = "/", method=RequestMethod.GET)
public ModelAndView prueba(ModelMap model, HttpServletRequest a){
    List<Preorder> b = pre_bd.getPre();
    
    List<Llegaron> c =  pre_bd.getLle();
    model.addAttribute("pres", b);
     model.addAttribute("lles", c);
    return new ModelAndView("index", model);
}

 @RequestMapping(value = "/registro", method=RequestMethod.GET)
public String registro(ModelMap model, HttpServletRequest a){
   
    return "redirect:/registro_user";
}


@RequestMapping(value = "/cregistro", method=RequestMethod.POST)
public ModelAndView cregistro(ModelMap model, HttpServletRequest request){
    
    
    
    if(request.getParameter("cuenta").isEmpty()){
        if(request.getParameter("correo").isEmpty()){
            Llegaron b =null;
            String cobol = request.getParameter("nombre");
            String name ="";
            String last ="";
            for(int i = 0; i< cobol.length();i++){
                if(cobol.charAt(i) == '|'){
                    last = cobol.substring(i+1);
                    break;
                }
                name = name + cobol.charAt(i);
            }
            if(pre_bd.porNombreL(name, last).size()==0){
                b=null;
            }else{
                b = pre_bd.porNombreL(name, last).get(0);
            }
            if(b==null){
                Preorder a = pre_bd.porNombre(name, last).get(0);
                model.addAttribute("objeto",a);
            }else{
                model.addAttribute("objeto",b);
            }
            return new ModelAndView("registro", model);
        }
        Llegaron b = null;
       
        if(pre_bd.porCorreoL(request.getParameter("correo")).size() == 0){
        b=null;
        }else{
             b = pre_bd.porCorreoL(request.getParameter("correo")).get(0);
                     
        }
        if(b == null){
            Preorder a = pre_bd.porCorreo(request.getParameter("correo")).get(0);
            model.addAttribute("objeto", a);
        }else{
        model.addAttribute("objeto", b);
        }
        
        
        
        
    }else{
        Llegaron b = null;
        if(pre_bd.consultaLle(Long.parseLong(request.getParameter("cuenta"))).size() ==0){
            b = null;
        }else{
        b = pre_bd.consultaLle(Long.parseLong(request.getParameter("cuenta"))).get(0);
        }
       if(b == null){
            Preorder a = pre_bd.consultaPre(Long.parseLong(request.getParameter("cuenta"))).get(0);
            model.addAttribute("objeto", a);
            }else{
       model.addAttribute("objeto", b);
    }
    
}
    return new ModelAndView("registro", model);
}


@RequestMapping(value = "/registro_user", method=RequestMethod.GET)
public ModelAndView registro_user(ModelMap model, HttpServletRequest a){
    Llegaron b = new Llegaron();
   long f = b.cuantos;
   model.addAttribute("numero",f);
    return new ModelAndView("registro2",model);
}

@RequestMapping(value = "/registratt", method=RequestMethod.POST)
public String registrar(ModelMap model, HttpServletRequest request){
   Llegaron p = new Llegaron();
  
   p.setOrderr(p.cuantos ++);
   p.setOrderdate((request.getParameter("orderd")));
   p.setNombre(request.getParameter("nombre"));
   p.setApellido(request.getParameter("apellido"));
   p.setEmail(request.getParameter("email"));
   p.setPuesto(request.getParameter("puesto"));
   p.setEmpresa(request.getParameter("empresa"));
   p.setDomicilio(request.getParameter("domicilio"));
   p.setColonia(request.getParameter("colonia"));
   p.setDelegacion(request.getParameter("delegacion"));
   p.setCiudad(request.getParameter("ciudad"));
   p.setWorksizp(request.getParameter("work"));
   p.setPais(request.getParameter("pais"));
   p.setTelefono(request.getParameter("telefono"));
   p.setDisc(request.getParameter("disc"));
   
   
   
   pre_bd.crearPre(p);
   
    return "redirect:/";
}


@RequestMapping(value = "/registrarEdi", method=RequestMethod.POST)
public String registrarEdit(ModelMap model, HttpServletRequest request){
   Llegaron p = new Llegaron();
   p.setOrderr(Long.parseLong(request.getParameter("id")));
   p.setOrderdate((request.getParameter("orderd")));
   p.setNombre(request.getParameter("nombre"));
   p.setApellido(request.getParameter("apellido"));
   
   p.setPuesto(request.getParameter("puesto"));
   p.setEmpresa(request.getParameter("empresa"));
   p.setDomicilio(request.getParameter("domicilio"));
   p.setColonia(request.getParameter("colonia"));
   p.setDelegacion(request.getParameter("delegacion"));
   p.setCiudad(request.getParameter("ciudad"));
   p.setWorksizp(request.getParameter("work"));
   p.setPais(request.getParameter("pais"));
   p.setTelefono(request.getParameter("telefono"));
   p.setDisc(request.getParameter("disc"));
   p.setEmail(request.getParameter("email"));
   
   
   
   pre_bd.crearPre(p);
   pre_bd.editarPre(p);
   
    return "redirect:/";
}


@RequestMapping(value = "/buscar", method=RequestMethod.GET)
public ModelAndView buscar(ModelMap model, HttpServletRequest a){
    List<Llegaron> c = pre_bd.getLle();
    List<Preorder> b = pre_bd.getPre();
    int k = b.size();
    int j = c.size();
    model.addAttribute("llega", c);
    model.addAttribute("numero", j);
    return new ModelAndView("buscar", model);
}

    
}
