hottbox-tutorials
=================

This repository contains a series of tutorials on how to use
`hottbox <https://github.com/hottbox/hottbox>`_

Requirements
============
In order to run and play around with these tutorials, you will need to have ``HOTTBOX`` installed. Simpy run:
::

    pip install hottbox

    git clone https://github.com/hottbox/hottbox-tutorials


Table of contents:
==================
1. `Tensor class for N-dimensional arrays and its functionality <https://github.com/hottbox/hottbox-tutorials/blob/master/1_N-dimensional_arrays_and_Tensor_class.ipynb>`_.
2. `Efficient representation of N-dimensional arrays: TensorCPD, TensorTKD, TensorTT <http://example.com/>`_.
3. `Fundamental tensor decompositions <http://example.com/>`_.

Data used in these tutorials
============================

All data for these tutorials can be found under ``data/`` directory.



Short description of datasets
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- **ETH80** dataset

  This dataset consists of 3,280 images of natural objects from 8 categories (apple, car, cow, cup, dog, horse, pera, tomato), each containing 10 objects with 41 views per object. More info about this dataset can be found on `here <https://www.mpi-inf.mpg.de/departments/computer-vision-and-multimodal-computing/research/object-recognition-and-scene-understanding/analyzing-appearance-and-contour-based-methods-for-object-categorization/>`_.



Short description of files with data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. ``data/ETH80/basic_066-063.npy``

   Contains only one RGB image of one object from each category, which makes it a total of 8 samples. The view point identifier for all of them is ``066-063``. These images are 128 by 128 pixes and are stored in the unfolded form. Thus, when this file is read by ``numpy`` it outputs array with 8 rows and 128\*128\*3 = 49152 columns.
