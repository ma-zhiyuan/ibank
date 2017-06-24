package org.lanqiao.bank.service.impl.user;

import java.util.List;

import org.lanqiao.bank.base.dao.EnterpriseRegistDao;
import org.lanqiao.bank.base.entity.EnterpriseRegist;
import org.lanqiao.bank.base.entity.EnterpriseRegistExample;
import org.lanqiao.bank.base.entity.EnterpriseRegistExample.Criteria;
import org.lanqiao.bank.service.user.EnterpriseRegistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class EnterpriseRegistServiceImpl implements EnterpriseRegistService {
	
	@Autowired
	private EnterpriseRegistDao enterpriseRegistDao;
	
	@Override
	public void regist(EnterpriseRegist enterpriseRegist) {
		// TODO Auto-generated method stub
		enterpriseRegistDao.insert(enterpriseRegist);
	}

	@Override
	public String getToken(String email, String password) {
		// TODO Auto-generated method stub
		EnterpriseRegistExample example = new EnterpriseRegistExample();
		Criteria criteria = example.createCriteria();
		criteria.andPasswordEqualTo(password);
		criteria.andEmailEqualTo(email);
		List<EnterpriseRegist> regists = enterpriseRegistDao.selectByExample(example);
		if(regists == null || regists.size() == 0) {
			return "";
		}
		return regists.get(0).getToken();
	}

	@Override
	public List<EnterpriseRegist> selectByExample(
			EnterpriseRegistExample example) {
		// TODO Auto-generated method stub
		return enterpriseRegistDao.selectByExample(example);
	}

}
