package lyw.service.serviceImpl;

import lyw.mapper.CategoryMapper;
import lyw.pojo.Category;
import lyw.pojo.CategoryExample;
import lyw.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements lyw.service.CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> listCategory() throws Exception {
        List<Category> list = null;
        CategoryExample example = new CategoryExample();
        example.setOrderByClause("id desc");
        list = categoryMapper.selectByExample(example);
        return list;
    }

    @Override
    public void addCategory(Category category) throws Exception {
        categoryMapper.insert(category);
    }

    @Override
    public void deleteCategory(int id) throws Exception {
        categoryMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Category selectCategoryById(int id) throws Exception {

        return categoryMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateCategory(Category c) throws Exception {
        categoryMapper.updateByPrimaryKey(c);
    }

}
