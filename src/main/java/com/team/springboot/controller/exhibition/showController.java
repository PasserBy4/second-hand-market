package com.team.springboot.controller.exhibition;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.team.springboot.pojo.ProductCategory;
import com.team.springboot.service.ProductCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class showController {

    private List<List<ProductCategory>> row1ToRow2(List<ProductCategory> singleList) {
        List<List<ProductCategory>> doubleList = new ArrayList<>();
        for (int i = 0; i < singleList.size(); i++) {
            if (i % 2 == 0) {
                List<ProductCategory> temp = new ArrayList<>();
                temp.add(singleList.get(i));
                if (i + 1 < singleList.size())
                    temp.add(singleList.get(i + 1));
                doubleList.add(temp);
            }
        }

        return doubleList;
    }

    @Autowired
    ProductCategoryService productCategoryService;

    //前台展示初始化
    @RequestMapping({"/showAll","/"})
    public String showAll(Model m, @RequestParam(defaultValue = "1", required = true, value = "pageNo") Integer pageNo) {
        List<ProductCategory> digitalEquipmentList = productCategoryService.selectProductCategorysByp_name1("电子产品");
        List<ProductCategory> dailySupplyList = productCategoryService.selectProductCategorysByp_name1("衣帽鞋伞");
        List<ProductCategory> bookList = productCategoryService.selectProductCategorysByp_name1("书籍教材");

        m.addAttribute("digitalEquipmentList", row1ToRow2(digitalEquipmentList));
        m.addAttribute("dailySupplyList", row1ToRow2(dailySupplyList));
        m.addAttribute("bookList", row1ToRow2(bookList));

        return "html/index";
    }

    //前台搜索功能
    @RequestMapping("/search")
    public String search(Model m, @RequestParam(defaultValue = "1", required = true, value = "pageNo") Integer pageNo,
                         @RequestParam("search") String search) {
        Integer pageSize = 15;
        search = "%" + search + "%";
        PageHelper.startPage(pageNo, pageSize);
        List<ProductCategory> list = productCategoryService.selectProductCategorysByp_name1(search);
        PageInfo<ProductCategory> pageInfo = new PageInfo<ProductCategory>(list, pageSize);
        m.addAttribute("productList", pageInfo);
        return "html/shop-left-sidebar";
    }

    @RequestMapping("/searchAll")
    public String searchAll(Model m)
    {
        Integer pageSize = 15;
        List<ProductCategory> list = productCategoryService.selectProductAll();
        PageInfo<ProductCategory> pageInfo = new PageInfo<ProductCategory>(list,pageSize);
        m.addAttribute("productList",pageInfo);
        return "html/shop-left-sidebar";
    }
}
