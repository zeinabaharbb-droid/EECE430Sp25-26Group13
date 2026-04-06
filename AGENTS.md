## Cursor Cloud specific instructions

**VolleyHub** is a Django CRUD app for managing volleyball players. It uses SQLite (no external DB needed).

### Quick reference

| Action | Command |
|---|---|
| Install deps | `pip install -r requirements.txt` |
| Run migrations | `python3 manage.py migrate` |
| Run tests | `python3 manage.py test` |
| System check | `python3 manage.py check` |
| Dev server | `python3 manage.py runserver 0.0.0.0:8000` |

### Notes

- Python 3.12 is pre-installed and matches the project requirement.
- Django is the sole dependency (`requirements.txt`).
- SQLite database is file-based (`db.sqlite3`); no external database service is required.
- You must run `python3 manage.py migrate` before starting the dev server if `db.sqlite3` does not exist or after model changes.
- The dev server listens on port 8000. Use `0.0.0.0:8000` to allow access from the browser/desktop pane.
- There are no automated tests written yet (`players/tests.py` is empty), but the test framework runs cleanly with `python3 manage.py test`.
- No linter is configured in the project. Use `python3 manage.py check` for Django system checks.
