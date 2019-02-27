**能否保持如初学者一般的热情和专注，决定了在某件事上能走多远，能做多好。**

# 第一周

> 摄氏温度华氏温度转换公式：

C = (F - 32) / 1.8

F = C *1.8 + 32

```python
TempStr = input("请输入带有符号的温度值:")
if TempStr[-1] in ['F', 'f']:
    C = (eval(TempStr[0:-1]) - 32)/1.8
    print("转换后的温度是{:.2f}C".format(C))
elif TempStr[-1] in ['C', 'c']:
    F = 1.8*eval(TempStr[0:-1]) + 32
    print("转换后的温度是{:.2f}F".format(F))
else:
    print("输入格式错误")
```

**编译和解释**

源代码：采用某种编程语言编写的计算机程序，人类可读。

目标代码：计算机可以直接执行，人类不可读（专家除外）。



两种执行方式：

编译：将源代码一次性转换为目标代码的过程。

*编译器：执行编译过程的程序*

解释：将源代码逐条转换成目标代码同时逐条运行的过程。

*解释器：执行解释过程的程序*



两种编程语言：（根据执行方式不同）

静态语言：使用编译执行的编程语言：C/C++语言、Java语言

*优势：编译器一次性生成目标代码，优化更充分。程序运行速度更快。*

脚本语言：使用解释执行的编程语言：Python语言、JavaScript语言、PHP语言

*优势：执行代码需要源代码，维护更灵活，可跨多个操作系统平台。*



**程序基本编写方法**

IPO：input、process、output

处理方法统称算法，算法是一个程序的灵魂。



**求解计算问题的步骤**

* 确定IPO：明确计算部分和功能边界

* 编写程序：将计算求解的设计变成现实

* 调试程序：确保程序按照正确逻辑能够正确运行



**Python的语法元素**

**程序的格式框架**：缩进、注释



**缩进**

缩进是表达程序的格式框架

* 缩进是语法的一部分，不正确则导致程序运行错误
* 缩进是表达代码间包含和层次关系的唯一手段
* 缩进在程序内保持一致即可（4空格/1TAB）



**注释**：代码要做什么&如何做的

单行：# 注释内容

多行： ```   第一行注释

​		      第二行注释   ```



**命名与保留字**

**变量的命名**

变量是用来保存和表示数据的占位符号

变量采用标识符（名字）来表示，关联标识符的过程叫命名。

**命名规则**：

1. 只能包含字母、数字和下划线（中文虽不会报错，但是最好不用）。首字母不能是数字，可以是字母或下划线。
2. 变量名不能包含空格，可用下划线分隔单词。
3. 不要将Python函数名和关键字用做变量名。
4. 变量名应既简短又具有描述性。
5. 慎用小写字母l和大写字母O，可能错认为1和0。

P.S.目前而言，尽量避免使用大写字母。



**保留字**：被编程语言内部定义并保留使用的标识符

* Python语言中有33个保留字（关键字）

* 保留字是编程语言的基本单词，大小写敏感。

![保留字](/Users/zhangjunlan/Desktop/Python学习笔记/保留字.png)



**数据类型**:字符串、整数、浮点数、列表

供计算机程序理解的数据形式

* 程序设计语言不允许存在语法歧义，需要定义数据的形式

* 程序设计语言通过一定的方式向计算机表达数据的形式



例：10，011，101

整数类型： 10011101

字符串类型：“10，011，101”

列表类型：[10,011,101]



**字符串**：由0个或多个字符组成的**有序**字符序列，可以对其中的字符进行索引。

*字符串的序号*：正向递增&反向递减序号

-12	-11	-10	-9	-8	-7	-6	-5	-4	-3	-2	-1	

**请**	**输**	**入**	**带**	**有**	**符**	**号**	**的**	**温**	**度**	**值**	**：**

0	 1	 2  	 3  	 4  	 5 	 6  	 7  	 8 	 9 	10 	11 

**字符串的使用**

1. 使用[ ]获取字符串中的一个或者多个字符

* 索引：返回字符串中单个字符 	<字符串>[M]

  例：TempStr[-1]

* 切片：返回字符串中一段字符子串	<字符串>[M:N]

  例：TempStr[0:-1] *不包括最后一个字符*


2. 使用方法修改字符串的大小写

*方法：python可对数据执行的操作。*

方法title()：将每个单词的首字母大写

```name = "ada lovelace"
name = "ada lovelace"
print(name.title())
```

```
Ada Lovelace
```

全部大写/小写：

```name = "Ada Lovelace"
name = "Ada Lovelace"
print(name.upper())
print(name.lower())
```

```
ADA LOVELACE
ada lovelace
```

方法lower()用于储存数据很有用。



3. 合并（拼接）字符串：使用“+”号。

```
first_name = "ada"
last_name = "lovelace"
full_name = first_name + " " + last_name 

#将消息储存于变量中使最后的print语句更简单。
message = "Hello, " + full_name.title() + "!" 
print(message)
```

```
Hello, Ada Lovelace!
```



4. 使用制表符或换行符来添加空白

制表符：\t

换行符：\n

```
print("Languages:\n\tPython\n\tC\n\tJavaScript")
```

```
Languages:
	Python
	C
	JavaScript
```



5. 删除空白

删除末尾、开头、两端空白的方法：rstrip()、lstrip()、strip()

```
>>> favorite_language = ' python '
>>> favorite_language = favorite_language.rstrip()
' python'
>>> favorite_language = favorite_language.lstrip()
'python '
>>> favorite_language = favorite_language.strip()
'python'
```

剔除函数常用于在储存用户输入前对其进行清理。



6. 使用字符串时避免语法错误

在用单引号括起的字符串中，如果包含撇号，就会引起错误，因为Python会将单引号和撇号之间的内容视为一个字符串。改成双引号就可以解决这个问题。



**数字类型**：整数、浮点数

**整数**：数学中的整数 

例：32、-89

* 运算：加(+)减(-)乘()除(/)乘方(**）

* 支持运算次序



**浮点数**：带小数点的数字（小数点可出现在数字任何位置）。 相当于数学中带小数点的实数。

例：1.8、-1.8



**使用函数str()避免类型错误**

```
age = 23
message = "Happy" + str(age) + "rd Birthday!"
print(message)
```

```
Happy 23rd Birthday!
```

如果不加str()，python将无法识别。str()函数显式指出将这个整数用作字符串。



**列表**：由0个或多个数据组成的**有序**序列。因通常包含多个元素，故以复数名称（如letters、names）命名列表比较好。列表使用方括号[ ]表示，用逗号分隔各元素。使用in判断一个元素是否在列表中。

例：

```
bicycles = ['trek', 'cannondale', 'redline', 'specialized']
print(bicycles)
```

```
['trek', 'cannondale', 'redline', 'specialized']
```

例：TempStr[-1] in ['C', 'c']：判断前者是否与列表中某个元素相同



**访问列表元素**

```
bicycles = ['trek', 'cannondale', 'redline', 'specialized']
print(bicycles[0])
```

```
trek
```

请求获取列表元素时，Python只返回该元素，而不包括方括号和引号。

Python中第一个列表元素为0，不是1，访问最后一个元素可以将索引指定为-1，倒数第二个为-2，以此类推。



**使用列表中的各个值**

可像使用变量一样使用列表中的各个值。

```
bicycles = ['trek', 'cannondale', 'redline', 'specialized']
message = "My first bicycle was a " + bicycles[0].title() + "."
print(message)
```

```
My first bicycle was a Trek.
```



**修改、添加和删除元素**

修改列表元素：指定列表名、索引和该元素新值。

```
motorcycles = ['honda', 'yamaha', 'suzuki']
motorcycles[0] = 'ducati'
print(motorcycles)
```

```
['ducati', 'yamaha', 'suzuki']
```



添加元素：方法append() 添加到列表末尾

```
motorcycles = []
motorcycles.append('honda')
motorcycles.append('yamaha')
motorcycles.append('suzuki')
print(motorcycles)
```

```
['honda', 'yamaha', 'suzuki']
```



插入元素：方法insert()在任何位置添加

```
motorcycles = ['honda', 'yamaha', 'suzuki']
motorcycles.insert(0, 'ducati')
print(motorcycles)
```

```
['ducati', 'honda', 'yamaha', 'suzuki']
```



删除元素

1. 使用del语句（如果知道元素在列表中的位置）

```
motorcycles = ['honda', 'yamaha', 'suzuki']
del motorcycles[0]
print(motorcycles)
```

```
['yamaha', 'suzuki']
```

2. 使用方法pop()：删除列表末尾元素后并接着使用它的值

pop源自类比：列表相当于栈，删除列表末尾元素相当于**弹出**栈顶元素。

```
motorcycles = ['honda', 'yamaha', 'suzuki']
print(motorcycles)
#弹出一个值并将其储存到变量popped_motorcycle中
popped_motorcycle = motorcycles.pop()
print(motorcycle)
#依然可以访问被删除的值
print(popped_motorcycles)
```

```
['honda', 'yamaha', 'suzuki']
['honda', 'yamaha']
suzuki
```

3. 弹出任意位置元素

```
motorcycles = ['honda', 'yamaha', 'suzuki']
first_owned = motorcycles.pop(0)
print("The first motorcycle that I owned was a " + first_owned.title() + ".")
```

```
The first motorcycle that I owned was a Honda.
```



4. 不知位置根据值删除元素：方法remove()

```
motorcycles = ['honda', 'yamaha', 'suzuki']
print(motorcycles)
motorcycles.remove('yamaha')
print(motorcycles) 
```

```
['honda', 'yamaha', 'suzuki']
['honda', 'suzuki']
```





**语句与函数**：赋值语句、分支语句、函数

**赋值语句**

由赋值符号构成的一行代码

* 赋值语句用来给变量赋予新的数据值

* 赋值语句右侧的数据类型同时作用于变量



**分支语句**

由判断条件决定程序运行方向的语句:if elif else

冒号：语法的一部分



**函数**

根据输入参数产生不同输出的功能过程

使用：<函数名>(<参数>)

 例：eval(TempStr[0:-1])	TempStr[0:-1]是参数



**Python程序的输入输出**：input() output() eval()

**输入函数input()**：从控制台获得用户输入的函数

使用格式：

<变量> = input(<提示信息字符串>)

*用户输入的信息以字符串类型保存在<变量>中*

TempStr = input("请输入")  # TempStr保存用户输入的信息



**输出函数print()**：以字符形式向控制台输出结果的函数

基本使用格式：print(<拟输出字符串或字符串变量>) 

*字符串类型的一对引号仅在程序内部使用，输出无引号*

如print("输入格式错误")   #向控制台输出 输入格式错误



**print()函数的格式化**

print("转换后的温度是{:.2f}C".format(C))

*{}表示槽，后面的变量C填充到槽中。*

*{:.2f}表示将变量C填充到这个位置时取小数点后2位*

例：C的值为123.456789，则输出结果为123.45C



**评估函数eval()**：去掉参数最外侧引号并执行余下语句的函数

例：

> eval("1") 

1

> eval("1+2")

3

> eval('"1+2"')

'1+2'

> eval('print("Hello")')

Hello



**python之禅**

```
The Zen of Python, by Tim Peters

Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
Special cases aren't special enough to break the rules.
Although practicality beats purity.
Errors should never pass silently.
Unless explicitly silenced.
In the face of ambiguity, refuse the temptation to guess.
There should be one-- and preferably only one --obvious way to do it.
Although that way may not be obvious at first unless you're Dutch.
Now is better than never.
Although never is often better than *right* now.
If the implementation is hard to explain, it's a bad idea.
If the implementation is easy to explain, it may be a good idea.
Namespaces are one honking great idea -- let's do more of those!
```

代码应漂亮而优雅，尽量简单可行、易于理解、对同一问题解决方案应大致相同。