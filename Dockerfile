FROM python:3.7.3-stretch
RUN pip install https://download.pytorch.org/whl/cpu/torch-1.1.0-cp37-cp37m-linux_x86_64.whl
COPY . /holoclean
WORKDIR /holoclean/examples
RUN pip install -r ../requirements.txt
RUN python -m compileall .
ENTRYPOINT [ "python", "holoclean_repair_example.py" ]