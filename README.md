# configfix_test

Test data and test results for _[configfix](https://bitbucket.org/easelab/configfix)_ - an implementation of the RangeFix conflict-resolution algorithm for the Linux kernel Kconfig.

The [cftestconfig](https://bitbucket.org/easelab/configfix/src/cftestconfig/) branch of the _configfix_ repository contains test instrumentation, which allows to randomly generate and verify configuration conflicts.

To run _configfix_ with the testing functionality, checkout the _cftestconfig_ branch and copy/link the files into the 
`scripts/kconfig` folder of your kernel source tree. After that, run `make
cftestconfig`.

[tests](./tests) folder contains kernel configuration samples (`.config`) for various architectures supported by the kernel.
The samples were generated using the `make randconfig` configurator (via the [gen_config.sh](https://bitbucket.org/easelab/configfix/src/cftestconfig/scripts/kconfig/gen_config.sh) script).  
[tests/results.csv](./tests/results.csv) contains test results that used in my bachelor thesis.

[tests_59](./tests_59) folder contains newer configuration samples for the 5.9 kernel version.

To test _configfix_ with a particular sample, do the following:
1. Point the `CONFIGFIX_PATH` environment variable to your _configfix_-enhanced kernel source tree e.g.  
   `export CONFIGFIX_PATH=/home/user/linux-5.3`
2. Point the `CONFIGFIX_TEST_PATH` environment variable to the directory where you want save test results e.g.  
   `export CONFIGFIX_TEST_PATH=/home/user/configfix_test/tests_59`   
   The results will be either written to an existing CSV file, or a new file will be created.
3. Navigate to the directory that contains your chosen configuration sample and execute the `run.sh` script.