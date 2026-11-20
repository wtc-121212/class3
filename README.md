图书数据库作业

 环境
- MySQL 版本：26.10.0
- 本地安装 / Docker：本地安装
- 数据库名称：bookshop

从空库复现
1.链接数据库
2.执行schema
3.执行seed
4.使用queries查询

 设计解释
创建两张表对应数据
authors：作者编号、姓名、简介和创建时间
books：编号、书名、作者编号、价格、库存
authors.id和 books.id是 两张表的主键，对应具体作者，具体书
books.author_id 是外键，引用 authors.id
这个类型可以保留小数
 六道题的预期结果
预期结果放在png里面用截图展示
q5的边界条件因为赶作业到ddl了没时间了
q6没时间写了。。。
排错
- 现象：最开始没适配中文后面用ai查了下改了
- 原因：我也不知道原因，可能字符版本没选对吧
- 处理与复验：在workbench里使用：Edit → Preferences → Fonts & Colors，字体选 Noto Sans CJK / Microsoft YaHei；
 AI 辅助使用说明
 使用工具与范围：使用了ai解决中文乱码问题以及最开始一直创建不了bookshop的问题
- 我自己审阅、修改和验证了哪些内容：自己照着上课讲的内容及课件手打了一编然后看output检查了下输出结果是否相同 审阅应该就是改了下我的大小写习惯 按照课件的大小写区分了一遍增加可读性
