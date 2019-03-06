### Cats - RegEx for clear cat command

Script adding alias to ~/.bashrc file:
```bash
alias cats="grep -vE '(^[[:space:]]*([#;!].*)?$)' \$1"
```

Before installing alias script checking previous installation.
