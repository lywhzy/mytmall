package lyw.controller;

import lyw.pojo.Category;
import lyw.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class CategoryController {
    @Autowired
    private CategoryService categoryService;
    @RequestMapping("/admin_category_list")
    public String listCategory(Map<String,Object> map){
        try {
            List<Category> list = categoryService.listCategory();
            map.put("list",list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "listCategory";
    }
}
