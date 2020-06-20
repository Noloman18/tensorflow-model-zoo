@echo off
set ORIGINALPATH=%PYTHONPATH%;
set PYTHONPATH=%PYTHONPATH%;research\slim
set TRAINED_CHECKPOINT=D:/university/datasets/Potholes/training/model.ckpt-3000
set OUTPUT_DIRECTORY=D:/university/datasets/Potholes/training/output/tflite
python research\object_detection\export_tflite_ssd_graph.py --pipeline_config_path=workspace/road_damage/pipeline/ssd_mobilenet_v1_coco_v1.config --trained_checkpoint_prefix=%TRAINED_CHECKPOINT% --output_directory=%OUTPUT_DIRECTORY% --add_postprocessing_op=true
set PYTHONPATH=%ORIGINALPATH%
@echo on