package com.bz.manage.web.controller.test.statistics;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bz.manage.model.test.DataTest;
import com.bz.manage.model.test.StatisticsTest;

/**
* @ClassName: TestStatisticsController 
* @Description: TODO(统计流水页面控制) 
* @author 胡竞
* @date 2017年10月18日 下午5:00:46 
*
 */
@Controller
@RequestMapping(value="system/shopStatistics")
public class TestStatisticsController {

	private static final Log log=LogFactory.getLog(TestStatisticsController.class);
	
	@GetMapping(value="/day")
	public ModelAndView statistics(ModelAndView mv,StatisticsTest test,String beginTime,String endTime) {
		log.info("进入日报表页面 beginTime:"+beginTime+"endTime："+endTime);
		try {
			List<DataTest> list =new ArrayList<>();
			DataTest one=new DataTest();
			one.setData(12.02);
			one.setDate("2017-10-17 04:15:54");
			
			DataTest ones=new DataTest();
			ones.setData(15.02);
			ones.setDate("2017-10-18 04:15:54");
			
			DataTest ones5=new DataTest();
			ones5.setData(15.02);
			ones5.setDate("2017-10-14 04:15:54");
			
			DataTest ones1=new DataTest();
			ones1.setData(15.02);
			ones1.setDate("2017-10-12 04:15:54");
			
			DataTest ones2=new DataTest();
			ones2.setData(15.02);
			ones2.setDate("2017-10-11 04:15:54");
			
			DataTest ones3=new DataTest();
			ones3.setData(15.02);
			ones3.setDate("2017-10-20 04:15:54");
			
			DataTest ones4=new DataTest();
			ones4.setData(15.02);
			ones4.setDate("2017-10-18 04:15:54");
			
			DataTest ones6=new DataTest();
			ones6.setData(15.02);
			ones6.setDate("2017-10-19 04:15:54");
			list.add(ones1);
			list.add(ones2);
			list.add(ones3);
			list.add(ones4);
			list.add(ones5);
			list.add(ones6);
			list.add(ones);
			list.add(one);
			mv.addObject("test",list);
			mv.setViewName("system/testStatement/toDay");
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		
		return mv;
	}
}
