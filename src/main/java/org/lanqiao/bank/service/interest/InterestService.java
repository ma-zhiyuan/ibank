package org.lanqiao.bank.service.interest;

import java.util.List;

import org.lanqiao.bank.base.entity.Interest;

public interface InterestService {
	List<Interest> showAllInterest();
	Interest selectByPrimaryKey(Integer id);
}
