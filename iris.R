# 
# 
# Author: Qin Yue Chen
###############################################################################
pkgTest <- function(libName)
{
	if (!require(libName,character.only = TRUE))
	{
		install.packages(libName,dep=TRUE)
		if(!require(libName,character.only = TRUE)) stop("Package not found")
	}
}
pkgTest("Formula");
pkgTest("party");
pkgTest("partykit");
pkgTest("rpart");
dim(iris);
names(iris);
str(iris);
attributes(iris);
iris[1:5,];
iris[1:10, "Sepal.Length"];
iris$Sepal.Length[1:10];
summary(iris);
table(iris$Species);
pie(table(iris$Species));
var(iris$Sepal.Length);
cov(iris$Sepal.Length, iris$Petal.Length);
cor(iris$Sepal.Length, iris$Petal.Length);
hist(iris$Sepal.Length);
plot(density(iris$Sepal.Length));
plot(iris);
iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris);
print(iris_ctree);
plot(iris_ctree);
iris_rtree<-rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris, method="class");
print(iris_rtree);
iris_rtree<-as.party(iris_rtree)
plot(iris_rtree);

