
:: Install kernelspec at post-link because conda doesn't substitute Windows paths correctly in JSON files
type "%PREFIX%"\share\jupyter\kernels\python3\kernel.json
"%PREFIX%"\Python.exe -m ipykernel install --sys-prefix 2>&1 && if errorlevel 1 exit 1
type "%PREFIX%"\share\jupyter\kernels\python3\kernel.json
