package com.foodappbackend.project.service;

import com.foodappbackend.project.model.Category;
import com.foodappbackend.project.repository.CategoryRepository;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.mockito.junit.jupiter.MockitoExtension;


import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
class CategoryServiceTest {

    @Mock
    private CategoryRepository categoryRepository;

    @InjectMocks
    private CategoryService categoryService;

    @Test
    public void testGetAllCategories(){
        List<Category> categories = Arrays.asList(new Category(),new Category());
        Mockito.when(categoryRepository.findAll()).thenReturn(categories);

        // sa ovim provjeravamo ispravnost getAllCategories u categoryService
        List<Category> result = categoryService.getAllCategories();

        Assert.assertEquals(2, result.size());
    }

    @Test
    public void testSaveCategory(){

        Category category = new Category();
        category.setName("Test category");

        Mockito.when(categoryRepository.save(Mockito.any(Category.class))).thenReturn(category);

        Category result = categoryService.saveCategory(category);

        Assert.assertEquals("Test category",result.getName());

    }

}