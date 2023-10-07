package charm;

import java.io.File;
import java.io.FileInputStream;
import org.apache.commons.net.ftp.FTPClient;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author java2
 */
public class Ftpcon {

    FTPClient client = new FTPClient();
    FileInputStream fis = null;
    boolean status;

    public boolean upload(File file,String fname,String cloud) {
        try {
            client.connect("ftp.drivehq.com");
            client.login("1000p", "1000p");
            client.enterLocalPassiveMode();
            fis = new FileInputStream(file);
            
            if(cloud.equals("A")){
            status = client.storeFile(" /CloudA/" + fname, fis);
            }
             if(cloud.equals("B")){
            status = client.storeFile(" /CloudB/" + fname, fis);
            }
            
            
            client.logout();
            fis.close();

        } catch (Exception e) {
            System.out.println(e);
        }
        if (status) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failed");
            return false;
        }
    }
}
