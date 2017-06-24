/**@ClassName: CardController.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月25日 上午8:55:27  
 */
package org.lanqiao.bank.controller.admin;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.lanqiao.bank.base.dto.CardDto;
import org.lanqiao.bank.base.dto.Pager;
import org.lanqiao.bank.base.entity.Card;
import org.lanqiao.bank.base.entity.CardExample;
import org.lanqiao.bank.base.entity.CardExample.Criteria;
import org.lanqiao.bank.service.admin.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**@ClassName: CardController 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月25日 上午8:55:27  
 */
@Controller
@RequestMapping("/LAdmin/card")
public class CardController {
	@Autowired
	private CardService cardService;
	
	
	/**@Title: getModel
		 * @Description: 回显
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年4月28日 下午8:34:49
		 * @param id map
		 * @return void
		 *  
		 */
	@ModelAttribute
	public void getModel(@RequestParam(value = "id", required = false) Integer id, Map<String, Object> map)
			throws ParseException {
		if (id != null) {
			 Card card = cardService.selectByPrimaryKey(id);
			 System.out.println(card);
			map.put("card",card);
		} else {
			Card card = new Card();
			System.out.println(card);
			map.put("card",card);
		}
	}
	/**@Title: updateCard
		 * @Description: 修改card
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017年4月28日 下午8:34:16
		 * @param  card
		 * @return String
		 *  
		 */
	@RequestMapping("/updateCard")
	public String updateCard(Card card){
		System.out.println(card);
		int i = cardService.updateByPrimaryKey(card);
		return "redirect:/LAdmin/card/list";
	}
	
	
	/**@Title: toUpdate
		 * @Description: 去修改银行卡是先回显
		 * @author 西安工业大学蓝桥学员-崔永雷
		 * @time  2017.4.28
		 * @param  void
		 * @return string
		 */
	@RequestMapping("/toUpdate")
	public String toUpdate(){
		return "admin/cardupdate";
	}
	/**@Title: listCards
	 * @Description: 分页和根据条件显示银行卡信息
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月25日 上午10:51:25 
	 * @param page
	 * @param map
	 * @return
	 * String
	 */
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String listCards(@RequestParam(value="number", required=false)String number, 
			@RequestParam(value="left", required=false)String left, 
		@RequestParam(value="right", required=false)String right, 
		@RequestParam(value="orderByClause", required=false)String orderByClause, Pager<Card> pager, Map<String, Object> map) {
		int size = 5;
		if(pager.getCurrentPage() == null || pager.getCurrentPage() < 1) {
			pager.setCurrentPage(1);
		}
		String order = orderByClause;
		CardExample example = new CardExample();
		if(orderByClause != null) {
			if(orderByClause.equals("1")) {
				orderByClause = " balance desc";
			}else {
				if(orderByClause.equals("2")) {
					orderByClause = " balance";
				}
			}
			if(!orderByClause.equals("0")) {
				example.setOrderByClause(orderByClause);
			}
		}
		pager.setRowPerPage(5);
		Criteria criteria = example.createCriteria();
		if(number != null && number.length() != 0) {
			criteria.andNumberLike("%" + number + "%");
		}
		if(left != null && right != null && left.length() != 0 && right .length() != 0) {
			criteria.andBalanceBetween(Double.parseDouble(left), Double.parseDouble(right));
		}else {
			if((left == null || left.length() == 0) && right != null && right.length() != 0) {
				criteria.andBalanceLessThanOrEqualTo(Double.parseDouble(right));
			}else {
				if(left != null && left.length() != 0 && (right == null || right.length() == 0)) {
					criteria.andBalanceLessThanOrEqualTo(Double.parseDouble(left));
				}
			}
		}
		List<Card> cards = cardService.selectCardsByPageAndCondiction(pager, example);
		long count = cardService.countByExample(example);
		pager.setData(cards);
		pager.setTotalRows((int)count);
		pager.setTotalPages(pager.getTotalRows() % size == 0 ? pager.getTotalRows() / 5 : pager.getTotalRows() / 5 + 1);
		pager.setHasNextPage(pager.getCurrentPage() != 1);
		pager.setHasNextPage(pager.getCurrentPage() != count);
		map.put("pager", pager);
		map.put("number", number);
		map.put("left", left);
		map.put("right", right);
		map.put("orderByClause", Integer.parseInt(order == null ? "0" : order));
		return "/admin/card_list";
	}
	
	/**
	 * 
	 * @Title: getCardsByUserId
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-张蒙轲
	 * @time 2017年5月3日 下午8:20:15 
	 * @param userId
	 */
	@RequestMapping(value = "/getCardsByUserId",method = RequestMethod.GET)
	public ModelAndView getCardsByUserId(@RequestParam("id") Integer userId) {
		List<Card> cards = cardService.getCardsByUserId(userId);
		ModelAndView mv=new ModelAndView("/admin/user_all_cards");
		mv.addObject("cards", cards);
		System.out.println(cards);
		return mv;
		
	}
	

	/**
	 * @Title: deleteUser
	 * @Description: TODO
	 * @author 西安工业大学蓝桥学员-查文彬
	 * @time 2017年4月28日 下午7:08:23 
	 * @param id
	 * @return
	 * String
	 */
	@RequestMapping("deleteUserCardByCardId")
	public String deleteUserCardByCardId(@RequestParam("id") Integer id){
		int result = cardService.deleteUserCardByCardId(id);
		return "/admin/card_delete_success";
	}
	
	/**@Title: getUserCardsJson
	 * @Description: 获取指定用户银行卡json
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月30日 下午3:44:35 
	 * @param userId
	 * @return
	 * List<CardDto>
	 */
	@RequestMapping(value="/user/list", method=RequestMethod.GET)
	@ResponseBody
	public List<CardDto> getUserCardsJson(Integer userId, Integer bankId) {
		List<CardDto> cardDtos = new ArrayList<CardDto>();
		CardExample example = new CardExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		List<Card> cards = cardService.selectCardsByPageAndCondiction(null, example);
		for(int i = 0; i < cards.size(); i++) {
			Card card = cards.get(i);
			CardDto cardDto = new CardDto();
			cardDto.setId(card.getId());
			cardDto.setBalance(card.getBalance());
			cardDto.setNumber(card.getNumber());
			cardDtos.add(cardDto);
		}
		return cardDtos;
	}
	
	/**@Title: getCardUserName
	 * @Description: 根据好好获取所属用户的姓名
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月30日 下午3:45:05 
	 * @param number
	 * @return
	 * String
	 */
	@RequestMapping(value="/user", method=RequestMethod.GET)
	@ResponseBody
	public CardDto getCardUserName(String number) {
		CardExample example = new CardExample();
		Criteria criteria = example.createCriteria();
		criteria.andNumberEqualTo(number);
		List<Card> cards = cardService.selectCardsByPageAndCondiction(null, example);
		CardDto cardDto = null;
		if(!cards.isEmpty()) {
			Card card = cards.get(0);
			cardDto = new CardDto();
			if(card.getUser() != null) {
				cardDto.setUserName(card.getUser().getName());
				cardDto.setId(card.getId());
			}
		}
		return cardDto;
	}
}
