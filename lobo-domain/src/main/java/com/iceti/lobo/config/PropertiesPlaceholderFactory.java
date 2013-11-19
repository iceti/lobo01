package com.iceti.lobo.config;

import java.util.Properties;

import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class PropertiesPlaceholderFactory {

	@Bean
	public PropertyPlaceholderConfigurer getPropertyPlaceholderConfigurer() {
		PropertyPlaceholderConfigurer propertyPlaceholderConfigurer = new PropertyPlaceholderConfigurer();
		Properties properties = new Properties();
		propertyPlaceholderConfigurer.setProperties(properties);

        return propertyPlaceholderConfigurer;
    }
	
}
