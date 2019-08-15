package com.Encryption;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Encryption {
	
	public static String getSHA(String pwd) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			byte [] messageDigest = md.digest(pwd.getBytes());
			BigInteger big = new BigInteger(1, messageDigest);
			String hashtext = big.toString(16);
			while(hashtext.length() <  32) {
				hashtext = "0" + hashtext;
			}
			return hashtext;
		}catch(NoSuchAlgorithmException e) {
			System.out.println("Exception thrown for incorrect algorithm: " + e);
			return null; 
		}
	}
}
