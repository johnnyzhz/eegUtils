eegUtils
================

This is a fork of the *eegUtils* developed by [Matt Craddock](https://github.com/craddm). I used the package in a workshop on EEG data analysis I taught. Binary files for Mac and Windows are provided below.

## Overview

*eegUtils* is a package for the processing, manipulation, and plotting
of EEG data. It includes functions for importing data from a variety of
file formats (including Biosemi, Brain Vision Analyzer, and EEGLAB),
many of the typical steps in pre-preprocessing (filtering, referencing,
artefact rejection), more advanced processing techniques (time-frequency
analysis, ICA), and several types of plot that are common in the field
(ERP plots, time-frequency plots, topographical scalp maps). Although it
uses custom object classes, it is designed such that these are always
translatable to standard R *data.frames*, and thus can be used with any
of the myriad packages and methods that support standard R formats.

## Installation

The package is very much under active development and is subject to a
lot of changes. As such, it is not currently available on CRAN.

Install the latest released version from Github as below.

``` r
#install.packages("remotes")
remotes::install_github("craddm/eegUtils")
```

To install the latest development version, install from the *develop*
branch as below.

``` r
remotes::install_github("craddm/eegUtils@develop")
```

You can also find the package on
[Neuroconductor](https://neuroconductor.org) - for more information
about installing packages from Neuroconductor, see the [Neuroconductor
installation tutorial](https://neuroconductor.org/tutorials/install)

## Binaries for Windows and Mac

I have made a few small changes to the package based on the developing branch of `eegUtils`. You can install this version use

``` r
#install.packages("remotes")
remotes::install_github("johnnyzhz/eegUtils")
```

The binaries can be download here:

- Windows: [https://github.com/johnnyzhz/eegUtils/releases/download/v0.9.0.9000/eegUtils_0.9.0.9000.zip](https://github.com/johnnyzhz/eegUtils/releases/download/v0.9.0.9000/eegUtils_0.9.0.9000.zip)
- Mac: [https://github.com/johnnyzhz/eegUtils/releases/download/v0.9.0.9000/eegUtils_0.9.0.9000.tgz](https://github.com/johnnyzhz/eegUtils/releases/download/v0.9.0.9000/eegUtils_0.9.0.9000.tgz)

To install a binary, use (change the file path and the file, .tgz for Mac and .zip for Windows):

``` r
install.packages("~/Downloads/eegUtils_0.9.tgz", repos = NULL, type = .Platform$pkgType)
```

## Usage

To see how it can used, please visit the original package website [https://craddm.github.io/eegUtils/](https://craddm.github.io/eegUtils/) where [Matt Craddock](https://github.com/craddm) provided a lot of useful materials.
