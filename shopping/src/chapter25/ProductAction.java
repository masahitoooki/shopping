package chapter25;

import bean.Product1;
import DAO.Product1DAO;
import tool.Action;
import javax.servlet.http.*;
import java.util.List;

public class ProductAction extends Action {
	public String execute(
		HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		String keyword=request.getParameter("keyword");
		if (keyword == null) keyword="";

		Product1DAO dao=new Product1DAO();
		List<Product1> list = dao.search(keyword);

		session.setAttribute("list", list);

		return "product.jsp";
	}
}
