# Autogen 0.4 Samples

## 주요 특징

### 1. 비동기 메시징
- 에이전트 간 비동기 메시지 통신 지원
- 이벤트 드리븐 및 요청/응답 상호작용 패턴 모두 수용

### 2. 모듈형 및 확장 가능한 아키텍처
- 플러그 가능한 구성 요소로 맞춤형 시스템 제작 가능
- 장기 실행 및 능동적 에이전트 개발 지원

### 3. 강력한 타입 시스템
- 인터페이스와 광범위한 타입 지정으로 높은 품질의 코드 보장

### 4. 레이어드 아키텍처
- 사용자 시나리오에 맞는 추상화 수준 제공
- 1st, 3rd 파티 애플리케이션과 Extension 지원

### 5. 가시성 및 디버깅 도구
- OpenTelemetry 지원으로 에이전트 상호작용 추적 및 디버깅 가능

### 6. 확장성 및 분산 처리
- 복잡한 다중 에이전트 네트워크 설계 가능

## Quick Start

- 본 샘플에는 추상화 라이브러리인 autogen_agentchat만 사용 (core 라이브러리 추가 예정)

### 1. uv 설치
```sh
# macOS/Linux
curl -LsSf https://astral.sh/uv/install.sh | sh

# Windows
powershell -c "irm https://astral.sh/uv/install.ps1 | iex"
```

### 2. 프로젝트 설정
```sh
# 환경 변수 설정
mv .env.sample .env

# 가상환경 생성 및 의존성 설치
uv venv
uv pip install -e .

# 또는 한 번에 실행
uv sync
```

### 3. 실행
- `.env` 파일 수정 후 각 노트북 실행
- `SERPAPI_KEY`는 [SerpApi](https://serpapi.com/)에서 발급받은 API 키를 입력.

### 4. 자동 설정 (선택사항)
```sh
# 자동 설정 스크립트 실행
./setup.sh
```

## 🎯 uv 사용법

### 기본 명령어
```sh
# 가상환경 생성
uv venv

# 의존성 설치
uv pip install -e .

# 새 패키지 추가
uv pip install <package-name>

# 의존성 동기화
uv sync

# 패키지 목록 확인
uv pip list

# 가상환경 활성화
source .venv/bin/activate  # macOS/Linux
```
## Autogen Studio

```sh
uv pip install autogenstudio
autogenstudio ui --port 8081
```