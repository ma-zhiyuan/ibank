package org.lanqiao.bank.service.impl.interest;

import java.util.List;

import org.lanqiao.bank.base.dao.InterestDao;
import org.lanqiao.bank.base.entity.Interest;
import org.lanqiao.bank.base.entity.InterestExample;
import org.lanqiao.bank.base.entity.InterestExample.Criteria;
import org.lanqiao.bank.service.interest.InterestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class InterestServiceImpl implements InterestService{
	@Autowired
    InterestDao interestDao;
	@Override
	public List<Interest> showAllInterest() {
		InterestExample example = new InterestExample();
		Criteria criteria = example.createCriteria();
		List<Interest> interestAll = interestDao.selectByExample(example);
		return interestAll;
	}
	@Override
	public Interest selectByPrimaryKey(Integer id) {
		return interestDao.selectByPrimaryKey(id);
	}

}
