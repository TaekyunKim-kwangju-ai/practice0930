# python 최신 버전 slim 이미지를 사용
FROM python:3-slim

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 파일 복사
COPY requirements.txt ./

# 필요한 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 소스 코드 복사
COPY *.py /app/

# 모델 학습
RUN python train.py

# FastAPI 서버 실행
CMD ["uvicorn", "inference:app", "--host", "0.0.0.0"]