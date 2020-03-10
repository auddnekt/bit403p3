package com.bitcamp.TFCnotroller;

import static org.junit.Assert.assertNotNull;

import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zaxxer.hikari.HikariDataSource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src\\main\\webapp\\WEB-INF\\spring\\root-context.xml")
public class Test {
	
	@Resource
	private HikariDataSource ds;
	
	@org.junit.Test
	public void t1() {
		assertNotNull(ds);
	}
}
