# Google Cloud BigQuery to On-prem Oracle Database by SQL\*Loader

## Bring Google Cloud BigQuery public dataset to On-prem Oracle Database by SQL\*Loader

### Usage
- Option 1: Create parameter file contains all metadata of control file, authentication user to database, log file, ....
  - Create `sample.par` file
```bash
userid=username@server/password
control=loader.ctl
log=sample.log
bad=sample.bad
data=sample.dat
direct=true
```
- Run command to execute SQL*Loader job
```bash
sqlldr parfile=sample.par
```

- Option 2: Run a directly command use `sqlldr` to including all parameters
```bash
sqlldr username@server/password control=loader.ctl
```
