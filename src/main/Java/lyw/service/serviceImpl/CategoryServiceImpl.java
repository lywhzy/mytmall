package lyw.service.serviceImpl;

import lyw.mapper.CategoryMapper;
import lyw.pojo.Category;
import lyw.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements lyw.service.CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> listCategory(Page page) throws Exception {
        List<Category> list = null;
        list = categoryMapper.list(page);
        return list;
    }

    @Override
    public int total() throws Exception {
        return categoryMapper.total();
    }

    @Override
    public void addCategory(Category category) throws Exception {
        categoryMapper.addCategory(category);
    }

    @Override
    public void deleteCategory(int id) throws Exception {
        categoryMapper.deleteCategory(id);
    }

    @Override
    public Category selectCategoryById(int id) throws Exception {

        return categoryMapper.selectCategoryById(id);
    }

    @Override
    public void updateCategory(Category c) throws Exception {
        categoryMapper.updateCategory(c);
    }

}
