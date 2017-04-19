package pers.yijin.bms.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
	/**
	 * MD5加密操作
	 * 
	 * @param str
	 * @return
	 */
	public static String getMD5(String str) {
		try {
			// 获得JDK提供的算法工具类
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			// 加密的结果位10进制
			byte[] MD5ValueByteArray = messageDigest.digest(str.getBytes());
			// 将10进制转换为16进制，传入1代表正数
			BigInteger bigInteger = new BigInteger(1, MD5ValueByteArray);
			return bigInteger.toString(16);
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException();
		}
	}
	
/*		@Test
	public void test(){
		System.out.println(MD5Util.getMD5("1111"));
		
	}*/
}
