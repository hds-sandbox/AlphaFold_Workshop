# AlphaFold Tutorial using ColabFold
Welcome to the AlphaFold tutorial where we will use a modified version of ColabFold to predict protein folding structures using AlphaFold2 and MMseqs2. This tutorial is designed to help you gain a deeper understanding of the protein folding prediction process, and to enable you to predict protein structures with ease using ColabFold.

## Introduction
ColabFold is a protein folding prediction tool based on Google DeepMind's AlphaFold and utilizes MMseqs2 for sequence alignments and templates. With ColabFold, you can easily predict the protein folding structure based on the amino acid sequence.

## Running the Tutorial
The tutorial is a Jupyter notebook that can be run on [UCloud](https://cloud.sdu.dk/){:target="_blank"}. To run each cell, press `Shift + Enter` while inside the cell or press the triangular play button above. There will be questions included throughout the workshop to help you gain a deeper understanding of what you are calculating.

## Learning Objectives
After completing this workshop, you will be able to:

* Describe how to use ColabFold to predict protein structures.
* Explain and interpret the results generated using ColabFold.
* Use ColabFold to predict the protein structure of any specific protein of interest.

## Pre-Analysis Technical Requirements
Before beginning the analysis, it is important to ensure that the following technical requirements are met:

1. The tutorial can be executed within a Docker container (as detailed in the Dockerfile), or through the [UCloud platform](https://cloud.sdu.dk/).
2. The Jupyter Notebook has only been tested on JupyterLab version 3.1.4, therefore it is recommended to use this version for optimal performance.
3. To achieve optimal and efficient prediction results, it is strongly recommended to allocate at least one GPU for the analysis.
4. To initiate the analysis, simply open the AlphaFold2.ipynb file and run the cells as instructed.
5. A clear understanding of protein folding and AlphaFold2's working principles is required before starting the analysis.
6. Make sure you have read the manuscript and familiarized yourself with the ColabFold GitHub page for a comprehensive understanding of the tool.
7. It is advisable to have basic understanding of Jupyter Notebook and its functionality for seamless execution of the analysis.

### References
Mirdita M, Schütze K, Moriwaki Y, Heo L, Ovchinnikov S, Steinegger M. ColabFold: Making protein folding accessible to all. Nature Methods, 2022.
