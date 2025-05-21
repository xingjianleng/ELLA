import os
import json


if __name__ == "__main__":
    prompts_path = "./dpg_bench/prompts"
    output_path = "./dpg_bench/prompts.jsonl"
    elems = []

    for file in os.listdir(prompts_path):
        with open(os.path.join(prompts_path, file), "r") as f:
            data = f.read().strip()
        
        elems.append({
            "name": file,
            "prompt": data,
        })

    with open(output_path, "w") as f:
        for elem in elems:
            f.write(json.dumps(elem) + "\n")
