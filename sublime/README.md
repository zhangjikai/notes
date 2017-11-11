# Sublime Text

<!-- toc -->

## 配置
### 配置文件
```js
{
	"auto_indent": true,
	"color_scheme": "Packages/Color Scheme - Default/Dawn.tmTheme",
	"default_encoding": "UTF-8",
	"font_face": "YaHei Consolas Hybrid",
	"font_size": 11,
	"ignored_packages":
	[
		"Vintage"
	],
	"line_padding_bottom": 1,
	"line_padding_top": 1,
	"update_check": false,
	"tab_size" : 4,
	"translate_tabs_to_spaces" : false
}
```

### 字体配置
[YaHei-Consolas-Hybrid-1.12](https://github.com/iyannik0215/YaHei-Consolas-Hybrid-1.12)， 中文使用雅黑，英文使用 Consolas，可以解决 ubuntu 里中英文不对齐的问题

## 插件

### Markdown
* `Markdown Extended`
* `MarkdownLight`

### 编码
* `GBK Encoding Support`
* `Convert to UTF8`

### 格式化
* `Alignment` - 对齐
* `SublimeAStyleFormatter` - 格式化代码
    - 快捷键: `crtl + alt + f`

### 终端
* Ternimal - 打开终端（定位到当前文件夹）
    * 配置：`Setting User`
    ```
    {
	    "terminal": "terminator"
    }
    ```

## 使用

* `Ctrl+G` - 跳转到指定行
* `Ctrl+R` - 跳转到方法

### 选择指定行的区域

1. `Ctrl+G` - 跳转到区域的行首
2. `Edit` -&gt; `Mark` -&gt; `Set Mark`
3. `Ctrl+G` - 跳转到区域行尾
4. `Edit` -&gt; `Mark` -&gt; `Select to Mark`
