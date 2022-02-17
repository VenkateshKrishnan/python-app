from imageai.Detection import ObjectDetection
import os
import sys

execution_path = os.getcwd()

detector = ObjectDetection()
detector.setModelTypeAsRetinaNet()
detector.setModelPath( os.path.join(execution_path , "resnet50_coco_best_v2.1.0.h5"))
detector.loadModel()
detections = detector.detectObjectsFromImage(input_image=os.path.join(execution_path , sys.argv[1]), output_image_path=os.path.join(execution_path , "new"+sys.argv[1]))

for eachObject in detections:
        print(eachObject["name"] , " : " , eachObject["percentage_probability"] )

