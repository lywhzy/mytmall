package lyw.mapper;

import lyw.pojo.Category;
import lyw.util.Page;

import java.util.List;

public interface CategoryMapper {
    List<Category> list(Page page);
    int total();
    void addCategory(Category category);
}
