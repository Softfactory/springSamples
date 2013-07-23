package org.softfactory.crypto;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.softfactory.lab.BeansBase;

/**
 * To employ Java Cryptography Architecture
 * http://docs.oracle.com/javase/6/docs/
 * technotes/guides/security/crypto/CryptoSpec.html
 * 
 * @author Jacob
 * 
 */
public class Cryptogram extends BeansBase {

	private String			secretKey;
	private String			strKeySpec;
	private SecretKeySpec	keySpec;
	private Cipher			cipher;

	@Override
	protected void initial() {
		// TODO Auto-generated method stub

	}

	@Override
	protected void end() {
		// TODO Auto-generated method stub

	}

	public String encrypt(String plainPhrase) {

		return new String("");
	}

	public String decrypt(String encryptedPhrase) {
		return new String("");
	}

	public void setSecretkey(String secretKey) {
		this.secretKey = secretKey;
	}

	/**
	 * @param algorithm
	 *            You have to specify the following information and separated by
	 *            a slash (/) <li>Algorithm name <li>Mode (optional) <li>Padding
	 *            scheme (optional)
	 */
	public void setAlgorithm(String algorithm) {
		this.strKeySpec = algorithm;
	}

}
