FROM python:3.8-slim-buster

RUN apt-get update \
    && apt-get install -y wget build-essential \
    && apt-get install -y python3-opencv
    
RUN pip3 install --upgrade pip \
    && pip install tensorflow==2.4.0 \
    && pip install keras==2.4.3 numpy==1.19.3 pillow==7.0.0 scipy==1.4.1 h5py==2.10.0 matplotlib==3.3.2 opencv-python keras-resnet==0.2.0 \
    && pip install imageai --upgrade \
    && pip install opencv-python

WORKDIR /app
COPY . /app
RUN wget https://github.com/OlafenwaMoses/ImageAI/releases/download/essentials-v5/resnet50_coco_best_v2.1.0.h5/ -O resnet50_coco_best_v2.1.0.h5
# RUN pip3 --no-cache-dir install -r requirements.txt
ENV APP_FILE FirstDetection.py
EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]
