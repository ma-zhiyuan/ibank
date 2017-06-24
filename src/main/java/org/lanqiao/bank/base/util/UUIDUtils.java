package org.lanqiao.bank.base.util;

import java.util.UUID;
/**
 * @ClassName: UUIDUtils 
 * @Description: 用于产生激活码
 * @author 西安工业大学蓝桥学员-孙新召
 * @time 2017年5月6日 下午4:23:19
 */
public class UUIDUtils {
	
	public static String getUUID(){
		return UUID.randomUUID().toString().replace("-", "");
	}

}
