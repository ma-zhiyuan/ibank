package org.lanqiao.bank.controller.admin;

import java.util.List;

import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.Rate;
import org.lanqiao.bank.service.admin.RateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonFormat.Value;

@Controller
@RequestMapping("/LAdmin/rate")
public class RateController {
	@Autowired
	private RateService rateService;
	
	/**
	 * 查询利率
	 * @Title: selectByRateId
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-张蒙轲
	 * @time 2017年5月26日 上午10:35:45
	 * @param rateId
	 * @return
	 * ModelAndView
	 */
	@RequestMapping(value="/selectByRateId",method = RequestMethod.GET)
	public ModelAndView selectByRateId(@RequestParam("id") Integer rateId){
		List<Rate> rates = rateService.selectByRateId(rateId);
		ModelAndView mv = new ModelAndView("/admin/selectRate");
		mv.addObject("rates", rates);
		return mv;
	}
	
	/**
	 * 更新利率
	 * @Title: updateRateByRateId
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-张蒙轲
	 * @time 2017年5月26日 上午10:35:18 
	 * @return
	 * String
	 */
	@RequestMapping("/updateRateByRateId")
	public String updateRateByRateId(){
		return "/admin/updateRate";
	}
	
	
}
