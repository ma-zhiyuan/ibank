package org.lanqiao.bank.service.impl.user;

import java.util.Date;
import java.util.List;

import org.lanqiao.bank.base.dao.StatusIdentifyDao;
import org.lanqiao.bank.base.entity.StatusIdentify;
import org.lanqiao.bank.base.entity.StatusIdentifyExample;
import org.lanqiao.bank.service.user.StatusIdentifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class StatusIdentifyServiceImpl implements StatusIdentifyService {
	
	@Autowired
	private StatusIdentifyDao statusIdentifyDao;
	
	@Override
	public void createIdentify(StatusIdentify identify) {
		// TODO Auto-generated method stub
		identify.setCreateTime(new Date());
		statusIdentifyDao.insert(identify);
	}

	@Override
	public List<StatusIdentify> selectByExample(StatusIdentifyExample example) {
		// TODO Auto-generated method stub
		return statusIdentifyDao.selectByExample(example);
	}

}
