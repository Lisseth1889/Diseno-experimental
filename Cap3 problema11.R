df=read.csv("Spray.csv",sep=";")
df

str(df)

df$Marca=as.factor(df$Marca)
str(df)

boxplot(Y~Marca,data=df)

modelo=aov(Y~Marca,data=df)
summary(modelo)

1-pf(1.867,1,16)

qqnorm(modelo$residuals)
qqline(modelo$residuals)

shapiro.test(modelo$residuals)

library("car")

leveneTest(Y~Marca,data=df)

plot(modelo$residuals)
plot(df$Marca,modelo$residuals)
plot(modelo$fitted.values,modelo$residuals)
abline(h=0)


