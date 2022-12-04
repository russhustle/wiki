PDF
===

PDF to Images
---

```python
import os
import tempfile
import pdf2image

def convert_pdf_to_images(file_path: str) -> None:
    # get the directory name
    directory = os.path.dirname(file_path) 
    # get the file name without the extension
    name = os.path.basename(file_path).rsplit('.')[0]
    # new folder path
    new_folder = os.path.join(directory, "imgs", name) 
    os.makedirs(new_folder, exist_ok=True)

    num_pages = pdf2image.pdfinfo_from_path(file_path).get('Pages')

    with tempfile.TemporaryDirectory() as tempdir:
        for page in range(1, num_pages+1):
            image = pdf2image.convert_from_path(
                file_path, dpi=100, fmt='png',
                first_page=page, last_page=page, output_folder=tempdir,
            )[0]

            image.save(f'{new_folder}/page_{page:03}.jpg', 'JPEG')
```

```python
import glob

folder = "/Users/xxx/Desktop/pdf2image" # variable

for i in glob.glob(folder + "/*.pdf"):
    convert_pdf_to_images(i)
```

```plain
/Users/xxx/Desktop/pdf2image
├── 01-demo.pdf
├── 02-demo.pdf
└── imgs
    ├── 01-demo
    │   ├── page_001.jpg
    │   ├── page_002.jpg
    │   └── page_003.jpg
    └── 02-demo
        ├── page_001.jpg
        ├── page_002.jpg
        └── page_003.jpg
```

