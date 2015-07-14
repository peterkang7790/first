package first.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import first.sample.service.SampleService;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="sampleService")
	private SampleService sampleService;
	
	@RequestMapping(value="/sample/openSampleBoardList.do", method=RequestMethod.GET)
    public ModelAndView openSampleBoardList(Map<String,Object> map) throws Exception{
        ModelAndView mv = new ModelAndView();
         
        List<Map<String,Object>> list = sampleService.selectBoardList(map);
        
        mv.addObject("list", list);
        
        
        mv.setViewName("sample/boardList");
        return mv;
    }
	
	@RequestMapping(value="/sample/openSampleList.do")
    public ModelAndView openSampleList(Map<String,Object> commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("");
    	log.debug("인터셉터 테스트");
    	
    	return mv;
    }
}
