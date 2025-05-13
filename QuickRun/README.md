# QuickRun

Windows有许多的内置命令，比如通过Control来打开控制面板，通过mssettings:打开设置，通过slui等单独的命令执行特定操作，通过services.msc来打开控制单元，通过shell来打开特定文件夹，有时也会有一些自己的小脚本需要执行，记住这些实在是极其麻烦的事情，那么用一个简单的bat把这些命令都集中起来，通过拼音首字母来作为关键词，然后直接或者通过listary调用就很方便了。写的很简略、简单，也很粗糙，够用就行了。


通过双击Ctrl呼出Listary后，输入自定义关键词如`run + 空格 + 关键词`即可打开相应的命令，命令详见QuickRun.bat



**Listary -- 选项 -- 命令 --添加**

```
快捷键：无
作用范围：Listary
关键字：run
标题：  Quickrun
路径：  Path:\QuickRun.bat
参数：   {query}
工作目录：Path:\
静默执行：True
以管理员身份运行：False
```

PS:也可以把bat放到系统的PATH里，然后通过Win+R随时调用


## cmdRunner
这是另一种调用方式

**Listary -- 选项 -- 命令 --添加**

```
快捷键：无
作用范围：Listary
关键字：shell
标题：  Shell
路径：  Path:\cmdRunner.bat
参数：   shell {query}
工作目录：Path:\
静默执行：True
以管理员身份运行：可选

```

把`shell`换成`cmd`、`set`、`control`再设置三个命令，这样在listary的输入框也可以分别执行shell:、cmd、mssetting:和control对应的任意命令了