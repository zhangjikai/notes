## 基本使用
- [返回页面的两种方式](#返回页面的两种方式)

### 返回页面的两种方式
```java

@RequestMapping("/")
public ModelAndView welcome (ModelMap model) {
    ModelAndView view = new ModelAndView("index");
    model.addAttribute("introSelf", "I'm Spring, I'm Coming.");
    return view;
}

@RequestMapping("/")
public String welcome (ModelMap model) {
    model.addAttribute("introSelf", "I'm Spring, I'm Coming.");
    return "index";
}
```

