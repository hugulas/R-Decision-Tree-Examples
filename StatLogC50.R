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
shuttle<-read.table("shuttle.trn", header = FALSE,sep = " ");
shuttletest<-read.table("shuttle.tst", header = FALSE,sep = " ");
x<-shuttle[,1:9];
y<-shuttle[,10];
testx<-shuttletest[,1:9];
testy<-shuttletest[,10];
shuttleModel<-C50::C5.0(x,factor(y));
p<-predict(shuttleModel,testx,type="class");
sum( p == testy ) / length( p );