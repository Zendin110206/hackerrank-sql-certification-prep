# Review Workflow

This document describes the public review standard used for accepted SQL practice batches.

## Batch Scope

Review batches are kept small enough to preserve quality:

- Basic practice: 3 to 6 problems;
- Intermediate practice: 2 to 4 problems;
- Advanced practice: 1 to 2 problems.

Smaller batches are preferred for conceptually difficult problems.

## Review Inputs

Each review batch records:

- problem titles;
- file paths;
- HackerRank acceptance status;
- important correction notes from the solving process.

## Review Criteria

Each solution is checked for:

- correct output columns;
- correct row filters;
- required sorting;
- correct aggregation or grouping;
- readable SQL formatting;
- clear explanation;
- updated challenge roadmap;
- updated practice log.

## Commit Readiness

A batch is considered ready when:

- all listed solutions are accepted;
- explanations are filled;
- progress files are updated;
- the diff contains only expected public files.

Example checkpoint messages:

```text
feat(sql): solve initial basic select practice
feat(sql): solve basic station filtering practice
feat(sql): solve basic aggregation practice
docs(notes): update SQL practice review log
```
