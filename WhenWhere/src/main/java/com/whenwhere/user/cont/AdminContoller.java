package com.whenwhere.user.cont;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whenwhere.user.service.AdminService;

@Controller
@RequestMapping(value = "/admin")
public class AdminContoller {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/getUserList")
	@ResponseBody
	public String getUserList(@RequestParam("page") int page, String receiver, HttpSession session) throws Exception {
		System.out.println();
		return adminService.getUserList(page);
	}
	
	@RequestMapping("/changeUserAuth")
	@ResponseBody
	public String changeUserAuth(@RequestParam("val") String auth, @RequestParam("nickname") String nickname, HttpSession session) throws Exception {
		return adminService.changeUserAuth(auth,nickname);
	}
	@RequestMapping("/delUser")
	@ResponseBody
	public String delUser(@RequestParam("nickname") String nickname, HttpSession session) throws Exception {
		return adminService.delUser(nickname);
	}
	
	@RequestMapping("/getBoardList")
	@ResponseBody
	public String getBoardList(@RequestParam("type") int type, HttpSession session) throws Exception {
		return adminService.getBoardList(type);
	}
	
	@RequestMapping("/delBoard")
	@ResponseBody
	public String delBoard(@RequestParam("type") int type, @RequestParam("bnum") int num, HttpSession session) throws Exception {
		return adminService.delBoard(type,num);
	}
}
