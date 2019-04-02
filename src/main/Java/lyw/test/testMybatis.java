package lyw.test;

import lyw.mapper.CategoryMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class testMybatis {
    public static void main(String[] args){
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:ApplicationContext.xml");
        CategoryMapper mapper = (CategoryMapper) context.getBean("categoryMapper");
        System.out.println(mapper.list().toArray());
    }
}
