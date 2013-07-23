package org.softfactory.crypto;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.SecretKeySpec;

import org.junit.Test;

public class TestCipher {

	final String	keyPhrase	= "hello world ~ 123!";

	/**
	 * 해당 알고리즘에 사용할 비밀키(SecretKey)를 생성한다.
	 * 
	 * @return 비밀키(SecretKey)
	 */
	private Key generateKey(String algorithm) throws NoSuchAlgorithmException {
		KeyGenerator keyGenerator = KeyGenerator.getInstance(algorithm);
		SecretKey key = keyGenerator.generateKey();
		return key;
	}

	/**
	 * 주어진 데이터로, 해당 알고리즘에 사용할 비밀키(SecretKey)를 생성한다.
	 * 
	 * @param algorithm
	 *            DES/DESede/TripleDES/AES
	 * @param keyData
	 * @return
	 */
	private Key generateKey(String algorithm, byte[] keyData) throws NoSuchAlgorithmException, InvalidKeyException,
			InvalidKeySpecException {
		String upper = algorithm.toUpperCase();
		if ("DES".equals(upper)) {
			KeySpec keySpec = new DESKeySpec(keyData);
			SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(algorithm);
			SecretKey secretKey = secretKeyFactory.generateSecret(keySpec);
			return secretKey;
		} else if ("DESede".equals(upper) || "TripleDES".equals(upper)) {
			KeySpec keySpec = new DESedeKeySpec(keyData);
			SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(algorithm);
			SecretKey secretKey = secretKeyFactory.generateSecret(keySpec);
			return secretKey;
		} else {
			SecretKeySpec keySpec = new SecretKeySpec(keyData, algorithm);
			return keySpec;
		}
	}

	@Test
	public void testDES() {
		Cryptogram crypto = new Cryptogram();
		crypto.setSecretkey("myKey");

		String encrypted = crypto.encrypt(keyPhrase);
		String decrypted = crypto.decrypt(encrypted);
		assertEquals(keyPhrase, decrypted);
	}

	@Test
	public void testDES1() {
		try {
			String keyDataString = "68616e6765656e61";

			Key key = generateKey("DES", keyDataString.getBytes());

			String transformation = "DES/ECB/NoPadding";
			Cipher cipher = Cipher.getInstance(transformation);
			cipher.init(Cipher.ENCRYPT_MODE, key);

			String str = "hello123";
			byte[] plain = str.getBytes();
			byte[] encrypt = cipher.doFinal(plain);

			System.out.println("원문 : " + ToString(plain));
			System.out.println("암호 : " + ToString(encrypt));

			cipher.init(Cipher.DECRYPT_MODE, key);
			byte[] decrypt = cipher.doFinal(encrypt);
			System.out.println("복호 : " + ToString(decrypt));

			assertEquals(ToString(plain), ToString(decrypt));

		} catch (Exception exception) {
			fail("암/복호화 실패!");
		}
	}

	@Test
	public void testPassword() {
		String password = "mypassword";

		byte[] passwordBytes = password.getBytes();
		int len = passwordBytes.length;
		byte[] keyBytes = new byte[16];
		if (len >= 16) {
			System.arraycopy(passwordBytes, 0, keyBytes, 0, 16);
		} else {
			System.arraycopy(passwordBytes, 0, keyBytes, 0, len);
			for (int i = 0; i < (16 - len); i++) {
				keyBytes[len + i] = passwordBytes[i % len];
			}
		}

		try {
			Key key = generateKey("AES", keyBytes);
			String transformation = "AES/ECB/PKCS5Padding";
			Cipher cipher = Cipher.getInstance(transformation);
			cipher.init(Cipher.ENCRYPT_MODE, key);

			byte[] plain = password.getBytes();
			byte[] encrypt = cipher.doFinal(plain);
			System.out.println("원문 : " + ToString(plain));
			System.out.println("암호 : " + ToString(encrypt));

			cipher.init(Cipher.DECRYPT_MODE, key);
			byte[] decrypt = cipher.doFinal(encrypt);
			System.out.println("복호 : " + ToString(decrypt));

			assertEquals(ToString(plain), ToString(decrypt));

		} catch (Exception exception) {
			fail("암/복호화 실패!");
		}
	}

	private String ToString(byte[] msg) {
		return new String(msg, 0, msg.length);
	}
}