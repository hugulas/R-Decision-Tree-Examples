# StatLog C50
# 
# Author: chenqiny
###############################################################################
pkgTest <- function(x)
{
	if (!require(x,character.only = TRUE))
	{
		install.packages(x,dep=TRUE)
		if(!require(x,character.only = TRUE)) stop("Package not found")
	}
}
pkgTest("Formula");
pkgTest("party");
pkgTest("partykit");
pkgTest("C50");
pkgTest("tree");
pkgTest("rpart");
covtype<-read.table("covtype.data", header = FALSE,sep = ",");
x<-covtype[,1:length(names(covtype))-1];
y<-covtype[,length(names(covtype))];
#C50 
covModel<-C50::C5.0(x,factor(y));
c50result<-summary(covModel);
c50result;
#CART
covModel2<-tree(V55~.,covtype);
covModel2;
cartresult<-summary(covModel2);
cartresult;
#CTREE error result?
covModel3<-ctree(V55~.,covtype);
print(covModel3);
ctreeesult<-summary(covModel3);
ctreeesult;
#RPART
covModel4<-rpart(V55~.,covtype,method="class");
print(covModel4);
