### 运行库合集
[华军下载](https://www.onlinedown.net/search?searchname=%E5%BE%AE%E8%BD%AF%E5%B8%B8%E7%94%A8%E8%BF%90%E8%A1%8C%E5%BA%93&button=%E6%90%9C%E7%B4%A2)

### Mas系统激活

[MAS](https://massgrave.dev/)  

Powershell执行 `irm https://get.activated.win | iex`  


### 防止桌面图标乱排放
```
1.桌面，右键查看，自动排列图标取消  
2.桌面，右键个性化，主题，桌面图标，允许主题更改桌面图标取消 -----------此步可能不需要  
```

### 右键新建文件类型
```
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\.new]
@="NEWFile"

[HKEY_CLASSES_ROOT\NEWFile]
@="NEW File"

[HKEY_CLASSES_ROOT\NEWFile\DefaultIcon]
@="C:\\Windows\\System32\\wscript.exe,0"

[HKEY_CLASSES_ROOT\NEWFile\Shell\Open\Command]
@="notepad.exe \"%1\""

[HKEY_CLASSES_ROOT\NEWFile\ShellNew]
"NullFile"=""
```
如果文件类型已经存在
```
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\.new]
[HKEY_CLASSES_ROOT\NEWFile\ShellNew]
"NullFile"=""
```

### 查看WIFI密码
```
列出所有已保存的wifi
netsh wlan show profiles

查看指定wifi密码
netsh wlan show profile name="wifiname" key=clear
```

### 开始菜单位置

```
所有用户
%programdata%\Microsoft\Windows\Start Menu

当前用户
%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu
```
### 资源管理器默认打开我的电脑

```
资源管理器 - 文件 -更改文件夹和搜索选项-打开资源管理器时打开：默认“快捷访问”，更改为“此电脑”即可
```

### 资源管理器左侧自动展开文件夹或显示文件树
```
资源管理器 - 查看 - 导航窗格，按需要勾选“展开到打开的文件夹”或“显示所有文件夹”。
```

### 任务栏拼音输入法胖多多出一个“拼”字图标如何删除
```
设置 - 时间和语言 -语言 - 首选语言 - 添加语言 -english(US) ，安装完成后再删除这个english(US)即可
```

### 免密码自动登录

`netplwiz`，按提示设置即可

### 去除资源管理器导航栏内的视频图片文档下载音乐等-除了桌面
```
Windows Registry Editor Version 5.00

[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}]

[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}]

[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}]

[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}]

[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}]

[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}]
```


桌面  
```
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}]
```

### 微软拼音输入法自定义短语以v开头
正常情况下, 使用微软拼音输入法无法添加 `u` 和 `v` 开头的用户短语, 直接尝试添加会被直接拒绝  

右键设置，词库和自学习，添加或编辑自定义短语 （start ms-settings:regionlanguage-chsime-pinyin）  

先随便设置一个如 拼音aaaa：短语bbbbb，然后导出UserDefinedPhrase.dat  

用16进制编辑器如winhex打开此文件找打aaaa，修改为需要的以v开头的字符串  

然后拼音设置里将文件导入，此时v开头的自定义短语已经生效  

原来的aaaa那条记录需要手动删除掉  