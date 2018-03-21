package com.wrs.project.projectci;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


@SpringBootApplication()	
public class Application extends SpringBootServletInitializer {
	private static final Logger LOG = LoggerFactory
			.getLogger(Application.class);

	
	@Override
	protected SpringApplicationBuilder configure(
			SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}

	public static void main(String[] args) throws UnsupportedEncodingException,
			IOException {
		// TODO Auto-generated method stub
		LOG.info("starting server...");

		long startMs = System.currentTimeMillis();

		SpringApplication springApplication = new SpringApplication(
				Application.class);
		springApplication.run(args);

		// SpringApplication.run(Application.class, args);

		long ms = System.currentTimeMillis() - startMs;
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = dateFormat.format(new Date());
		LOG.info("Server startup in " + ms + " ms");
		LOG.info("Startup time: " + now);
	}


}
