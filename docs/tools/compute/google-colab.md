# Google Colab

💡Some common utilities for different purposes in Colab.

### 01-Mount google drive in Colab

```python
from google.colab import drive
drive.mount('/content/drive')
```

### 02-Create a soft link of the working directory

```python
import os
DIR_PATH = ""
DST_PATH = ""
full_dir_path = os.path.join("/content/drive/MyDrive", DIR_PATH)
full_dst_path = os.path.join("/content", DST_PATH)
os.symlink(src=full_dir_path, dst=full_dst_path, target_is_directory=True)
os.chdir('/content')
```

### 03-Show an image in Colab

```python
from IPython.display import Image
PATH = ""
Image(PATH)
```

### 04-Upload kaggle.json onto Colab

```python
from google.colab import files
import os
os.chdir("/content")
files.upload()
os.mkdir("/root/.kaggle")
os.rename("/content/kaggle.json", "/root/.kaggle/kaggle.json")
os.chmod("/root/.kaggle/kaggle.json", 600)
```

### 05-GPU information

```python
!nvidia-smi
```

### 06-Delete all Markdown or Code cells

- Reference: link-1, link-2
- [`nbformat`](https://nbformat.readthedocs.io/en/latest/api.html): Python API for working with notebook files

```python
import nbformat as nbf
ntbk = nbf.read("old_notebook.ipynb", nbf.NO_CONVERT)
new_ntbk = ntbk
new_ntbk.cells = [cell for cell in ntbk.cells
                  if cell.cell_type != "markdown"] # here
nbf.write(new_ntbk, "no_markdown_notebook.ipynb", version=nbf.NO_CONVERT)
```

- Delete markdown: `!= "markdown"` @ line 5
- Delete code: `== "markdown"` @ line 5

### 07-Delete empty lines

- Reference: [link](https://www.youtube.com/watch?v=jQrET5HYyAE)
1. In VS code, install extension `Remove empty lines`.
2. Add shortcut to remove all empty lines in document; mine is `cmd+h`.
3. In the cell, type the shortcut.

### 08-Inspect a function

- Reference: [link](https://stackoverflow.com/questions/1562759/can-python-print-a-function-definition)

Method 1

```python
import sys, inspect
print_func = lambda x: sys.stdout.write(inspect.getsource(x))
print_func(MyFunction)
```

Method 2

```python
MyFunction??
```

### 09-Convert Jupyter notebook into other formats

- [nbconvert](https://nbconvert.readthedocs.io/en/latest/)

```bash
jupyter nbconvert --to FORMAT notebook.ipynb
```