df<-read.csv("C:\\Users\\jsy\\Downloads\\total.csv")
df             
df['group'] = c(9,7,3,2,11,6,5,10,4,1,12,8) # group명 수정, LDAvis와 불일치

str(df)

mean(df$importance) #4.368675
mean(df$satisfaction) #4.244752

library(ggplot2)

df$group = factor(df$group)
#ggtitle("Scatter Plot by Type, using different Colours")
ggplot(df, aes(x = importance, y =satisfaction, color = group, size=count)) + 
  geom_point(shape=19,stroke=7)+
  labs(size='count')
