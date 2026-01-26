스킬 구성

프로젝트 폴더의 .documents 폴더를 구성 각 요소별 하위폴더/*.md 파일을 토대로 상태를 관리

coder
1. code-reviewer(현재존재) : 코드를 리뷰해서 성능이나 버그, 보안 부족한점을 리뷰 
2. code-fixer(현재존재) : 리뷰된 내용을 토대로 코드를 수정
3. refactor-scout (선택): “버그/성능이 아니라 구조 개선 후보만 발굴해서 backlog에 적기”

- .documents/review/AI_REVIEW.md, AI_CHANGES.md 로 리뷰내용, 변경내역을 관리

plan
1. planer : 사용자 요구사항(요구사항문서)에 따라 구현 내용을 plan&task로 구성
2. plan-reviewer : plan 문서를 리뷰해서 부족한 부분을 사용자에게 물어보고 추가적으로 채워넣는 역할
3. spec-writer: plan을 “명세(입출력/에러/데이터/경계)”로 내리는 역할

- .documents/plan/PLAN.md

uiux
1. uiux-engineer : 웹/앱등의 ui/ux 설계 문서를 작성
2. uiux-reviewer : 작성된 ui/ux 설계문서를 꼼꼼히 리뷰 및 재검토
3. copywriter (의외로 효율 큼): 버튼/에러메시지/토스트/빈상태 문구를 톤&매너 맞춰 정리

- .documents/uiux/UIUX.md

test
1. qa-engineer : 구성된 코드를 qa 단위로 나눈 뒤 문서로 구성
2. tester : 구성된 qa matrix 문서를 토대로 테스트 코드 작성 혹은 테스트 빌드
3. risk-based-tester: “QA matrix에서 우선순위/리스크 기반으로 최소 핵심 세트 뽑기”

- .documents/qa/QA_MATRIX.md

범용 코드 skills
1. bug-triager : 이슈/로그/스택트레이스/재현정보를 표준 템플릿으로 정리
- “원인 가설 3개 + 확인 방법 + 우선순위” 같은 형태
2. dependency-auditor : 의존성 업데이트/라이선스/취약점/사용되지 않는 의존성 정리(문서로)
- 실제 수정은 fixer가 하게 분리
3. performance-profiler : “측정 계획(어디를, 무엇으로, 어떤 지표로)” 문서화
- 성능은 ‘감’으로 고치면 망하니까, 이 스킬이 범용성이 큼
4. security-reviewer (code-reviewer에서 분리 권장) : 인증/인가/비밀관리/입력검증/로그 민감정보 같은 체크리스트 기반
- 보안은 범주가 달라서 따로 떼면 품질이 좋아짐
5. release-noter : 변경내역/릴리즈노트/마이그레이션 가이드 작성
- 프로젝트가 커질수록 진짜 편해짐
6. docs-librarian : .documents/ 문서들 정리(중복 제거, 링크, 목차, “최신이 뭔지” 표시)
- 스킬이 많아질수록 문서가 곧 복잡도가 되기 때문에 필요해짐

* 범용(지원 루프) 문서 전용 폴더 하나 추가:
.documents/_ops/
- BUG_TRIAGE.md
- DEPENDENCY_AUDIT.md
- PERF_PROFILE_PLAN.md
- SECURITY_AUDIT.md
- RELEASE_NOTES.md
- DOCS_INDEX.md (docs-librarian이 유지)

decision-log-writer: 중요한 선택(트레이드오프/대안/결정/근거)을 기록
→ .document/_ops/DECISIONS.md
나중에 “왜 이렇게 했지?”가 제일 비용 큰 문제라서, 범용 스킬로 의외로 가치 큼.