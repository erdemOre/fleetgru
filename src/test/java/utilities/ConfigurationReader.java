package utilities;

import java.io.FileInputStream;
import java.util.Properties;

public class ConfigurationReader {
    private static Properties properties;

    static{
        try{
            //which file to read
            String path = "configuration.properties";
            //read the file into java memory, finds the file using the string path
            FileInputStream input = new FileInputStream(path);
            //properties --> class that stores values in key/ value format
            properties = new Properties();
            //the value from the input is loaded / fed into the properties object
            properties.load(input);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static String get(String keyName){
        return properties.getProperty(keyName);
    }
}
