

ssc install hoi, replace 

which hoi

* Example 7.12: A Linear Probability Model of Arrests
use http://fmwww.bc.edu/ec-p/data/wooldridge/crime1, clear

gen arr86=(~narr86)

reg arr86 pcnv avgsen tottime ptime86 qemp86

hoi arr86 pcnv avgsen tottime ptime86 qemp86

xi: hoi arr86 pcnv avgsen tottime ptime86 i.qemp86

 
hoi arr86 pcnv avgsen tottime ptime86 qemp86, by(born60)