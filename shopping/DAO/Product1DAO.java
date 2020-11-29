package DAO;

import bean.Product1;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

public class Product1DAO extends DAO {

	public List<Product1> search(String keyword) throws Exception {
		List<Product1> list=new ArrayList<>();

		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement("select * from product1 where name like ?");
		st.setString(1, "%"+keyword+"%");
		ResultSet rs=st.executeQuery();

		while (rs.next()) {
			Product1 p=new Product1();
			p.setId(rs.getInt("id"));
			p.setName(rs.getString("name"));
			p.setPrice(rs.getInt("price"));
			p.setProfile(rs.getString("profile"));
			list.add(p);
		}

		st.close();
		con.close();

		return list;
	}

	
}
