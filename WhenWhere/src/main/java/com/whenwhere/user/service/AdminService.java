package com.whenwhere.user.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whenwhere.board.vo.BoardVO;
import com.whenwhere.user.dao.AdminDAO;
import com.whenwhere.user.dao.MemberDAO;
import com.whenwhere.user.vo.MemberVO;

@Service
public class AdminService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public String getUserList(int page) {
		
		JSONArray jarr = new JSONArray();
		JSONObject jobj = new JSONObject();
		jobj.put("ok", true);
		jarr.add(jobj);
		
		AdminDAO dao = sqlSessionTemplate.getMapper(AdminDAO.class);
		List<MemberVO> memberList = dao.getUserList();
		
		for(int i=0;i<memberList.size();i++){
			jobj = new JSONObject();
			
			jobj.put("email", memberList.get(i).getEmail());
			jobj.put("phone", memberList.get(i).getPhoneNumber());
			jobj.put("authority", memberList.get(i).getAuthority());
			jobj.put("nickname", memberList.get(i).getNickname());
			
			jarr.add(jobj);
		}
		
		return jarr.toJSONString();
	}

	public String changeUserAuth(String value,String nickname) {
		
		boolean ok = false;
		JSONObject jobj = new JSONObject();
		jobj.put("ok", ok);
		
		AdminDAO dao = sqlSessionTemplate.getMapper(AdminDAO.class);
		int rows = dao.changeUserAuth(value,nickname);

		if (rows > 0) {
			ok = true;
		}
		
		jobj.put("ok", ok);
		System.out.println();
		return jobj.toString();
	}

	public String delUser(String nickname) {
		
		boolean ok = false;
		JSONObject jobj = new JSONObject();
		jobj.put("ok", ok);
		
		AdminDAO dao = sqlSessionTemplate.getMapper(AdminDAO.class);
		int rows = dao.delUser(nickname);

		if (rows > 0) {
			ok = true;
		}
		
		jobj.put("ok", ok);
		
		return jobj.toString();
	}

	public String getBoardList(int type) {
		JSONArray jarr = new JSONArray();
		JSONObject jobj = new JSONObject();
		jobj.put("ok", true);
		jarr.add(jobj);
		
		AdminDAO dao = sqlSessionTemplate.getMapper(AdminDAO.class);
		List<BoardVO> memberList = dao.getBoardList(type);
		
		for(int i=0;i<memberList.size();i++){
			jobj = new JSONObject();
			
			jobj.put("title", memberList.get(i).getTitle());
			jobj.put("writer", memberList.get(i).getAuth());
			jobj.put("no", memberList.get(i).getNo());
			
			jarr.add(jobj);
		}
		
		return jarr.toJSONString();
	}

	public String delBoard(int type, int num) {
		boolean ok = false;
		JSONObject jobj = new JSONObject();
		jobj.put("ok", ok);
		
		AdminDAO dao = sqlSessionTemplate.getMapper(AdminDAO.class);
		int rows = dao.delBoard(type,num);

		if (rows > 0) {
			ok = true;
		}
		
		jobj.put("ok", ok);
		
		return jobj.toString();
	}
}
