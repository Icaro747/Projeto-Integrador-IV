package br.com.process.iniciador;

import br.com.process.DAO.ProdutoDAO;
import br.com.process.entidade.Produto;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    
    @RequestMapping("/index")
    public String index(Model model){
        try {
            model.addAttribute("lista", ProdutoDAO.getEstoque());
        } catch (Exception e) {
        }
        return "index";
    }
    
    @RequestMapping("/login")
    public String login(){
        return "Logi";
    }
    
    @RequestMapping("/ADDProduto")
    public String cadatro(){
        return "CadatroProduto";
    }
    
    @RequestMapping("/cadatro")
    public String AddProduto(Model model, Produto produto){
        
        try {
            if (ProdutoDAO.Adicionar(produto)) {
                model.addAttribute("SMG", "O Produto "+produto.getNome()+" foi cadastrado com sucesso");
            } else {
                model.addAttribute("SMG", "Falha ao Cadastrar produto");
            }
        } catch (Exception e) {
            model.addAttribute("SMG", e);
        }
        return "SMG";
    }
    
    @RequestMapping("/SMG")
    public String SMG(){
        return "SMG";
    }
    
    
}
