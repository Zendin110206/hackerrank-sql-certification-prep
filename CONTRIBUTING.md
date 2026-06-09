# Repository Standards

This repository is a personal SQL learning portfolio. The standards below define how solution files and documentation are maintained.

## Solution Lifecycle

Accepted practice solutions are documented through this lifecycle:

1. Challenge completed on HackerRank.
2. Matching `.sql` file updated with the accepted query.
3. Short original task summary added.
4. Concise explanation added.
5. `CHALLENGES.md` and `notes/practice_log.md` updated.
6. Related changes grouped into a meaningful checkpoint.

## Review Criteria

Completed solutions are reviewed for:

- correct requested output columns;
- correct filters, joins, grouping, and sorting;
- readable SQL formatting;
- concise explanation;
- accurate progress tracking;
- public-safe content.

## Commit Message Convention

Repository checkpoints follow this style:

```text
type(scope): concise message
```

Examples:

```text
docs(project): establish SQL practice foundation
feat(sql): solve initial basic select practice
docs(notes): update SQL practice log
docs(sql): expand aggregation concept notes
chore(repo): refine public documentation structure
```

Vague checkpoint messages such as `update`, `fix`, `sql`, or `first commit` are avoided in the project history.
