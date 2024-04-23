#FROM pytorch/pytorch:1.0.1-cuda10.0-cudnn7-runtime
FROM pytorch/pytorch:2.2.2-cuda11.8-cudnn8-runtime

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /work