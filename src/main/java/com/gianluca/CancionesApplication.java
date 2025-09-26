package com.gianluca;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages = "com.gianluca")
@EnableJpaRepositories("com.gianluca.repositorios")
@EntityScan("com.gianluca.modelos")
public class CancionesApplication {

	public static void main(String[] args) {
		SpringApplication.run(CancionesApplication.class, args);
	}

}
