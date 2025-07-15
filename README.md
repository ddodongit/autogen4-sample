# Autogen 0.4 Samples

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/autogen04-sample)

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

## 🚀 Quick Start

### 방법 1: GitHub Codespaces (권장)
가장 빠른 시작 방법입니다. 브라우저에서 바로 실행할 수 있습니다.

1. [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/your-username/autogen04-sample) 클릭
2. 환경이 자동으로 설정되기를 기다립니다 (약 2-3분)
3. `.env` 파일에서 API 키를 설정합니다
4. 어떤 노트북이든 열어서 시작하세요!

### 방법 2: 로컬 설치
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
# 저장소 클론
git clone https://github.com/your-username/autogen04-sample.git
cd autogen04-sample

# 환경 변수 설정
cp .env.sample .env

# 가상환경 생성 및 의존성 설치
uv sync

# Playwright 브라우저 설치
uv run playwright install
```

### 3. 실행
- `.env` 파일에서 API 키 설정
- 각 노트북 파일 실행
- `SERPAPI_KEY`는 [SerpApi](https://serpapi.com/)에서 발급받은 API 키 입력

### 4. 자동 설정 (선택사항)
```sh
# 자동 설정 스크립트 실행
./.devcontainer/setup.sh
```

## 🛠️ 개발 환경

### VS Code 확장 (자동 설치됨)
- Python
- Pylance
- Jupyter
- Black Formatter
- Flake8

### 포트 설정
- `8081`: AutoGen Studio
- `8888`: Jupyter Lab
- `8000`: 개발 서버

## 📊 AutoGen Studio
웹 기반 인터페이스로 에이전트를 구성하고 테스트할 수 있습니다:

```sh
uv run autogenstudio ui --port 8081
```

브라우저에서 `http://localhost:8081`로 접속하여 사용하세요.

## 🎯 uv 사용법

### 기본 명령어
```sh
# 가상환경 생성
uv venv

# 의존성 설치
uv sync

# 새 패키지 추가
uv add <package-name>

# 패키지 제거
uv remove <package-name>

# 패키지 목록 확인
uv pip list

# 가상환경 활성화
source .venv/bin/activate  # macOS/Linux
.venv\Scripts\activate     # Windows
```

### 개발 도구
```sh
# Jupyter Lab 실행
uv run jupyter lab

# AutoGen Studio 실행
uv run autogenstudio ui --port 8081

# 노트북을 Python 스크립트로 변환
uv run jupyter nbconvert --to script notebook.ipynb

# 의존성 업데이트
uv sync --upgrade
```
## 📚 샘플 노트북

이 프로젝트에는 Autogen 0.4(현재 0.6)의 다양한 기능을 보여주는 10개의 예제 노트북이 포함되어 있습니다:

### 1. [01.quickstart.ipynb](01.quickstart.ipynb)
**기본 시작 가이드**
- 단일 에이전트와 간단한 날씨 도구를 사용한 기본 예제
- `AssistantAgent`와 `RoundRobinGroupChat`의 기본 사용법
- 실시간 콘솔 상호작용 구현

### 2. [02.teams.ipynb](02.teams.ipynb)
**팀 구성 및 종료 조건**
- 단일 에이전트 팀의 생성과 실행
- `TextMentionTermination`을 사용한 종료 조건 설정
- 날씨 정보 조회 도구와 함께 하는 팀 워크플로우

### 3. [03.selector-group-chat.ipynb](03.selector-group-chat.ipynb)
**스마트 발언자 선택**
- 모델 기반 발언자 선택 메커니즘
- 웹 검색 및 데이터 분석을 위한 다중 에이전트 협업
- 컨텍스트 인식 대화 관리

### 4. [04.swarm.ipynb](04.swarm.ipynb)
**스웜 패턴 구현**
- 항공권 환불 프로세스 자동화
- 에이전트 간 핸드오프 메커니즘
- 역할 기반 작업 분담과 협업

### 5. [05.magentic-one.ipynb](05.magentic-one.ipynb)
**Magentic One 프레임워크**
- 파일 서퍼, 웹 서퍼, 코더, 실행자 에이전트 통합
- 복잡한 작업의 자동화된 완료
- 멀티모달 웹 상호작용 지원

### 6. [06.travelagent.ipynb](06.travelagent.ipynb)
**여행 계획 에이전트**
- 여행 계획, 현지 정보, 언어 팁, 요약 에이전트 협업
- 역할별 전문 에이전트 구성
- 포괄적인 여행 계획 수립 워크플로우

### 7. [07.research.ipynb](07.research.ipynb)
**연구 및 데이터 분석**
- 구글 검색 및 주식 데이터 분석 도구
- 실시간 데이터 수집과 분석
- 시각화 및 보고서 생성

### 8. [08.review.ipynb](08.review.ipynb)
**리뷰 및 분석 시스템**
- 웹 검색 기반 정보 수집
- 자동화된 리뷰 및 분석 프로세스
- 구조화된 정보 처리

### 9. [09.debate.ipynb](09.debate.ipynb)
**다중 에이전트 토론**
- GSM8K 수학 문제 해결을 위한 에이전트 토론
- 희소 통신 토폴로지를 통한 에이전트 상호작용
- 다수결 투표를 통한 최종 답안 도출

### 10. [10.code-execution.ipynb](10.code-execution.ipynb)
**코드 생성 및 실행**
- 사용자 정의 코드 생성 에이전트
- Docker 컨테이너 기반 안전한 코드 실행
- 주식 데이터 분석 및 시각화 예제

## 🔧 기술 스택

### 주요 의존성
- **autogen-agentchat**: 에이전트 기반 대화 시스템
- **autogen-ext**: 확장 기능 및 도구
- **autogen-core**: 핵심 라이브러리
- **python-dotenv**: 환경 변수 관리
- **openai**: OpenAI API 클라이언트
- **playwright**: 웹 자동화
- **yfinance**: 주식 데이터 API
- **matplotlib**: 데이터 시각화
- **pandas**: 데이터 분석
- **docker**: 컨테이너 실행

### 개발 도구
- **uv**: 빠른 Python 패키지 관리
- **jupyter**: 인터랙티브 노트북
- **black**: 코드 포맷터
- **flake8**: 코드 린터

## 🤝 기여하기

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.

## 🆘 지원

문제가 발생하거나 질문이 있으시면:
- [GitHub Issues](https://github.com/your-username/autogen04-sample/issues)에서 이슈를 생성하세요
- [GitHub Discussions](https://github.com/your-username/autogen04-sample/discussions)에서 토론에 참여하세요

## 🔗 관련 링크

- [AutoGen 공식 문서](https://microsoft.github.io/autogen/)
- [OpenAI API 문서](https://platform.openai.com/docs)
- [UV 문서](https://docs.astral.sh/uv/)
- [Jupyter 문서](https://jupyter.org/documentation)

---

⭐ 이 프로젝트가 도움이 되었다면 스타를 눌러주세요!