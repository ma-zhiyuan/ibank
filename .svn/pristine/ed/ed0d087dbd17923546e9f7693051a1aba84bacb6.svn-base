package org.lanqiao.bank.controller;

import org.lanqiao.bank.base.exception.CommonException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

/**
 * @ClassName: GlobalExceptionHandler
 * @Description: 统一异常处理
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年5月25日 上午11:18:25
 */
@ControllerAdvice
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

	/**
	 * @Title: handleExceptionAQ
	 * @Description: 处理方法
	 * @author 西安工业大学蓝桥学员-苏杰
	 * @time 2017年5月25日 上午11:36:25
	 * @param e
	 * @return Object
	 */
	@ResponseStatus(value = HttpStatus.OK)
	@ExceptionHandler(Exception.class)
	public Object handleException(Exception e) {
		if (e instanceof CommonException) {
			// 未写
			e.printStackTrace();
			return null;
		} else {
			e.printStackTrace();
			return new ModelAndView("error500");
		}
	}

}
