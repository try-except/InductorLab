Install necessary libraries
```bash
pip install -r requirements.txt
pip install -e lib/pclab
```

Install palace as an Apptainer (might take up to an hour)
```bash
apptainer build palace.sif ./lib/palace/singularity/singularity.def
```