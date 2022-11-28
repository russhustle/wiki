Linux
===

Commands
---

- [万字详解，吃透 Linux 常用命令！](https://zhuanlan.zhihu.com/p/537109192)

Multiplexer
---

> Terminal **multiplexers** allow multiple computers to connect to the same session at once, enabling collaboration between multiple users.

### tmux

### screen

| Commands                         | Description                                         |
| -------------------------------- | --------------------------------------------------- |
| screen -ls                       | Running sessions                                    |
| screen -S `session_name`         | Create                                              |
| screen -d `session_name`         | Detach                                              |
| screen -r `session_name`         | Go back                                             |
| screen -d -r `session_name`      | Detach the current session and go back to a session |
| screen -S -X `session_name` quit | Kill                                                |
