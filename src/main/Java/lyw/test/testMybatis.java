package lyw.test;

import lyw.mapper.CategoryMapper;
import lyw.util.Page;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class testMybatis {
    public static void main(String[] args){
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:ApplicationContext.xml");
        CategoryMapper mapper = (CategoryMapper) context.getBean("categoryMapper");
        Page page = new Page();
        page.setStart(0);
        page.setCount(5);
        page.setTotal(51);
        System.out.println(mapper.list(page).toArray());
    }
}
