package lyw.service.serviceImpl;

import lyw.mapper.CategoryMapper;
import lyw.pojo.Category;
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
        list = categoryMapper.list();
        return list;
    }
}
