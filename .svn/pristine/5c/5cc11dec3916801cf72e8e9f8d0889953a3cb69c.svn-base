/**
 * 
 */
package org.lanqiao.bank.base.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**@ClassName: CardUtils 
 * @Description: 生成银行卡
 * @author 西安工业大学蓝桥学员-高彩丽
 * @time 2017年5月10日 下午11:47:48  
 */

public class CardUtils {
	public static String  sn() {
        Random random = new Random();
        int b = 0;
        while (true) {
            b = random.nextInt(9999999);
            if (b < 1000000) {
                continue;
            } else
                break;
        }
        String str = "" + b;
        return str;
    }
	 public static String createCard(){
	        String datetime=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()); 
	        String[] str1=datetime.split(" ");
	        String[] str2=str1[0].split("-");
	        String[] str3=str1[1].split(":");
	        String orderno=str2[0]+str2[1]+str2[2]+str3[0]+str3[1]+CardUtils.sn();
	        return orderno;
	        
	    }

}
