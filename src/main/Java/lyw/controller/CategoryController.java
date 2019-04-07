package lyw.controller;

import lyw.pojo.Category;
import lyw.service.CategoryService;
import lyw.util.Page;
import lyw.util.imageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.List;
import java.util.Map;

@Controller
public class CategoryController {
    @Autowired
    private CategoryService categoryService;
    @RequestMapping("/admin_category_list")
    public String listCategory(Map<String,Object> map, Page page){
        try {
            page.setTotal(categoryService.total());
            List<Category> list = categoryService.listCategory(page);
            map.put("list",list);
            map.put("page",page);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "listCategory";
    }

    @RequestMapping("/admin_add_category")
    public String addCategory(Category category, MultipartFile image, HttpSession session){
        try {
            categoryService.addCategory(category);
            File indexFile = new File(session.getServletContext().getRealPath("img/category"));
            File file = new File(indexFile,category.getId()+".jpg");
            if(!file.getParentFile().exists()){
                file.getParentFile().mkdir();
            }
            image.transferTo(file);
            BufferedImage bufferedImage = imageUtil.change2jpg(file);
            ImageIO.write(bufferedImage,"jpg",file);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin_category_list";
    }
}
