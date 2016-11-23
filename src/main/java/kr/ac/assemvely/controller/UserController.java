package kr.ac.assemvely.controller;

import java.io.File;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import kr.ac.assemvely.service.UserService;
import kr.ac.assemvely.vo.RelationVo;
import kr.ac.assemvely.vo.TempUserVo;
import kr.ac.assemvely.vo.UserDto;
import kr.ac.assemvely.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController 
{
	@Inject
	private UserService service;
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(
			@RequestParam("imgfile1")MultipartFile imgfile1,
			@RequestParam("imgfile2")MultipartFile imgfile2,
			MultipartHttpServletRequest request,
			MultipartHttpServletRequest request2,
			ModelMap model,	UserVo vo) throws Exception
	{
				
		Map<String, MultipartFile> files = ((MultipartRequest) request).getFileMap();
		Map<String, MultipartFile> files2 = ((MultipartRequest) request).getFileMap();
		
		//파일 받아옴
		CommonsMultipartFile cmf = (CommonsMultipartFile)files.get("imgfile1");
		CommonsMultipartFile cmf2 = (CommonsMultipartFile)files2.get("imgfile2");
		
		//파일 경로를 reseource/img폴더로 지정
		String savePath = request.getServletContext().getRealPath("/resources/img");
		String randomid=UUID.randomUUID().toString();
		String randomid2=UUID.randomUUID().toString();
		//realPath를 경로이름+파일의 원래 이름으로.
		String filename1=cmf.getOriginalFilename() +randomid;
		String realPath = savePath+"/"+filename1;
		
		String filename2=cmf2.getOriginalFilename()+randomid2;
		String realPath2 = savePath+"/"+filename2;
	
		File file = new File(realPath);
		cmf.transferTo(file);
		
	//	String imgname = imgfile1.getOriginalFilename();
	//	String imgfullpath = savePath+"/"+imgname;
		 
		vo.setImgname(filename1);
		vo.setImgpath(realPath);
		
		if(vo.getBsm().equals("b"))
		{		
			
			vo.setFilename("null");
			vo.setFilepath("null");
			
			service.join(vo);
			return "main";
		}
		
		else if (vo.getBsm().equals("s"))
		{
			File file2 = new File(realPath2);
			cmf2.transferTo(file2);
			
//			String filename = imgfile2.getOriginalFilename();
//			String filefullpath = savePath+"/"+filename;
//			
			vo.setFilename(filename2);
			vo.setFilepath(realPath2);
			
			service.sellerjoin(vo);
			return "main";
			
		}
		return "main";
			
	}
	
	@RequestMapping(value="/joinPage", method=RequestMethod.GET)
	public String toJoin(Model model) throws Exception
	{
		
		return "join";
		
	}
	
	@RequestMapping(value="/tomanaginguser", method=RequestMethod.GET)
	public String tomanaginuser(Model model) throws Exception
	{
		
		model.addAttribute("userlist", service.userlist());
		return "managinguser";
		
	}
	
	
	@RequestMapping(value="/tostatistics", method=RequestMethod.GET)
	public String tostatistics(Model model, HttpServletRequest request, 
			HttpServletResponse response, HttpSession session) throws Exception
	{
		model.addAttribute("sellercounter", service.sellercounter());
		model.addAttribute("buyercounter", service.buyercounter());
		
		return "statistics";
		
	}
	
	@RequestMapping(value="/towaitinglist", method=RequestMethod.GET)
	public String towaitinglist(Model model) throws Exception
	{
		
		model.addAttribute("templist", service.templist());
		
		return "waitinglist";
		
	}
	
	
	@RequestMapping(value="/approve", method=RequestMethod.GET)
	public String approve(@RequestParam("id")String id, TempUserVo tvo) throws Exception
	{
		TempUserVo tvo1 = service.selecttempuser(id);
		
		UserVo vo = new UserVo();
		vo.setId(tvo1.getId());
		vo.setPw(tvo1.getPw());
		vo.setBsm(tvo1.getBsm());
		
		if(tvo1.getEmail()!=null)
		{vo.setEmail(tvo1.getEmail());}
		else
		{vo.setEmail("null");}
		vo.setBsm(tvo1.getBsm());
			
		if(tvo1.getImgname()!=null)
		{vo.setImgname(tvo1.getImgname());}
		else
		{vo.setImgname("null");}
		
		if(tvo1.getImgpath()!=null)
		{vo.setImgpath(tvo1.getImgpath());}
		else
		{vo.setImgpath("null");}
		
		
		if(tvo1.getFilename()!=null)
		{vo.setFilename(tvo1.getFilename());}
		else
		{vo.setFilename("null");}
		
		if(tvo1.getFilepath()!=null)
		{vo.setFilepath(tvo1.getFilepath());}
		else
		{vo.setFilepath("null");}
		
		vo.setAddress("null");
		
		service.join(vo);
		
		service.deletetempuser(id);
		
		
		return "redirect:/user/mypage";
		
	}
	
	@RequestMapping(value="/loginpage", method=RequestMethod.GET)
	public String tologin(Model model) throws Exception
	{
		return "/user/loginPost";
		
	}
	
	@RequestMapping(value="/loginPost", method={RequestMethod.POST, RequestMethod.GET})
	public String loginPOST(UserDto dto, HttpSession session, Model model) throws Exception
	{
		
		UserVo vo = service.login(dto);
		if(vo==null){
			return "homemain";
		}
		session.setAttribute("login", vo.getId());
		model.addAttribute("userVO", vo);
		return "homemain";
		
	 
	}
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, 
			HttpServletResponse response, HttpSession session) throws Exception
	{
	
		Object obj =session.getAttribute("login");
		
		if(obj != null)
		{
						
			session.removeAttribute("login");
			session.invalidate();
			return "main";
		}
		
		
		session.removeAttribute("login");
		session.invalidate();
		
		return "main";
		
				
	}
	
	
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String listAll(Model model, HttpSession session,
			HttpServletRequest request, HttpServletResponse response
			) throws Exception
	{
	
		UserVo vo = (UserVo) session.getAttribute("login");
		
		String followingid=vo.getId();
		String followerid=vo.getId();
		
		model.addAttribute("userlist", service.userlist());	
	
		model.addAttribute("followingcounter", service.followingcounter(followingid));
		model.addAttribute("followercounter", service.followercounter(followerid));
				
		return "mypage";
	}
	
	@RequestMapping(value="/deletetempuser", method=RequestMethod.GET)
	public String deletetempuser(@RequestParam("id")String id)throws Exception
	{
		
		service.deletetempuser(id);
		return "mypage";
	}
	
	@RequestMapping(value="/deleteuser", method=RequestMethod.GET)
	public String deleteuser(HttpSession session, HttpServletRequest request, HttpServletResponse response)throws Exception
	{
		
		UserVo vo = (UserVo) session.getAttribute("login");
		
		String id = vo.getId();
		String pw = vo.getPw();
				
		UserDto dto = new UserDto();
		dto.setId(id);
		dto.setPw(pw);
				
		service.deleteuser(dto);
		logout(request, response, session);
		return "main";
		
	}
	
	
	@RequestMapping(value="/toreadtempuserinfo", method=RequestMethod.GET)
	public String selecttempuser(@RequestParam("id")String id, Model model) throws Exception
	{
		
		model.addAttribute("tempuser", service.selecttempuser(id));
		System.out.println(service.selecttempuser(id));
		return "readtempuserinfo";
	}
	
	
	@RequestMapping(value="/following", method=RequestMethod.GET)
	public String following(@RequestParam("id")String followingid, HttpSession session) throws Exception
	{
		
		RelationVo rvo = new RelationVo();
		
		UserVo vo = (UserVo) session.getAttribute("login");
		String followerid = vo.getId();
		
		rvo.setFollowerid(followerid);
		rvo.setFollowingid(followingid);
		service.following(rvo);
		
		return "mypage";	
		
	}

	
}
