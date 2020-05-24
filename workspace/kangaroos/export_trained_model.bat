@echo off
set ORIGINALPATH=%PYTHONPATH%;
set PYTHONPATH=%PYTHONPATH%;research\slim
set TRAINED_CHECKPOINT=D:/university/datasets/Kangaroo/kangaroo/training/model.ckpt-100
set OUTPUT_DIRECTORY=D:/university/datasets/Kangaroo/kangaroo/training/output
python research\object_detection\export_inference_graph.py --input_type image_tensor --pipeline_config_path=workspace/kangaroos/pipeline/ssd_mobilenet_v1_coco_v1.config --trained_checkpoint_prefix=%TRAINED_CHECKPOINT% --output_directory=%OUTPUT_DIRECTORY%
set PYTHONPATH=%ORIGINALPATH%
@echo on