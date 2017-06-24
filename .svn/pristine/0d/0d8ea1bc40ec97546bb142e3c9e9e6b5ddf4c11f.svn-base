package org.lanqiao.bank.service.impl.admin;

import java.util.List;

import org.lanqiao.bank.base.dao.RateDao;
import org.lanqiao.bank.base.entity.Rate;
import org.lanqiao.bank.service.admin.RateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RateServiceImpl implements RateService{

	@Autowired
	private RateDao rateDao;
	
	/**
	 * 查询利率
	 * 张蒙轲
	 */
	@Override
	public List<Rate> selectByRateId(Integer rateId) {

		return rateDao.selectByRateId(rateId);
	}
	
	/**
	 * 更新利率
	 * 张蒙轲
	 */
	@Override
	public int updateRateByRateId(Integer rateId){
		
		return rateDao.updateRateByRateId(rateId);
	}
}
