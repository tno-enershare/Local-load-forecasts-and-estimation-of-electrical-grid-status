FROM python:3.7-stretch

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . app/

WORKDIR app/BD4NRG_Grid_Simulator

CMD ["python", "Test_Grid_Simulator.py"]