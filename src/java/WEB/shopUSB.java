package WEB;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static jdk.nashorn.internal.objects.NativeMath.round;

public class shopUSB extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        ArrayList<String[]> cart = (ArrayList) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<String[]>();
        }

        String no = req.getParameter("drop");
        int items = Integer.parseInt(no);

        int total = items * 800;

        String totS = total + ".00";
        String added[] = {"", "", ""};
        added[0] = "USB 2.0";
        added[1] = no;
        added[2] = totS;
        cart.add(added);

        session.setAttribute("cart", cart);
        String sFinal = "";
        double sum = 0;
        for (String[] s : cart) {
            sFinal += "<tr><td>";
            sFinal += s[0];
            sFinal += "</td><td>";
            sFinal += s[1];
            sFinal += "</td><td>";
            sFinal += s[2];
            double d = Double.parseDouble(s[2]);
            sum += d;
            sFinal += "</td></tr>";
        }
        round(sum, 2);
        String totStr = sum + "0";
        out.print("<html>\n"
                + "    <head>\n"
                + "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                + "        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n"
                + "        <title>Alligenz hardware</title>\n"
                + "<style>\n"
                + "            body,head{\n"
                + "                margin: 0;\n"
                + "                padding: 0;\n"
                + "            } \n"
                + "            body{\n"
                + "                padding: 20px;\n"
                + "\n"
                + "            }\n"
                + "            #div1{\n"
                + "                padding: 5px;\n"
                + "            }\n"
                + "            .glyphicon-shopping-cart {\n"
                + "                font-size: 50px;\n"
                + "            }\n"
                + "\n"
                + "\n"
                + "        </style>"
                + "    </head>\n"
                + "    <body>\n"
                + "        \n"
                + "<div class=\"row\" id=\"div1\">\n"
                + "                <div class=\"col-md-5\"></div>\n"
                + "                <div class=\"col-md-6\">\n"
                + "                    <h1>Alliganz Hardware <small>USB 2.0</small></h1>\n"
                + "                </div>\n"
                + "                <div class=\"col-md-1\"></div>\n"
                + "            </div>"
                + "        <div class=\"row\">\n <div class=\"col-md-3\" id=\"imgB\">\n"
                + "                    <br>\n"
                + "                    <img src=\"logo.jpg\" alt=\"...\" class=\"img-thumbnail\">\n"
                + "\n"
                + "<h2>Total <span class=\"label label-default\">"
                + totStr
                + "</span></h2>"
                + "<a href=\"index.jsp\" class=\"btn btn-info btn-lg\">\n"
                + "                        <span class=\"glyphicon glyphicon-home\"></span> \n"
                + "                    </a>"
                + "                </div>\n"
                + "\n"
                + "                <div class=\"col-md-8\">\n"
                + "                    <br>"
                + "            <table class=\"table table-condensed\">\n"
                + "                <thead>\n"
                + "                    <tr>\n"
                + "                        <th>Item Name</th>\n"
                + "                        <th>No: of Items</th>\n"
                + "                        <th>Total</th>\n"
                + "                    </tr>\n"
                + "                </thead>\n"
                + "                <tbody>\n"
                + sFinal
                + "                    \n"
                + "                </tbody>\n"
                + "            </table>\n"
                + "        </div>\n<div>\n"
                + "        </div>"
                + "\n"
                + "    </body>\n"
                + "</html>");
    }

}
