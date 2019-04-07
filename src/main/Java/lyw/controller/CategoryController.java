package lyw.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lyw.pojo.Category;
import lyw.service.CategoryService;
import lyw.util.Page;
import lyw.util.imageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
            PageHelper.offsetPage(page.getStart(),page.getCount());
            List<Category> list = categoryService.listCategory();
            page.setTotal((int)new PageInfo<>(list).getTotal());
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

    @RequestMapping("/admin_delete_Category/{id}")
    public String deleteCategory(@PathVariable(value = "id") int id,HttpSession session){
        try {
            categoryService.deleteCategory(id);
            File indexfile = new File(session.getServletContext().getRealPath("img/category"));
            File file = new File(indexfile,id+".jpg");
            file.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin_category_list";
    }

    @RequestMapping("/admin_get_Category")
    public String getCategory(int id, Model model){
        try {
            model.addAttribute("c",categoryService.selectCategoryById(id));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "editCategory";
    }

    @RequestMapping("/admin_update_Category")
    public String updateCategory(Category category,MultipartFile image,HttpSession session){
        try {
            categoryService.updateCategory(category);
            if(image!=null&&!image.isEmpty()){
                File indexfile = new File(session.getServletContext().getRealPath("img/category"));
                File file = new File(indexfile,category.getId()+".jpg");
                image.transferTo(file);
                BufferedImage bufferedImage = imageUtil.change2jpg(file);
                ImageIO.write(bufferedImage,"jpg",file);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin_category_list";
    }
}
