package kr.ac.assemvely.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
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

import kr.ac.assemvely.service.ItemService;
import kr.ac.assemvely.service.UserService;
import kr.ac.assemvely.vo.ItemVo;
import kr.ac.assemvely.vo.UserVo;

@Controller
@RequestMapping("/item")
public class ItemController {

	@Inject
	private ItemService itemservice;
	

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String listGET(Model model) throws Exception {
		List<ItemVo> vo;
		vo = itemservice.listitem();
		model.addAttribute("LIST", vo);
		return "homemain";

	}
	@RequestMapping(value="/posting")
	public String posting( HttpSession session){
	 
		return "itemposting";
	 
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	private String upload(@RequestParam MultipartFile imgfile, MultipartHttpServletRequest request, ModelMap model,ItemVo itemvo) throws Exception {
		Map<String, MultipartFile> files = ((MultipartRequest) request).getFileMap();
		CommonsMultipartFile cmf = (CommonsMultipartFile) files.get("imgfile");
		String savePath = request.getServletContext().getRealPath("/resources/itemimg");
		String realPath = savePath + "/" + cmf.getOriginalFilename();

		File file = new File(realPath);
		// �뙆�씪 �뾽濡쒕뱶 泥섎━ �셿猷�.
		cmf.transferTo(file);
		
		itemvo.setImgname(cmf.getOriginalFilename());
		System.out.println(itemvo.toString());
		itemservice.insertitem(itemvo);
		List<ItemVo> list = itemservice.listitem();
		model.addAttribute("LIST", list);
		
		return "itemupload";
	}

	/*@RequestMapping("/image")
	private String getImage(@ModelAttribute("bno") int bno, Model model) {

		// @PathVariable=媛믪씠 �뵲�씪�떎�땲�뒗寃�.
		ItemVo imageFile = service.get(bno);
		model.addAttribute("imageFile", imageFile);
		return "uploadComplete";

	}*/

}
