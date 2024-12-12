# EECS639 - Final project
## By: Devin Setiawan, Isaac Papineau, Ethan Dirkes

## Part A: Implementation of the Methods for Interpolation
The implementation have two components. The first component is named after their interpolation method **(e.g. _lagrange_interpolation.m_)** which contains the code to find the missing coefficient needed for the interpolation of the data. Once the coefficients are found, we use the second component with the _eval suffix for evaluation **(e.g. _lagrange_interpolation_eval.m_)**. This code takes the coefficients from the previous component and use it for evaluation.

## Part B: Testing
To test our implementation, we use both component to draw the graphs on various interpolation problems. The figures can be found inside the **(_/Figures/_)** folder with the prefix **(_partB_)** on the file name. We run this test using our script **(_testing_script.m_)**.

## Part C: Parametric Curves
The implementation of the bezier curve can be found in **(_Bezier_Curve.m_)**. The figures can be found inside the **(_/Figures/_)** folder with the prefix **(_partC_)** on the file name. Each curve is generate with the MATLAB code that has the same file name **(e.g. _Butterfly (1).m_)**

## Part D: Real-World Application
The figures of interpolation on our real-world dataset can be found inside the **(_/Figures/_)** folder with the prefix **(_partD_)**. The problem statement, analysis, and summary can be found inside the document with the file name **(_EECS639 - Report_)**. The script to run our interpolation is named after each region **(e.g. _air_wanliu_longterm_)**

## Part E: Summary and Contribution
The summary and contribution with signature is included in the report **(_EECS639 - Report_)**.
