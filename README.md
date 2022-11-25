<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="./com/CICS.png" alt="CICS logo"></a>
</p>

<h3 align="center">CICS</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/Emericdefay/forma-cics.svg)](https://github.com/Emericdefay/forma-cics/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/Emericdefay/forma-cics.svg)](https://github.com/Emericdefay/forma-cics/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> CICS TPs
    <br> 
</p>

<h3> 📝 Table of Contents</h3>

- [🧐 About ](#-about-)
- [🏁 Getting Started ](#-getting-started-)
  - [Prerequisites](#prerequisites)
  - [Be Aware ](#be-aware-)
  - [Installing](#installing)
- [⛏️ Built Using ](#️-built-using-)
- [✍️ Authors ](#️-authors-)
- [🎉 Acknowledgements ](#-acknowledgements-)

## 🧐 About <a name = "about"></a>

This repository is here to help you understand the basics of cics with some exercices.  
Those exercices are made by Global Knowledge, here stand modests propositions. 

## 🏁 Getting Started <a name = "getting_started"></a>


### Prerequisites

- Z/OS
  - A program section
  - A Loadlib 
  - A Compiler

Your program section should be a standard PDS.  

Your Loadlib section shoul be a specific PDS.

``` jcl
//* You can create the loadlib, with this kind of JCL script.
//SYSUT2 DD DSN=MASTER.PROG.LOAD,DISP=(NEW,CATLG,CATLG),
// UNIT=SYSDA,SPACE=(CYL,(60,20),RLSE),          
// DCB=(RECFM=U,LRECL=0,BLKSIZE=32760,DSORG=PO), 
// DSNTYPE=LIBRARY                               
```

### Be Aware <a name = "settings"></a>

For cobol program, be sure to give the file name into PROGRAM-ID.

My setup is the following:  
- MASTER.PROG.CBL  : My cobol folder, including compiler and executer.
- MASTER.PROG.LOAD : My cobol loadlib, see above for specifications.
- MASTER.FILES     : My folder dedicated for files read in executions.

### Installing

You can transfer, copy/paste the files but it's recommanded to just check them.


## ⛏️ Built Using <a name = "built_using"></a>

- [Z/OS](https://www.ibm.com/fr-fr) - IBM Z/OS
- [JCL](https://www-40.ibm.com/servers/resourcelink/svc00100.nsf/pages/zOSV2R3SA231386/$file/ieab500_v2r3.pdf) - JCL language
- [Cobol](https://www.ibm.com/docs/en/SS6SG3_4.2.0/com.ibm.entcobol.doc_4.2/PGandLR/igy3pg50.pdf) - COBOL language

## ✍️ Authors <a name = "authors"></a>

- [@emericdefay](https://github.com/emericdefay) - Corrections propositions


## 🎉 Acknowledgements <a name = "acknowledgement"></a>

- Alteca
- Global Knowledge
- Pole Emploie
