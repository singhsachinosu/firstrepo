 Introduction to R markdown

## Load data

### Create code chunk
Here we create our first code chunk using `R`


```r
data(mtcars)
head(mtcars)
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

```r
tail(mtcars$mpg)
```

```
## [1] 26.0 30.4 15.8 19.7 15.0 21.4
```

# How to access CCR
1. First log on to UBVPN using Cisco AnyConnect
2. Use SSH in terminal to access UB CCR


```bash
$ ssh abbasriz@rush.ccr.buffalo.edu 
```

The main project directory is located in `/projects/rpci/lsuchest/`. Here you will find your own individual directories that you can use for your own data analysis.


```bash
$ cd /projects/rpci/lsuchest/
```

The imputed data INFO file can be found in the directory `/projects/rpci/lsuchest/lsuchest/Rserve/ImputeData/var/db/gwas/imputed_data/BMT093013_forImpute/Impute2_summary/`. 


```bash
$ cd /projects/rpci/lsuchest/lsuchest/Rserve/ImputeData/var/db/gwas/imputed_data/BMT093013_forImpute/Impute2_summary/Impute2.INFO

$ head Impute2.INFO 
region snp_id rs_id position exp_freq_a1 info certainty type info_type0 concord_type0 r2_type0
chr10-0-5000000 --- rs148087467 60523 0.002 0.686 0.998 0 -1 -1 -1
chr10-0-5000000 --- rs187110906 60969 0.092 0.499 0.891 0 -1 -1 -1
chr10-0-5000000 --- rs192025213 61005 0.003 0.371 0.996 0 -1 -1 -1
chr10-0-5000000 --- rs115033199 61020 0.000 0.341 0.999 0 -1 -1 -1
chr10-0-5000000 --- rs183305313 61334 0.005 0.302 0.990 0 -1 -1 -1

```


# Server Usage
We use modules on the server to access specific software that we need to use for analyses.

## Look at all available modules

```bash
$ module avail
```

## Load R

```bash
$ module load R
$ R

```


# Survival Result Directories

For cohort 1 and cohort 2


|Path                                                                                                                    |Description                     |
|:-----------------------------------------------------------------------------------------------------------------------|:-------------------------------|
|/projects/rpci/lsuchest/lsuchest/Rserve/ImputeData/var/db/gwas/imputed_data/BMT093013_forImpute/analyses                |cohort 1 and 2 survival results |
|/projects/rpci/lsuchest/lsuchest/Rserve/ImputeData/var/db/gwas/imputed_data/BMT093013_forImpute/analyses/METAL.results/ |meta-analysis survival results  |


