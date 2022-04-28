package com.pangpang.dockerexample.logback;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @GetMapping("/test")
    public void logbackTest(){
        logger.trace("Trace Level 테스트");
        logger.debug("Debug Level 테스트");
        logger.info("Info Level 테스트");
        logger.warn("Warn Level 테스트");
        logger.error("Error Level 테스트");
    }
}