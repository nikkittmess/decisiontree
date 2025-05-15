Marks <- sample(x = 100:300,size = 200,replace = T)
Gender <- sample(x = c("Male","Female"),size = 200,replace = T,prob =  c(0.4,0.6))
weight <- sample(x = 40:60,size = 200,replace = T)

students=data.frame(Marks,Gender,stringsAsFactors =FALSE)
cbind(students,group=(""))
students$group=c(if (students$Marks>200 && students$Gender="Male"){
  students$group='A')
}
else if (students$Marks>200 && students$Gender="Female"){
  students$group='B',NULL)
}
else if (students$Marks<=200 && students$Gender="Male"){
  students$group='C'
}
else if (students$Marks<=200 && students$Gender="Female"){
  students$group='D'
})


