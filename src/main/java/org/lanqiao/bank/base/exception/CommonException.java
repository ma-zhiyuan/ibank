package org.lanqiao.bank.base.exception;

/**
 * @ClassName: CommonException
 * @Description: 统一异常处理
 * @author 西安工业大学蓝桥学员-苏杰
 * @time 2017年4月15日 下午7:37:43
 */
public class CommonException extends RuntimeException {

	private static final long serialVersionUID = 4650525276363437964L;

	public CommonException() {
		super();
	}

	public CommonException(String message, Throwable cause) {
		super(message, cause);
	}

	public CommonException(String message) {
		super(message);
	}

}
