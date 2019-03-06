笔记内容：（100pp+）提交至github

知识点总结

课后实践任务分析

关键代码分析

收获及感想



代码：（6000+）每周至少提交一次至github

课堂实践

课后练习

课程项目



# HTML简介

## HTML是什么

HTML 是用来描述网页的一种语言。HTML 指的是超文本标记语言 (**H**yper **T**ext **M**arkup **L**anguage)。

HTML 不是一种编程语言，而是一种标记语言(markup language)，标记语言是一套标记标签(markup tag)，HTML 使用标记标签来描述网页。

## HTML标签

HTML 标记标签通常被称为 HTML 标签 (HTML tag)，是由尖括号包围的关键词，通常成对出现，比如 \<b> 和\</b>。标签对中的第一个标签是开始标签（开放标签），第二个标签是结束标签（闭合标签）。

**HTML文档=网页**

```
<html>
<body>

<h1>一个标题</h1>

<p>一个段落</p>

</body>
</html>
```

\<html>\</html>之间的内容描述网页

\<body>\</body>之间文本是可见的页面内容

标题（Heading）通过\<h1>-\<h6>定义。

```
<h1>标题一</h1>
<h2>标题二</h2>
<h3>标题三</h3>
```

段落：

```
<p>段落内容</p>
```

链接：

```
<a href="http://pku.edu.cn">北大官网</a>
```

图像：

```
<img src="index.jpg" width="100" height="200"/>
```

图像的名称和尺寸为属性形式。

水平线：

用于分隔内容

```
<p>我是段落1</p>

<hr />

<p>我是段落2</p>
```

注释：

```
<!--我是注释-->
```

换行：

```
<p>这是<br />一个带换行<br />的段落</p>
```

\<meta>标签：

\<meta>元素提供有关页面的元信息，比如针对搜索引擎和更新频度的描述和关键词。位于文档的头部，不包含任何内容。\<meta>标签的属性定义了与文档相关联的名称/值对。

必需的属性：

|  属性   |    值     |                    描述                    |
| :-----: | :-------: | :----------------------------------------: |
| content | some_text | 定义与 http-equiv 或 name 属性相关的元信息 |

可选的属性：

|    属性    |                              值                              |                          描述                           |
| :--------: | :----------------------------------------------------------: | :-----------------------------------------------------: |
| http-equiv |       content-type<br>expires<br>refresh<br>set-cookie       |            把 content 属性关联到 HTTP 头部。            |
|    name    | author<br>description<br>keywords<br>generator<br>revised<br>others | 把 content 属性关联到一个名称，可自由选取有意义的名称。 |
|   scheme   |                          some_text                           |           定义用于翻译 content 属性值的格式。           |



```
<meta name="viewport" content="width=device-width,initial-scale=1.0">
```

场景：移动设备默认viewpoint是layout viewpoint（比屏幕要宽），但是进行移动设备网站的开发时，需要ideal viewpoint。

该meta标签作用：让当前viewpoint的宽度等于移动设备的宽度，同时不允许用户手动缩放，否则就会出现横向滚动条。

![layout viewpoint](/Users/zhangjunlan/Desktop/html笔记/layout viewpoint.png)

<center><em>layout viewpoint<em></center>

![visual viewpoint](/Users/zhangjunlan/Desktop/html笔记/visual viewpoint.png)

<center><em>visual viewpoint<em></center>

***ideal viewpoint***

1. 不需要用户缩放和横向滚动就能正常查看网站所有内容
2. 显示合适的文字大小

理想情况：一段14px的文字、图片无论是在何种密度屏幕，何种分辨率下，显示出来的大小都差不多。ideal viewport没有一个固定的尺寸，不同的设备各不相同。所有的iphone的ideal viewport宽度都是320px，无论屏幕宽度是320还是640，也就是说，在iphone中，css中的320px就代表iphone屏幕的宽度。

![](/Users/zhangjunlan/Desktop/html笔记/320px.png)

![](/Users/zhangjunlan/Desktop//html笔记/640px.png)



**content属性值：**

width：设置layout viewpoint的宽度，为正整数或字符串“device-width”。

height：设置layout viewpoint的高度，此属性不重要，很少使用。

Initial-scale：设置页面的初始缩放值，可以带小数。取值1.0代表页面按实际尺寸显示，无任何缩放。

minimum-scale/maximum-scale：允许用户的最小/最大缩放值

user-scalable：是否允许用户进行缩放，yes/no：允许/禁止。



**区别div/section/article:**

div：

- 定义：文档中的分区或节(division)
- 使用：作为布局以及样式化时使用（此时三者并无区别，但div更常用）
- 提示：\<div>是一个*块级元素*，浏览器通常会在div前后放置一个换行符。



section：

- 定义：文档中的节，一般带有标题。

- ```
  <section>
  	<h1>我是标题</h1>
  	<p>我是段落</p>
  </section>
  ```

- 使用场合：文章的章节、标签对话框中的标签页或者论文中带有编号的部分。

- 提示：section不仅仅是一个普通的容器标签，这区别于div标签（仅为了样式化或方便脚本使用）。一般来说，当元素内容明确出现在*文档大纲*中时，section就是适用的。



article：

- 定义：独立的自包含内容。一般来说，article会有标题部分（包含在header内），有时会包含footer。
- 使用场合：一段内容脱离了所在语境，仍是完整独立的，如博客中一篇文章，论坛中的一篇帖子等，就用article。
- 提示：虽然section也是带有主题性的一块内容，但是article本身，无论从结构还是内容上都是独立完整的。



Tips：

HTML

# HTML元素

HTML 元素指的是从开始标签（start tag）到结束标签（end tag）的所有代码。

![](/Users/zhangjunlan/Desktop/html笔记/element.png)

**语法：**

- 没有内容的HTML元素称为空元素，如\<br>（定义换行），在开始标签中添加斜杠，比如\<br />，是关闭空元素的正确方法，HTML、XHTML 和 XML 都接受这种方式。
- HTML 标签对大小写不敏感：\<P> 等同于\<p>。许多网站都使用大写的 HTML 标签。万维网联盟（W3C）在 HTML 4 中*推荐*使用小写，而在未来 (X)HTML 版本中*强制*使用小写。

# HTML属性

HTML 属性提供了有关 HTML 元素更多的信息。属性总是以名称/值对的形式出现，如：name="value"，属性总是在开始标签中规定，且始终被包括在括号内。

# HTML样式

# HTML格式化

# HTML引用

# HTML计算机代码

