# ALT-SSSOM

A Semi-Supervised Self-Organizing Map with Adaptive Local Thresholds

Sample code to the model proposed in https://ieeexplore.ieee.org/abstract/document/8851839/

It was presented at the 2019 International Joint Conference on Neural Networks (IJCNN), in Budapest, Hungary.

### Cite:

Please cite our paper if you use this code in your own work:

```bibtex
@inproceedings{braga2019semi,
  title={A Semi-Supervised Self-Organizing Map with Adaptive Local Thresholds},
  author={Braga, Pedro HM and Bassani, Hansenclever F},
  booktitle={2019 International Joint Conference on Neural Networks (IJCNN)},
  pages={1--8},
  year={2019},
  organization={IEEE}
}
```

### Requirements:

1. You must have a file containing all the paths to the datasets you want to use. You can follow [this](https://github.com/hfbassani/pbml/blob/master/phmb4/Parameters/inputPathsTrain) example.

2. You must have a parameters file:

   To run ALT-SSSOM, there are 9 parameters to set:

   - lp
   - dsbeta
   - age_wins
   - e_b
   - e_n
   - epsilon_ds
   - minwd
   - epochs
   - seed

   You can follow [this](https://github.com/hfbassani/pbml/blob/master/phmb4/Parameters/ALT-SSSOM_0) example, where the first eleven rows represent the first set of parameters, the next 9 rows the second set and so on.

   Also, it is important to update the constant _noClass_, if necessary. The default value is 999.

### Parameters Generation

The sample code to generate the parameters with LHS, as in the paper, is available [here](https://github.com/hfbassani/pbml/tree/master/params-gen/).

### Running:

1. Make sure you fill the requirements.

2. Open the NetbeansProject with Netbeans

3. Set the main arguments for the program:

  ```
  -i: this flag is used to get the path to the file containing all the paths to the datasets to be used.

  -t: this flag is used to get the path of the folder with the test files

  -r: this flag is used to get the path to the results folder

  -p: this flag is used to get the path to the parameters file

  -c[optional]: this flag is used to define if the training and test experiments will be run.

  -f[optional]: this flag disables the noisy filtering and all samples will be assigned to a cluster.

  -n[optional]: this flag is used to define if the data needs to be normalized.

  ...and more.
  ```
  For example, to run experiments for [these](https://github.com/hfbassani/pbml/tree/master/Datasets/Realdata) real datasets:

  ```
  -i ../../Parameters/inputPathsTrain01 -t ../../Parameters/inputPathsTest -r pray5-l01/ -p ../../Parameters/pray5_0 -c
  ```

  After that, you can run your metrics based on the results file.

### Metrics Calculation

See [py-scripts](https://github.com/hfbassani/pbml/tree/master/phmb4/py_scripts).
