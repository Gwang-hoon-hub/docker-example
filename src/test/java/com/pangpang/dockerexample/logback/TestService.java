package com.pangpang.dockerexample.logback;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class TestService {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

}