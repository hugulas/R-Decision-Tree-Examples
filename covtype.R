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
covtype<-read.table("covtype.data", header = FALSE,sep = ",");
x<-covtype[,1:length(names(covtype))-1];
y<-covtype[,length(names(covtype))];
covModel<-C50::C5.0(x,factor(y));
summary(covModel);
