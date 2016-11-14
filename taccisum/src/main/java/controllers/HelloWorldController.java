package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import utilities.MybatisHelper;
import dao.TestDao;

@Controller
@RequestMapping("/Hello")
public class HelloWorldController {
	
	@RequestMapping("/index")
	public String view() {
		return "index";
	}
	
	
	@RequestMapping("/index1")
	@ResponseBody
	public String index1() {		

		TestDao dao = MybatisHelper.getMapper(TestDao.class);
		return dao.first().toString();
	}
}