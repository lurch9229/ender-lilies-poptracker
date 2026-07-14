import os
import zipfile
import json

from gitignore_parser import parse_gitignore_str

def zip_directory(source_dir: str, output_zip: str, ignore_file_path: str):
    with open(ignore_file_path, 'r', encoding='utf-8') as ignore_file:
        ignore_matches = parse_gitignore_str(ignore_file.read(), source_dir)

    with zipfile.ZipFile(output_zip, 'w', zipfile.ZIP_DEFLATED) as zipFile:
        for root, dirs, files in os.walk(source_dir):
            for file in files:
                file_path = os.path.join(root, file)
                archive_name = os.path.relpath(file_path, source_dir)
                
                if not ignore_matches(file_path):
                    zipFile.write(file_path, archive_name)


if __name__ == '__main__':
    folder_name = 'enderlilies_maptracker_lurch9229'
    manifest_path = f'{folder_name}/manifest.json'

    if not os.path.isdir(folder_name):
        raise FileNotFoundError(f"Folder not found: {folder_name}")

    with open(manifest_path, 'r', encoding='utf-8') as manifest_file:
        version = json.load(manifest_file)['package_version']

    output_name = f'tools/output/ender-lilies-poptracker-{version}.zip'
    ignore_file_path = 'tools/.exporterignore'

    zip_directory(folder_name, output_name, ignore_file_path)
