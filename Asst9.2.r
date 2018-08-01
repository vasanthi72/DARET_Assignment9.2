data(mtcars)
table(mtcars$am)
trans <- as.data.frame(table(mtcars$am))
trans
SamProp <- trans[1,2]/sum(trans$Freq)
PopProp <- 0.4
n <- sum(trans$Freq)
z <- (SamProp - PopProp) / (sqrt(PopProp*(1-PopProp))/n)
z
((19/32)-0.4)/sqrt((0.4*(1-0.4))/32)
SamProp
19/32
z <- (SamProp - PopProp) / sqrt((PopProp*(1-PopProp))/n)
z
qnorm(1-(0.5/2))
qnorm(1-(0.05/2))
pvalue <- 2 * pnorm(z,FALSE)
pvalue
z
pnorm(z)
prop.test(trans[1,2],sum(trans$Freq),0.4,two.sided,0.95,TRUE)
prop.test(trans[1,2],sum(trans$Freq),0.4,"two.sided",0.95,TRUE)
pvalue <- 2 * pnorm(z,lower.tail=FALSE)
pvalue
1-pnorm(z)
2 * (1-pnorm(z))
prop.test(trans[1,2],sum(trans$Freq),0.4,"two.sided",0.95,FALSE)
savehistory("E:/kamagyana/Computing/DARET/Submissions/Asst9.2.r")
