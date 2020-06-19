## ----echo=FALSE---------------------------------------------------------------
knitr::opts_chunk$set(comment = NA, message = FALSE, warning = FALSE)

## ----gh-installation, eval = FALSE--------------------------------------------
#  devtools::install_github("myeomans/doc2concrete")

## ----eval=TRUE----------------------------------------------------------------


library(doc2concrete)

doc2concrete(c("I am concrete","I am abstract"),
             domain="open")

doc2concrete(c("this is a brown rock.","this is a vague idea."),
             domain="open")


## ---- eval=TRUE---------------------------------------------------------------

data("feedback_dat")

cor.test(doc2concrete(feedback_dat$feedback,domain="open"),
    feedback_dat$concrete)

cor.test(doc2concrete(feedback_dat$feedback,domain="advice"),
         feedback_dat$concrete)


doc2concrete(c("Be more concrete","Be more abstract"),
             domain="advice")

doc2concrete(c("Act like a brown rock.","Act like a vague idea."),
             domain="advice")


