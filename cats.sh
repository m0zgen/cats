#!/bin/bash
# Created by Yevgeniy Goncahrov, https://sys-adm.in
# Related by from forum topic - https://forum.sys-adm.in/index.php?topic=2849.0
# Adding to ~/.bashrc alias and you will see config files without comments and spaces

if grep -q "alias cats" ~/.bashrc
then
    # alias if found
    echo "Alias already installed! Please use cats alias - cats /etc/httpd/conf/httpd.conf"
    exit 1
else
  # alias if not found
cat >> ~/.bashrc <<_EOF_
alias cats="grep -vE '(^[[:space:]]*([#;!].*)?$)' \$1"

_EOF_

  . ~/.bashrc
  echo "Alias successfully installed!"
fi

