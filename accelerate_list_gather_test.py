from accelerate import Accelerator
from accelerate.utils import gather_object


if __name__ == "__main__":
    accelerator = Accelerator()
    local_list = [1, 2, 3, 4, 5]
    global_list = gather_object(local_list)
    if accelerator.is_main_process:
        print(global_list)
