# Skills Repo

이 레포는 **프로젝트의 `.documents/` 문서 운영을 자동화/표준화**하기 위한 Codex 스킬 모음입니다.
각 스킬은 `SKILL.md`에 정의되어 있으며, 실행 시 지정된 문서에만 결과를 기록합니다.

## 핵심 원칙
- **언어/프레임워크 비의존**: 구현 방식이 아니라 *문서 산출물*에 초점을 둡니다.
- **문서가 상태의 소스**: 진행/결정/리뷰 상태는 `.documents/` 하위 문서로 관리합니다.
- **스킬은 역할**: 리뷰/계획/UX/QA/운영 등 역할별로 분리합니다.
- **append로 이력 관리**: 최신 상태 요약은 상단, 이력은 하단에 쌓습니다.

## 가드레일 (강제 규칙)
- **모든 write target은 `.documents/` 하위여야 함** (스크립트와 SKILL에서 강제)
- **읽기 범위는 넓게, 쓰기 범위는 좁게** (allowlist 적용)
- **모든 항목은 ID를 가진다** (R1-01, Q01 등)
- **각 문서는 상단에 Current Snapshot을 가진다**
- **append 섹션은 날짜/라운드 포함**
- **스킬 간 핸드오프는 문서 링크/ID로만**

## 디렉터리 구조
```
skills/
├── code-reviewer/
│   ├── SKILL.md
│   ├── references/CHECKLIST.md
│   ├── assets/TEMPLATE.md
│   └── scripts/scaffold_doc.py
├── code-fixer/
│   └── ...
├── planner/
├── uiux*
├── test*
├── _ops*
└── scripts/
    └── init_skill.py
```

## 공통 리소스
각 스킬 디렉터리에는 아래 리소스를 포함합니다.
- `references/CHECKLIST.md`: 섹션별 체크리스트(검토 기준)
- `assets/TEMPLATE.md`: 문서 템플릿(섹션/필드 정의)
- `scripts/scaffold_doc.py`: 문서 스캐폴딩 생성

### 문서 스캐폴딩 사용법
```bash
# 템플릿 기반 생성
python3 scripts/scaffold_doc.py \
  --output .documents/plan/PLAN.md \
  --title "Plan" \
  --template assets/TEMPLATE.md

# 기존 문서 하단에 섹션 추가
python3 scripts/scaffold_doc.py \
  --output .documents/plan/PLAN.md \
  --title "Plan Review" \
  --template assets/TEMPLATE.md \
  --append
```
- 템플릿 내 `{{DATE}}`, `{{TITLE}}`는 자동 치환됩니다.
- `--append`는 기존 문서 뒤에 날짜 포함 섹션을 추가합니다.
- 출력 경로가 `.documents/` 하위가 아니면 에러가 발생합니다.

## 스킬 목록과 산출물
### Coder
- `code-reviewer`: 코드 리뷰 → `.documents/review/AI_REVIEW.md`
- `code-fixer`: 리뷰 항목 수정 → `.documents/review/AI_CHANGES.md` + **AI_REVIEW.md Status 업데이트 허용**
- `refactor-scout`: 구조 개선 후보 발굴 → `.documents/review/REFACTOR_BACKLOG.md`

### Plan
- `planner`: 요구사항 → 계획/작업 목록 → `.documents/plan/PLAN.md`
- `plan-reviewer`: 계획 리뷰/질문 추가 → `.documents/plan/PLAN.md` (Review 섹션 append)
- `spec-writer`: 계획 → 명세서 → `.documents/plan/SPEC.md`

### UI/UX
- `uiux-engineer`: UX 설계 문서 → `.documents/uiux/UIUX.md`
- `uiux-reviewer`: UX 리뷰 → `.documents/uiux/UIUX.md` (Review 섹션 append)
- `copywriter`: UI 카피 작성 → `.documents/uiux/UIUX.md` (Copy 섹션 append)

### Test
- `qa-engineer`: QA 매트릭스 → `.documents/qa/QA_MATRIX.md`
- `risk-based-tester`: 리스크 기반 최소 세트 → `.documents/qa/QA_MATRIX.md` (Risk 섹션 append)
- `tester`: 테스트 실행/결과 기록 → `.documents/qa/TEST_REPORT.md`
- `test-author` (옵션): 테스트 설계 문서 → `.documents/qa/TEST_PLAN.md`
  - 사용 조건: 자동 테스트 코드 작성이 필요 없고, 실행 전 설계/시나리오 정리가 필요할 때

### Ops (범용 문서 운영)
- `bug-triager`: 이슈/로그 정리 → `.documents/_ops/BUG_TRIAGE.md`
- `dependency-auditor`: 의존성 점검 → `.documents/_ops/DEPENDENCY_AUDIT.md`
- `performance-profiler`: 측정 계획 → `.documents/_ops/PERF_PROFILE_PLAN.md`
- `security-reviewer`: 보안 리뷰 → `.documents/_ops/SECURITY_AUDIT.md`
- `release-noter`: 릴리즈 노트 → `.documents/_ops/RELEASE_NOTES.md`
- `docs-librarian`: 문서 정리/인덱스 → `.documents/_ops/DOCS_INDEX.md`
- `decision-log-writer`: 의사결정 로그 → `.documents/_ops/DECISIONS.md`
- `project-manager`: 다음 실행 스킬 추천 로그 → `.documents/_ops/PROJECT_MANAGER.md`

## 스킬별 기본 규칙(요약)
- **reviewer 계열은 본문 수정 금지, 리뷰 섹션 append만 허용**
- **code-fixer는 AI_REVIEW.md의 Status만 변경 가능**
- **_ops 스킬은 allowlist 파일만 작성 가능**
- **모든 스킬은 write target이 `.documents/` 하위여야 함**

각 스킬의 상세 규칙은 해당 폴더의 `SKILL.md`를 참고하세요.

## 새 스킬 추가
```bash
python3 scripts/init_skill.py <skill-name> --path .
```
- 이름은 소문자/숫자/하이픈만 허용
- 생성 후 `SKILL.md` 작성 및 리소스(`references/`, `assets/`, `scripts/`) 추가

## 문서 운영 규칙
- `.documents/`는 프로젝트 상태의 **단일 진실 소스**입니다.
- PM 제어 문서: `.documents/_ops/SKILLS_ENABLED.md`, `.documents/_ops/RUNBOOK.md`
- 날짜 포맷은 `YYYY-MM-DD` 사용
- 각 문서는 **상단에 Current Snapshot** 섹션을 둡니다.
- append 섹션은 날짜/라운드 번호를 포함합니다.
- 리뷰/수정 루프는 상호 링크로 연결합니다:
  - `AI_CHANGES.md`는 수정한 항목의 `R{X}-NN`과 `AI_REVIEW.md` 섹션을 링크
  - `AI_REVIEW.md` 항목에 `Last Fix` 필드로 최신 수정 라운드를 기록
  - 예: `AI_REVIEW.md`의 `Last Fix: AI_CHANGES.md#Round2`

## 권장 사용 흐름
1) `planner` → `plan-reviewer` → `spec-writer`
2) `uiux-engineer` → `uiux-reviewer` → `copywriter`
3) `qa-engineer` → `risk-based-tester` → `tester` → `test-author`(필요 시)
4) `code-reviewer` → `code-fixer` → `release-noter`

## 참고
- 모든 스킬은 **언어/프레임워크에 의존하지 않는 문서 산출**을 우선합니다.
- `.documents/_ops`는 규모가 커질수록 가치가 커집니다.
