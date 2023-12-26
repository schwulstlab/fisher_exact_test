
fisher_test<-function(a_yes,b_yes,a_no,b_no){

	test<-matrix(c(a_yes,b_yes,a_no,b_no), 
			nr=2, dimnames=list( c("a","b"),c("w","wo") ) )

	fe_greater_test<-fisher.test(test,alternative="greater")
	fe_less_test<-fisher.test(test,alternative="less")
	fe_2sided_test<-fisher.test(test,alternative="two.sided")

	fe<-cbind(fe_greater_test$p.value,fe_less_test$p.value,fe_2sided_test$p.value)	
	fe

	}
