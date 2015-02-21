Getting-and-Cleaning-Data
=========================

## Introduction

This document explains how all scripts work and how they are connected. 

## Overview

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The data used in this project can be found at: [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Scripts

### Run_analysis.R

The R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The result of the execution is stored at `./result.txt` and it contains  the mean and standard deviation of each measurement per activity&subject for later analysis.

## Additional Files

* The `CodeBook.md` describes the variables, the data, and the work that has been performed to clean up the data.
