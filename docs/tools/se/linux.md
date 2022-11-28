Linux
===

Commands
---

- [万字详解，吃透 Linux 常用命令！](https://zhuanlan.zhihu.com/p/537109192)

Multiplexer
---

> Terminal **multiplexers** allow multiple computers to connect to the same session at once, enabling collaboration between multiple users.

### tmux

> **T**erminal **MU**tiple**X**er

- [手把手教你使用终端复用神器 Tmux，丢掉鼠标不是梦[视频]](https://zhuanlan.zhihu.com/p/43687973)

session -> window -> pane

Shortcut: `ctrl+B`

### screen

| Commands               | Description                           |
| ---------------------- | ------------------------------------- |
| screen -ls             | Running sessions                      |
| screen -S NAME         | Create                                |
| screen -d NAME         | Detach                                |
| screen -r NAME         | Attach                                |
| screen -d -r NAME      | Detach the current session and attach |
| screen -S -X NAME quit | Kill                                  |

### Byobu
