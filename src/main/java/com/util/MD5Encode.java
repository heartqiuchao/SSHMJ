package com.util;

import java.security.MessageDigest;

public class MD5Encode {
		private static String[]  hexDigits = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "e", "f", "h", "u",
	        "x", "z" };
		private static String byteArrayToString(byte[] b) {
			StringBuffer resultBuffer = new StringBuffer();
			for (int i = 0; i < b.length; i++) {
				resultBuffer.append(byteToString(b[i]));
			}
			return resultBuffer.toString();
		}
		
		private static String byteToString(byte b) {
			int n=b;
			if (n<0) {
				n+=256;
			}
			int d1=n/16;
			int d2=n%16;
			return hexDigits[d1]+hexDigits[d2];
		}
		
		public static String passwordEncode(String password) {
			String resultString =null;
			try {
				resultString = new String(password);
				MessageDigest md= MessageDigest.getInstance("MD5");
				resultString = byteArrayToString(md.digest(resultString.getBytes()));
			} catch (Exception e) {
			}
			return resultString+resultString.substring(0,3).toLowerCase();
		}
		
}
