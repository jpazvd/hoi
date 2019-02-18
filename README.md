# HOI: Stata module to compute the Human Opportunity Index (or Equity Adjuste Coverage Rate)

## Description

  hoi computes the Human Opportunity Index proposed by Barros et al (2008), including the Coverage of Basic Opportunities (C), the Dissemilarity Index (D), and the Human OpportunityIndex (HOI). Analytical standard errors are reported for the C, D, and HOI. The program also computes two decompositions of changes of the HOI: (i) the scale and distribution decomposition Barros et al (2008); and, (ii) the composition, equalization and scale decomposition presented in (Molinas et al, 2010 and Velez et al, 2010).

  If the by option is specified the command will automatically produce a counterfactual using the coefficients from an alternative period in time or palce.

  If the coverage rate of a selected outcome is equal to 100 or 0, hoi will produce the respective HOI withough relying on the logit.

### Options

- by(groupvar) repeats the command for the two groups of observations for which the values of the variables in varlist are the same. Groupvar must be an integer variable with labels.

- base(refcat) sets the value of the comparation categoric group that defided the base group. If the base category was not defined hoi will use the first category.

- format specify the display format for variables. Default format %9.3f.

- estimates shows the coefficients of the logit model used on the calculation of the index.

- level sets the level of the confidence interval. Default value 95%.

- adjust1([var[= #] ...]) provides the specifications of the first adjusted predictions. The estimate is computed for each variables, setting the variables specified in [var[= #] ...] to their mean or to the specified num he = # part is specified.  Variables used for the estimation but not included in adjust variable list are left at their current values, observation by observation.

- keep preserve the predicted values used in the computation of the index.

- nose omit the standard errors and respective confidence intervals.

- coef(string) this option allows to choice of the coeeficients used in the estimation of the HOI.  Three options are allowed: all - uses the cofficient the full sample will be used; value of by - analysist can also chose a particular reference category by selecting a specific value of the by variable, to be used in all estimations of the index; blank - the default option is to estimate a seperate logit of each category of the by variable.

- decomp1 reports the scale and distribution decomposition (Paes de Barros et al, 2008). If not specifically determined through the base option, the first category in the list is used as reference.

- decomp2 reports the composition, equalization and scale decomposition (Molinas et al, 2010). If not specifically determined through the base option, the first category in the list is used as reference. It is important to note that the scale effect reported in decomp2 is not the same as the scale effect reported in decomp1.

- mixcoef(string) this option allows one to chose the coefficient from which population will be used on the composition, equalization and scale decomposition (decomp2).  Three options are allowed: all - uses the cofficient a pooled regression; value of by - analysist can also chose a particular reference category by selecting a specific value of the by variable, to be used in all estimations of the index; blank - the default option is to estimate a seperate logit of each category of the by variable.

- simple reports only the C, D, and HOI. Omits summary statistics regarding the logit, dataset used and information lost, and the share of the vulnerable population.

- nowarning omitts warning messages.

- asis forces retention of perfect predictor variables and their associated perfectly predicted observations and may produce instabilities in maximization; see [R] probit.

### Output

 - Converage (C) Coverage of Basic Opportunities
 - Dissemilarity (D) Dissemilarity Index
 - Human Opportunity Index (HOI) Human Opportunity Index
 - Pseudo R2 from the logit model
 - Obs Logit number of observations used in the logit model
 - Obs number of observations of the dependent variable
 - Wtg Pop weighted population
 - Vulnerable Pop number of vulnerable populations (pi <= pBar)
 - Vulnerable (%) share of vulnerable population
 - Obs 1 number of observations used in the logit model
 - Obs 2 number of observations of the dependet variable
 - Loss (%) share of observations loss given the set of circunstances

## Suggested Citation
[Joao Pedro Azevedo & Samuel Franco & Eliana Rubiano & Alejandro Hoyos, 2010. "HOI: Stata module to compute Human Opportunity Index," Statistical Software Components S457191, Boston College Department of Economics, revised 05 Apr 2011.](https://ideas.repec.org/c/boc/bocode/s457191.html)

## References

 Carlos Eduardo Velez, Joao Pedro Azevedo, and Christian Posso. Oportunidades para los ni?os colombianos:  cu?nto avanzamos en esta d?cada. Banco Mundial, Bando de la Republica, Departamento Nacional de Planeacion:  Bogota, Colombia.  http://go.worldbank.org/KNSYMOAU10

 Jose Molinas Vega, Ricardo Paes de Barros, Jaime Saavedra Chanduvi, et all, 2010. "Do Our Children Have a Chance? The 2010 Human Opportunity Report for Latin America and the Caribbean- Conference Edition", World Bank: Washington, DC.  http://www.worldbank.org/lacopportunity/

 Ricardo Paes de Barros, Francisco H.G. Ferreira, Jose Molinas Vega, Jaime Saavedra Chanduvi, et all, 2008. "Measuring Inequality of Opportunities in Latin America and the Caribbean", World Bank: Washington, DC.  http://go.worldbank.org/A9Z0NUV620

### Handle: RePEc:boc:bocode:s457191 

### Note: 
This module should be installed from within Stata by typing "ssc install hoi". Windows users should not attempt to download these files with a web browser.

### Keywords
human opportunity index; dissimilarity index;

## Authors: 

  **João Pedro Azevedo**  
  [jazevedo@worldbank.org](mailto:jazevedo@worldbank.org)  
  World Bank  
  [personal page](http://www.worldbank.org/en/about/people/j/joao-pedro-azevedo)  

  **Samuel Franco**  

  **Eliana Rubiano**  
  World Bank  

  **Alejandro Hoyos**  

