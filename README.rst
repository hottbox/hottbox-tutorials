HOTTBOX tutorials
=================
|Binder|_

.. |Binder| image:: https://mybinder.org/badge.svg
.. _Binder: https://mybinder.org/v2/gh/hottbox/hottbox-tutorials/master

This repository contains a series of tutorials on how to use `hottbox <https://github.com/hottbox/hottbox>`_. 


Local Installation
==================

In order to get started you need to clone this repository and install
packages specified in ``requirements.txt``::

    git clone https://github.com/hottbox/hottbox-tutorials

    cd hottbox-tutorials

    pip install -r requirements.txt


If you are on Unix and have anaconda installed, you can execute ``bootstrap_venv.sh``.
This script will prepare a new virtual environment for these tutorials.::

    git clone https://github.com/hottbox/hottbox-tutorials
    
    source bootstrap_venv.sh
  

Table of contents:
==================
.. |ti1| image:: https://mybinder.org/badge.svg
.. _ti1: https://mybinder.org/v2/gh/hottbox/hottbox-tutorials/master?filepath=1_N-dimensional_arrays_and_Tensor_class.ipynb
.. _Tutorial1: https://github.com/hottbox/hottbox-tutorials/blob/master/1_N-dimensional_arrays_and_Tensor_class.ipynb

.. |ti2| image:: https://mybinder.org/badge.svg
.. _ti2: https://mybinder.org/v2/gh/hottbox/hottbox-tutorials/master?filepath=2_Efficient_representations_of_tensors.ipynb
.. _Tutorial2: https://github.com/hottbox/hottbox-tutorials/blob/master/2_Efficient_representations_of_tensors.ipynb


.. |ti3| image:: https://mybinder.org/badge.svg
.. _ti3: https://mybinder.org/v2/gh/hottbox/hottbox-tutorials/master?filepath=3_Fundamental_tensor_decompositions.ipynb
.. _Tutorial3: https://github.com/hottbox/hottbox-tutorials/blob/master/3_Fundamental_tensor_decompositions.ipynb

.. |ti4| image:: https://mybinder.org/badge.svg
.. _ti4: https://mybinder.org/v2/gh/hottbox/hottbox-tutorials/master?filepath=4_Ecosystem_of_Tensor_class.ipynb
.. _Tutorial4: https://github.com/hottbox/hottbox-tutorials/blob/master/4_Ecosystem_of_Tensor_class.ipynb


.. |ti5| image:: https://mybinder.org/badge.svg
.. _ti5: https://mybinder.org/v2/gh/hottbox/hottbox-tutorials/master?filepath=5_Tensor_meta_information_and_pandas_integration.ipynb
.. _Tutorial5: https://github.com/hottbox/hottbox-tutorials/blob/master/5_Tensor_meta_information_and_pandas_integration.ipynb


+--------------------------------------------------------------------------------------+-------------------------------+--------------------------------------+
| Focus of the tutorial                                                                | Static notebook on github.com | Interactive notebook on mybinder.org |
+======================================================================================+===============================+======================================+
| 1. N-dimensional arrays and its functionality: Tensor                                | `Tutorial1`_                  | |ti1|_                               |
+--------------------------------------------------------------------------------------+-------------------------------+--------------------------------------+
| 2. Efficient representation of N-dimensional arrays:  TensorCPD, TensorTKD, TensorTT | `Tutorial2`_                  | |ti2|_                               |
+--------------------------------------------------------------------------------------+-------------------------------+--------------------------------------+
| 3. Fundamental tensor decompositions: CPD, HOSVD, HOOI, TTSVD                        | `Tutorial3`_                  | |ti3|_                               |
+--------------------------------------------------------------------------------------+-------------------------------+--------------------------------------+
| 4. Ecosystem of Tensor class and transformations                                     | `Tutorial4`_                  | |ti4|_                               |
+--------------------------------------------------------------------------------------+-------------------------------+--------------------------------------+
| 5. Tensor meta information and pandas integration                                    | `Tutorial5`_                  | |ti5|_                               |
+--------------------------------------------------------------------------------------+-------------------------------+--------------------------------------+


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
