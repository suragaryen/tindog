package kr.co.tindog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class TindogApplication {

	public static void main(String[] args) {
		SpringApplication.run(TindogApplication.class, args);
	}

}
