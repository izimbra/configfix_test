# configfix_test

Test data and results for _[configfix](https://bitbucket.org/easelab/configfix)_ - an implementation fo the RangeFix conflict-resolution algorithm for the Linux kernel Kconfig.

[tests](./tests) folder contains kernel configuration samples (`.config`) for various architectures supported by the kernel.
The samples were generated using the _make randconfig_ configurator.

To run _configfix_ with a particular sample, do the following:
1. Point the `CONFIGFIX_PATH` environment variable to your _configfix_-enhanced kernel source tree e.g.  
   `export CONFIGFIX_PATH=/home/user/linux-5.3`
2. Build _xconfig_ in your `CONFIGFIX_PATH` directory (e.g. by running `make xconfig`)
3. Navigate to the directory that contains your chosen configuration samlpe and execute the `run.sh` script.