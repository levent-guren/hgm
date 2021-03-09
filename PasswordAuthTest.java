package test;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

public class PasswordAuthTest {
	public static void main(String[] args) throws NoSuchAlgorithmException, InvalidKeySpecException {
		PasswordAuthentication pa = new PasswordAuthentication();
		char[] password = "ILoveJava".toCharArray();
		String hashed = pa.hash(password);
		System.out.println(hashed);

		System.out.println(pa.authenticate(password, hashed));
	}

}
