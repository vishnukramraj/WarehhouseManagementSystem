package com.application.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;

import java.util.Properties;


public class Authenticator {
	
	public boolean authenticate(String username, String password)
	{
		Properties properties = new Properties();
		InputStream inputStream = null;
		boolean result = false;
		try
		{
			String fileName = "config.properties";
			inputStream = getClass().getClassLoader().getResourceAsStream(fileName);
			if(inputStream == null)
			{
				System.out.println("Unable to find the file in the class path");
				return result;
			}
			else
			{
				properties.load(inputStream);
				Enumeration<?> e = properties.propertyNames();
				while (e.hasMoreElements()) 
				{
					String key = (String) e.nextElement();
					String value = properties.getProperty(key);
					System.out.println("Key : " + key + ", Value : " + value);
					if(key.equalsIgnoreCase(username) && value.equalsIgnoreCase(password))
					{
						result = true;
					}
				}
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(inputStream != null)
			{
				try {
					inputStream.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return result;
	}

}
