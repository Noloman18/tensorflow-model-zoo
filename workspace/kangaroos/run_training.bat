@echo off
set ORIGINALPATH=%PYTHONPATH%;
set PYTHONPATH=%PYTHONPATH%;research\slim
python research\object_detection\model_main.py --model_dir=D:/university/datasets/Kangaroo/kangaroo/training/ --pipeline_config_path=workspace/kangaroos/pipeline/ssd_mobilenet_v1_coco_v1.config
set PYTHONPATH=%ORIGINALPATH%
@echo on