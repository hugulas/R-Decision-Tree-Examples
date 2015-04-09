# R的决策树案例

## 用到的数据
这里是我在学习R的决策树过程中,写的一些例子代码,分别用到了三组不同的数据.
* R自带的iris
* UCI的[Statlog-Shuttle](https://archive.ics.uci.edu/ml/datasets/Statlog+(Shuttle)) (全部是数值型)
* UCI的[Covertype](http://archive.ics.uci.edu/ml/datasets/Covertype) 用于性能测试

感谢[UCI Machine Learning](http://cml.ics.uci.edu/)为数据分析学习提供的这个数据库, 里面可以非常方便的找到你所需要的数据集。

## 下面是学习过程中阅读的一些参考文献：

* [R语言与机器学习学习笔记（分类算法）（2）决策树算法](http://blog.csdn.net/yujunbeta/article/details/14986219)

* C50使用的入门教程:
[DECISION TREES IN R USING THE C50 PACKAGE](http://connor-johnson.com/2014/08/29/decision-trees-in-r-using-the-c50-package/)

* CART和rpart入门
[Quick R: Tree-Based Models](http://www.statmethods.net/advstats/cart.html)

* 关于经常会被作为参数的Formula
[R笔记（1）：formula和Formula](http://site.douban.com/182577/widget/notes/10567181/note/318916395/)

## 用到的R的分类算法包
* C50
* party
* rpart
* tree

在使用决策树算法时，我们常常要考虑以下几个问题：

1. 如何建立分类模型

2. 如何使用分类模型进行预测

3. 如何查看分类树

4. 如何评估预测结果

5. 如何改进预测结果
