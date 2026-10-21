import os
import json


def create_json_files():
    resourcepack_dir = os.path.dirname(os.path.abspath(__file__))
    source_dir = os.path.join(
        resourcepack_dir, "assets", "kb2", "textures", "item", "ingredient"
    )
    model_dir = os.path.join(
        resourcepack_dir, "assets", "kb2", "models", "item", "ingredient"
    )
    item_dir = os.path.join(
        resourcepack_dir, "assets", "kb2", "items", "ingredient"
    )

    # Ensure the item directory exists
    os.makedirs(model_dir, exist_ok=True)
    os.makedirs(item_dir, exist_ok=True)

    # Iterate through all files in the source directory
    for filename in os.listdir(source_dir):
        if filename.endswith(".png"):
            # Extract the name without the file extension
            name_without_extension = os.path.splitext(filename)[0]
            model_path = os.path.join(model_dir, f"{name_without_extension}.json")
            item_path = os.path.join(item_dir, f"{name_without_extension}.json")

            # Make the model file if it doesn't already exist
            if os.path.exists(model_path):
                print(f"Model file already exists, skipping: {model_path}")
            else:
                # Create the JSON content
                model_content = {
                    "parent": "minecraft:item/generated",
                    "textures": {
                        "layer0": f"kb2:item/ingredient/{name_without_extension}"
                    }
                }

                # Write the content to the model file
                with open(model_path, "w") as model_file:
                    json.dump(model_content, model_file, indent=4)

                print(f"Created: {model_path}")

            # Make the item file if it doesn't already exist
            if os.path.exists(item_path):
                print(f"File already exists, skipping: {item_path}")
            else:
                # Create the JSON content
                item_content = {
                    "model": {
                        "type": "minecraft:model",
                        "model": f"kb2:item/ingredient/{name_without_extension}"
                    }
                }

                # Write the content to the item file
                with open(item_path, "w") as item_file:
                    json.dump(item_content, item_file, indent=4)

                print(f"Created: {item_path}")


if __name__ == "__main__":
    create_json_files()
