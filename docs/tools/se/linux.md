Linux
===

Commands
---

- [万字详解，吃透 Linux 常用命令！](https://zhuanlan.zhihu.com/p/537109192)

|      |                    |                  |      |
| ---- | ------------------ | ---------------- | ---- |
| 1    | `ls`               | `ls [opt] [dir]` |      |
| 2    | file               |                  |      |
| 3    | pwd                |                  |      |
| 4    | whoami             |                  |      |
| 5    | cd                 |                  |      |
|      | 相对路径和绝对路径 |                  |      |
| 6    | which              |                  |      |
| 7    | touch              |                  |      |
| 8    | mkdir              |                  |      |
|      | 添加用户信任关系   |                  |      |
| 9    | rmdir              |                  |      |
|      | rm                 |                  |      |
|      | man                |                  |      |
|      | cp                 |                  |      |
|      | mv                 |                  |      |
|      | 编辑               |                  |      |
|      | cat                |                  |      |
|      | echo               |                  |      |
|      | 重定向             |                  |      |
|      | more               |                  |      |
|      | less               |                  |      |
|      | head               |                  |      |
|      | tail               |                  |      |
|      | 管道操作           |                  |      |
|      | date               |                  |      |
|      | cal                |                  |      |
|      | find               |                  |      |
|      | grep               |                  |      |
|      | zip/unzip          |                  |      |
|      | tar                |                  |      |
|      | bc                 |                  |      |
|      | uname              |                  |      |
|      | shutdown           |                  |      |
|      | stat               |                  |      |
|      | Linux下的三个时间  |                  |      |
|      | touch补充          |                  |      |
|      | Linux中的热键      |                  |      |
|      | 指令一览           |                  |      |



|         |      |
| ------- | ---- |
| `ls`    |      |
| `ls -a` |      |
| `ls -l` |      |
| `ll`    |      |

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

SSH
---

> Secure Shell Protocol (SSH)
