import os
import json


def create_json_files():
    source_dir = './assets/kb2/models/item/ingredient/'
    target_dir = './assets/kb2/items/ingredient/'

    # Ensure the target directory exists
    os.makedirs(target_dir, exist_ok=True)

    # Iterate through all files in the source directory
    for filename in os.listdir(source_dir):
        if filename.endswith('.json'):
            target_path = os.path.join(target_dir, filename)

            # Skip if the target file already exists
            if os.path.exists(target_path):
                print(f"File already exists, skipping: {target_path}")
                continue

            # Extract the name without the file extension
            name_without_extension = os.path.splitext(filename)[0]

            # Create the JSON content
            json_content = {
                "model": {
                    "type": "minecraft:model",
                    "model": f"kb2:item/ingredient/{name_without_extension}"
                }
            }

            # Write the content to the target file
            with open(target_path, 'w') as target_file:
                json.dump(json_content, target_file, indent=4)

            print(f"Created: {target_path}")


if __name__ == "__main__":
    create_json_files()
