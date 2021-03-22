/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import sun.security.util.Password;

/**
 *
 * @author OLUWAKEMI
 */
public class checkUtils {
        
        
    public Boolean checkAdmin(String username, String password) {
        if (!username.equals("admin") || !password.equals(hashPassword("admin"))) {
            return false;
        } else {
            return true;
        }
    }

    public String hashPassword(String pword) {
        StringBuilder hash = new StringBuilder();

        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
           
            md.update(pword.getBytes());
            byte[] hashedBytes = md.digest();
            for (int i = 0; i < hashedBytes.length; i++) {
                byte b = hashedBytes[i];
                hash.append(Integer.toString((hashedBytes[i]&0xff)+0x100, 16).substring(1));
            }
            pword = hash.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        return pword;
    }
}
