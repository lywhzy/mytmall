package lyw.test;

import lyw.service.CategoryService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class testService {
    public static void main(String[] args){
        ApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
        CategoryService service = (CategoryService) context.getBean(CategoryService.class);
        try {
            System.out.println(service.listCategory().toArray());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
