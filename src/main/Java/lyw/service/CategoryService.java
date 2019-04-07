package lyw.service;

import lyw.pojo.Category;
import lyw.util.Page;

import java.util.List;


public interface CategoryService {
    List<Category> listCategory(Page page) throws Exception;
    int total() throws Exception;
    void addCategory(Category category) throws Exception;
    void deleteCategory(int id) throws Exception;
    Category selectCategoryById(int id)throws Exception;
    void updateCategory(Category c) throws Exception;
}
