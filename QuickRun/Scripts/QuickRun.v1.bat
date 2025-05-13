@echo off

::添加删除程序
IF "%1"=="cx" GOTO :cx

::默认应用
IF "%1"=="mr" GOTO :mr

::可选功能
IF "%1"=="kxgn" GOTO :kxgn

::启动
IF "%1"=="qd" GOTO :qd

::网络连接
IF "%1"=="wl" GOTO :wl
IF "%1"=="net" GOTO :wl

::系统属性 - 我的电脑右键属性
IF "%1"=="xt" GOTO :xt

::消息
IF "%1"=="xx" GOTO :xx

::通知
IF "%1"=="tz" GOTO :tz

::设备管理器
IF "%1"=="sb" GOTO :sb

::电源
IF "%1"=="dy" GOTO :dy
IF "%1"=="power" GOTO :dy

::休眠
IF "%1"=="xm" GOTO :xm

::电池
IF "%1"=="dc" GOTO :dc

::存储
IF "%1"=="cc" GOTO :cc

::平板模式
IF "%1"=="pb" GOTO :pb

::多任务
IF "%1"=="drw" GOTO :drw

::远程桌面
IF "%1"=="yc" GOTO :yc

::关于本机
IF "%1"=="gy" GOTO :gy

::更新
IF "%1"=="gx" GOTO :gx

::蓝牙
IF "%1"=="ly" GOTO :ly
::打印机
IF "%1"=="dyj" GOTO :dyj
::输入设备
IF "%1"=="srsb" GOTO :srsb
::蜂窝网络 - only
IF "%1"=="fwwl" GOTO :fwwl
::WIFI
IF "%1"=="wifi" GOTO :wifi
IF "%1"=="wlan" GOTO :wifi
::LAN
IF "%1"=="lan" GOTO :lan
::flushdns
IF "%1"=="flushdns" GOTO :flushdns

::防火墙
IF "%1"=="fhq" GOTO :fhq
IF "%1"=="firewall" GOTO :fhq
::高级防火墙
IF "%1"=="gjfhq" GOTO :gjfhq
IF "%1"=="aq" GOTO :aq

::任务计划
IF "%1"=="rw" GOTO :rw
IF "%1"=="jhrw" GOTO :rw

::桌面属性：颜色/背景/锁屏/字体/开始/任务栏
IF "%1"=="gxh" GOTO :zm
IF "%1"=="zm" GOTO :zm
IF "%1"=="bj" GOTO :zm
IF "%1"=="ys" GOTO :ys
IF "%1"=="color" GOTO :ys
IF "%1"=="sp" GOTO :sp
IF "%1"=="theme" GOTO :zt
IF "%1"=="zt" GOTO :zt
IF "%1"=="ziti" GOTO :ziti
IF "%1"=="font" GOTO :ziti
IF "%1"=="fonts" GOTO :ziti
IF "%1"=="ks" GOTO :ks
IF "%1"=="kscd" GOTO :kscd
IF "%1"=="rwl" GOTO :rwl

::屏幕分辨率
IF "%1"=="pm" GOTO :pm
IF "%1"=="fbl" GOTO :pm

::投影
IF "%1"=="ty" GOTO :ty

::区域
IF "%1"=="qy" GOTO :qy

::事件查看器
IF "%1"=="sj" GOTO :sj

::声音
IF "%1"=="sy" GOTO :sy
IF "%1"=="sound" GOTO :sy

::计算机管理
IF "%1"=="jsj" GOTO :jsj
IF "%1"=="gl" GOTO :jsj

::目录设置folder
IF "%1"=="ml" GOTO :ml

::键盘keyboard
IF "%1"=="jp" GOTO :jp

::用户control userpasswords
IF "%1"=="yh" GOTO :yh
::密码control userpasswords2
IF "%1"=="mm" GOTO :mm
IF "%1"=="yh2" GOTO :mm
IF "%1"=="user" GOTO :mm
::本地用户与用户组
IF "%1"=="bdyh" GOTO :bdyh
IF "%1"=="users" GOTO :bdyh

::账户信息
IF "%1"=="zh" GOTO :zh

::日期和时间
IF "%1"=="rq" GOTO :rq

::服务
IF "%1"=="fw" GOTO :fw

::控制面板 control panel
IF "%1"=="kzmb" GOTO :kzmb

::输入法/日期/区域/语言
IF "%1"=="sr" GOTO :sr
IF "%1"=="yy" GOTO :sr
IF "%1"=="srf" GOTO :py
IF "%1"=="py" GOTO :py

::磁盘:
IF "%1"=="cp" GOTO :cp
IF "%1"=="disk" GOTO :cp

::备份还原
IF "%1"=="bfhy" GOTO :bfhy

::颜色较准
IF "%1"=="ysjz" GOTO :ysjz
::颜色管理
IF "%1"=="ysgl" GOTO :ysgl
::ClearType
IF "%1"=="cleartype" GOTO :cleartype


::碎片整理
IF "%1"=="spzl" GOTO :spzl
IF "%1"=="cpyh" GOTO :spzl

::性能
IF "%1"=="xn" GOTO :xn
::资源监视器
IF "%1"=="zy" GOTO :zy

::共享
IF "%1"=="share" GOTO :share

::组策略
IF "%1"=="zcl" GOTO :zcl
IF "%1"=="gpedit" GOTO :zcl

::本地安全策略
IF "%1"=="bdaq" GOTO :bdaq
IF "%1"=="secpol" GOTO :bdaq

::系统激活
IF "%1"=="xtjh" GOTO :xtjh
IF "%1"=="jh" GOTO :xtjh

::鼠标
IF "%1"=="shubiao" GOTO :shubiao

::自动播放
IF "%1"=="zdbf" GOTO :zdbf
IF "%1"=="autoplay" GOTO :zdbf

::截图
IF "%1"=="jt" GOTO :jt

::管理工具
IF "%1"=="glgj" GOTO :glgj

::移动中心
IF "%1"=="ydzx" GOTO :ydzx

::屏幕键盘
IF "%1"=="osk" GOTO :osk

::版本
IF "%1"=="ver" GOTO :ver

::辅助工具
IF "%1"=="fzgj" GOTO :fzgj

::空
IF "%1"=="" GOTO :kzmb

GOTO :Default


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:cx
::control.exe appwiz.cpl
start ms-settings:appsfeatures
GOTO :EOF

:mr
start ms-settings:defaultapps
GOTO :EOF

:kxgn
start ms-settings:optionalfeatures
GOTO :EOF

:qd
start ms-settings:startupapps
GOTO :EOF

:wl
::control.exe ncpa.cpl
start ms-settings:network-status
GOTO :EOF

:xt
control.exe sysdm.cpl
GOTO :EOF

:xx
control.exe wscui.cpl
GOTO :EOF

:tz
start ms-settings:notifications
GOTO :EOF

:sb
::devmgmt.msc
control.exe hdwwiz.cpl
GOTO :EOF

:dy
control.exe powercfg.cpl
GOTO :EOF
:xm
start ms-settings:powersleep
GOTO :EOF
:dc
start ms-settings:batterysaver
GOTO :EOF

:cc
start ms-settings:storagesense
GOTO :EOF

:pb
start ms-settings:tabletmode
GOTO :EOF

:drw
start ms-settings:multitasking
GOTO :EOF

:yc
start ms-settings:remotedesktop
GOTO :EOF

:gy
start ms-settings:about
GOTO :EOF

:gx
start ms-settings:windowsupdate
GOTO :EOF

:ly
start ms-settings:bluetooth
GOTO :EOF

:dyj
start ms-settings:printers
GOTO :EOF

:srsb
start ms-settings:typing
GOTO :EOF

:fwwl
start ms-settings:network-cellular
GOTO :EOF

:wifi
start ms-settings:network-wifi
GOTO :EOF

:lan
start ms-settings:network-ethernet
GOTO :EOF

:flushdns
::no window
ipconfig /flushdns
GOTO :EOF

:fhq
control.exe firewall.cpl
GOTO :EOF

:gjfhq
wf.msc
GOTO :EOF

:aq
start ms-settings:windowsdefender
GOTO :EOF

:rw
taskschd.msc
GOTO :EOF

:zm
::control.exe desktop
start ms-settings:personalization-background
GOTO :EOF
:ys
start ms-settings:colors
GOTO :EOF
:sp
start ms-settings:lockscreen
GOTO :EOF
:zt
start ms-settings:themes
GOTO :EOF
:ziti
start ms-settings:fonts
GOTO :EOF
:ks
start ms-settings:personalization-start
GOTO :EOF
:kscd
start ms-settings:personalization-start-places
GOTO :EOF
:rwl
start ms-settings:taskbar
GOTO :EOF

:pm
::::dpiscaling
::control.exe desk.cpl
start ms-settings:display
GOTO :EOF

:ty
::start ms-settings:quietmomentspresentation
displayswitch
GOTO :EOF

:qy
::control.exe intl.cpl
start ms-settings:regionformatting
GOTO :EOF

:sj
eventvwr
GOTO :EOF

:sy
::control.exe mmsys.cpl 
start ms-settings:sound
GOTO :EOF

:jsj
::compmgmtlauncher
compmgmt.msc
GOTO :EOF

:ml
control.exe folders
GOTO :EOF

:jp
control.exe keyboard
GOTO :EOF

:yh
control.exe userpasswords
GOTO :EOF
:mm
netplwiz
GOTO :EOF
:bdyh
lusrmgr.msc
GOTO :EOF
:zh
start ms-settings:yourinfo
GOTO :EOF

:rq
::control.exe date/time
::control.exe timedate.cpl
start ms-settings:dateandtime
GOTO :EOF

:fw
services.msc
GOTO :EOF

:kzmb
control.exe panel
GOTO :EOF

:sr
control.exe  input.dll
GOTO :EOF

:py
start ms-settings:regionlanguage-chsime-pinyin
GOTO :EOF

:cp
diskmgmt.msc
GOTO :EOF

:bfhy
sdclt
GOTO :EOF

:ysjz
dccw
GOTO :EOF
:ysgl
colorcpl
GOTO :EOF
:cleartype
cttune
GOTO :EOF

:spzl
dfrgui
GOTO :EOF

:xn
perfmon
GOTO :EOF

:zy
resmon
GOTO :EOF

:share
fsmgmt.msc
GOTO :EOF

:zcl
gpedit.msc
GOTO :EOF

:bdaq
secpol.msc
GOTO :EOF

:xtjh
::slui
start ms-settings:activation
GOTO :EOF

:shubiao
::control.exe mouse
start ms-settings:mousetouchpad
GOTO :EOF

:zdbf
start ms-settings:autoplay
GOTO :EOF

:jt
snippingtool
GOTO :EOF

:glgj 
control.exe admintools
GOTO :EOF

:ydzx 
mblctr
GOTO :EOF

:osk 
osk
GOTO :EOF

:ver 
winver
GOTO :EOF

:fzgj 
utilman
GOTO :EOF


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Default
control.exe %1

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::https://learn.microsoft.com/zh-cn/windows/apps/develop/launch/launch-settings-app
: