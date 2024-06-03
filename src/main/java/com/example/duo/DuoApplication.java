package com.example.duo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"*.user","data.*","tiles.config","com.example.duo","controller.*","naver.cloud"})
@MapperScan("data.mapper")
public class DuoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DuoApplication.class, args);
    }

}
