/**@ClassName: DateFormatUtil.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月24日 下午8:14:20  
 */
package org.lanqiao.bank.base.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

/**
 * @ClassName: DateFormatUtil
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月24日 下午8:14:20
 */
public class DateFormatUtil {
	private DateFormatUtil() {
	};

	/**
	 * @Title: dateToString
	 * @Description: 日期转换为字符串
	 * @author 西安工业大学蓝桥学员-谢世旺
	 * @time 2017年4月24日 下午8:15:11
	 * @param date
	 * @return yyyy/MM/dd String
	 */
	public static final String dateToString(Date date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
		return format.format(date);
	}
     /**
      * @Title: DateToStr
      * @Description: TODO
      * @author 西安工业大学蓝桥学员-王卓华
      * @time 2017年5月8日 下午6:03:46 
      * @param date
      * @return
      * String
      */
	public static String DateToStr(Date date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String str = format.format(date);
		return str;
	}
	
      /**
       * @Title: StrToDate
       * @Description: TODO
       * @author 西安工业大学蓝桥学员-王卓华
       * @time 2017年5月8日 下午6:03:53 
       * @param str
       * @return
       * Date
       */
	public static Date StrToDate(String str) {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		try {
			date = format.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
}
