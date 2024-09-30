# 파이썬 베이스 이미지 가져오기 (slim)
FROM python:3-slim

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 파일 복사
COPY requirements.txt .

# 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 소스 코드 복사
COPY *.py .

# FASTAPI 서버 실행
CMD ["uvicorn", "inference:app", "--host", "0.0.0.0"]