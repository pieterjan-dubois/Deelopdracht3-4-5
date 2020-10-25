package ui.controller;

import domain.db.ProductDB;
import domain.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    ProductDB prodlijst = new ProductDB();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        String command = "home";
        if(request.getParameter("command") != null){
            command = request.getParameter("command");
        }
        String destination;
        switch(command){
            case "home":
                destination = getHome(request,response);
                break;
            case "winkel":
                destination = getWinkel(request, response);
                break;
            case "bestelling":
                destination = getBestelling(request, response);
                break;
            case "add":
                destination = getAdd(request, response);
                break;
            case "vindproduct":
                destination = getVindProduct(request, response);
                break;
            case "find":
                destination = getFind(request, response);
                break;
            case "delete":
                destination = getDelete(request, response);
                break;
            case "deleteconfirm":
                destination = "deleteconfirmation.jsp";
                break;
            default:
                destination = getHome(request,response);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String getDelete(HttpServletRequest request, HttpServletResponse response) {
        String naam = request.getParameter("naam");
        prodlijst.verwijder(naam);
        return getBestelling(request, response);
    }

    private String getFind(HttpServletRequest request, HttpServletResponse response) {
            String naam = request.getParameter("naam");
            if(naam == null){
                return "nietgevonden.jsp";
            }else {
                Product product = prodlijst.vindProduct(naam);
                if(product == null){
                    return "nietgevonden.jsp";
                }else{
                    request.setAttribute("product", product);
                    return "gevonden.jsp";
                }
            }
    }

    private String getVindProduct(HttpServletRequest request, HttpServletResponse response) {
        return "vindproduct.jsp";
    }

    private String getAdd(HttpServletRequest request, HttpServletResponse response) {
        String naam = request.getParameter("productnaam");
        String hoeveelheidFromParameter = request.getParameter("hoeveelheid");
        double hoeveelheidKilo = Integer.parseInt(hoeveelheidFromParameter);
        String prijsaanbodFromParameter = request.getParameter("prijsaanbod");
        double prijsAanbieding = Integer.parseInt(prijsaanbodFromParameter);

        if(naam.trim().isEmpty() || hoeveelheidFromParameter.trim().isEmpty() || prijsaanbodFromParameter.trim().isEmpty()){
            String error = "U moet all velden ingeven";
            request.setAttribute("error", error);
            return "winkel.jsp";
        } else {
            Product product = new Product(naam, hoeveelheidKilo,prijsAanbieding);
            prodlijst.voegToe(product);
            request.setAttribute("producten", prodlijst.getProducten());

            String totaalGewicht = "" + prodlijst.totaalGewicht();
            request.setAttribute("totaalGewicht", totaalGewicht);
            String totaalProducten = "" + prodlijst.berekenTotaalProducten();
            request.setAttribute("totaalProducten", totaalProducten);
            String totaalPrijs = "" + prodlijst.totaalPrijs();
            request.setAttribute("totaalPrijs", totaalPrijs);

            return "mijnbestelling.jsp";
        }

    }

    private String getBestelling(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("producten", prodlijst.getProducten());
        String totaalGewicht = "" + prodlijst.totaalGewicht();
        request.setAttribute("totaalGewicht", totaalGewicht);
        String totaalProducten = "" + prodlijst.berekenTotaalProducten();
        request.setAttribute("totaalProducten", totaalProducten);
        String totaalPrijs = "" + prodlijst.totaalPrijs();
        request.setAttribute("totaalPrijs", totaalPrijs);


        return "mijnbestelling.jsp";
    }

    private String getWinkel(HttpServletRequest request, HttpServletResponse response) {
        return "winkel.jsp";
    }

    private String getHome(HttpServletRequest request, HttpServletResponse response) {
        return "index.jsp";

    }


}


