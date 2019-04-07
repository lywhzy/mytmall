package lyw.service;

import lyw.pojo.Category;
import lyw.util.Page;

import java.util.List;


public interface CategoryService {
    List<Category> listCategory(Page page) throws Exception;
    int total() throws Exception;
    void addCategory(Category category) throws Exception;
}
