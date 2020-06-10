@echo off
set ORIGINALPATH=%PYTHONPATH%;
set PYTHONPATH=%PYTHONPATH%;research\slim
python research\object_detection\model_main.py --model_dir=D:/university/datasets/Potholes/training/ --pipeline_config_path=workspace/road_damage/pipeline/ssd_mobilenet_v1_coco_v1.config
set PYTHONPATH=%ORIGINALPATH%
@echo on