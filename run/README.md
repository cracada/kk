## QuickRun

Windows有许多的内置命令，比如通过Control来打开控制面板，通过mssettings:打开设置，通过shell:跳转目录，通过.msc来打开控制单元，通过单独的命令执行特定操作，有时也会有一些自己的小脚本需要执行，记住这些实在是极其麻烦的事情，通过Win+I打开设置或控制面板再找到对应的项就更麻烦了。

用一个简单的bat把这些命令都集中起来，通过拼音首字母来作为关键词，如cx代表程序管理，fw代表服务，dy代表电源。然后直接或者通过listary调用就很方便了。自用的东西无需严格的判断，够用就行。


通过双击Ctrl呼出Listary后，输入自定义关键词如`run + 关键词`即可打开相应的命令，命令详见QuickRun.txt



**Listary -- 选项 -- 命令 --添加**

```
快捷键：无
作用范围：Listary
关键字：run
标题：  Quickrun
路径：  Path:\QuickRun.bat
参数：   {query}
工作目录：optional
静默执行：True
以管理员身份运行：optional
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
工作目录：optional
静默执行：True
以管理员身份运行：optional

```

把`shell`换成`cmd`、`set`、`control`再设置三个命令，这样在listary的输入框也可以分别执行shell:、cmd、mssetting:和control对应的任意命令了



set arg：代替 mssettings:arg  [1](https://learn.microsoft.com/en-us/windows/apps/develop/launch/launch-settings-app) [2](https://ss64.com/nt/syntax-settings.html)

control arg: 代替control.exe arg [1](https://en.wikipedia.org/wiki/Control_Panel_(Windows))

shell arg: 代替shell arg [1](https://ss64.com/nt/shell.html)

cmd command： 代替开始-运行-cmd，再输入命令  [1](https://ss64.com/nt/)
