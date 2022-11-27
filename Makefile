# make conda environment
conda-update:
	conda env update --prune -f environment.yml

# Serve the local website
serve:
	conda activate mkdocs
	mkdocs serve