package com.team.springboot.service;

import com.team.springboot.pojo.Product;

import java.util.List;

public interface ProductService {
    int selectCount();
    Product selectProductById(int p_ID);
    Product selectProductsById(int p_ID);
    void deleteProductById(int p_ID);
    Product selectProductallById(int p_ID);
    void updateProduct(Product product);
    int selectCountByaccount(String p_Account);
    Product imgHref(int p_Id);
    void setHref(String p_href, int p_Id);
    void setHref1(String p_href, int p_Id);
    Product selectById(int p_Id);
    int selectCountByp_Name(String p_Name);
    int selectCountByp_nameAndaccount(String p_Account,String p_Name);
}
