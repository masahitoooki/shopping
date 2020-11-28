//package chapter25;
//
//import bean.Item;
//import bean.Product1;
//import tool.Action;
//import javax.servlet.http.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class DetailsAction extends Action {
//
//	@SuppressWarnings({ "unchecked"})
//	public String execute(
//		HttpServletRequest request, HttpServletResponse response
//	) throws Exception {
//
//		HttpSession session=request.getSession();
//		
//		@SuppressWarnings("unused")
//		
//		String details=request.getParameter("details");
//		
//		int id=Integer.parseInt(request.getParameter("id"));
//		
//		List<Item> cart=(List<Item>)session.getAttribute("cart");
//		if (cart==null) {
//			cart=new ArrayList<Item>();
//			session.setAttribute("cart", cart);
//		}
//		
//
//		
//		
//		for (Item i : cart) {
//			if (i.getProduct1().getId()==id) {
//				i.setCount(i.getCount()+1);
//				
//				return "cart.jsp";
//			}
//		}
//
//		List<Product1> list=(List<Product1>)session.getAttribute("list");
//		for (Product1 p : list) {
//			if (p.getId()==id) {
//				Item i=new Item();
//				i.setProduct1(p);
//				i.setCount(1);
//				cart.add(i);
//			}
//		}
//		return "cart.jsp";
//	}
//}
