/**@ClassName: MyObject.java 
 * @Description: TODO
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月27日 下午2:23:40  
 */
package org.lanqiao.bank.base.entity;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

/**@ClassName: MyObject 
 * @Description: 解决懒加载
 * @author 西安工业大学蓝桥学员-谢世旺
 * @time 2017年4月27日 下午2:23:40  
 */
public class MyObject extends ObjectMapper {
	 public MyObject() {
	        this.setSerializationInclusion(JsonInclude.Include.NON_NULL);
	        // 设置 SerializationFeature.FAIL_ON_EMPTY_BEANS 为 false
	        this.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
	    }
}
