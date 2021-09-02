package br.com.process.iniciador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Icaro
 */
@Controller
public class IniciadorController {
    
    /**
     * Quando o cliente acessar o endereço "/newman" será redirecionado para home 
     * @return home.jsp
     */
    @RequestMapping("/newman")
    public String iniciando(){
        return "home";
    }
}
