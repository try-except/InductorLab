Install necessary libraries
```bash
pip install -r requirements.txt
```

Install palace as an Apptainer (might take up to an hour)
```bash
apptainer build palace.sif ./lib/palace/singularity/singularity.def
```

Install IHP-SG13G2 libraries for Klayout
```bash
mkdir -p  ~/.klayout/tech
ln -s ./lib/ihp_open_pdk/ihp-sg13g2/libs.tech/klayout/tech ~/.klayout/tech/ihp-sg13g2
ln -s ~/.klayout/tech/ihp-sg13g2/sg13g2.lyp ~/.klayout/tech/
mkdir -p  ~/.klayout/python
ln -s ./lib/ihp_open_pdk/ihp-sg13g2/libs.tech/klayout/python/* ~/.klayout/python/
```