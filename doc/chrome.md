[Chrome Install](https://www.google.cn/intl/zh-CN/chrome/)

#### 打包扩展提示CSP错误
Chrome打包扩展提提示“加载扩展失败。‘content_security_policy’的值无效”？

这是由于manifest现在更新为V3，因此content_security_policy是一个字典。在这种情况下，应该更改此行

`"content_security_policy": "script-src 'self'; object-src 'self'"`

为

`
"content_security_policy": {
  "extension_pages": "script-src 'self'; object-src 'self'"}
`

#### chrome保存图片默认为jfif格式如何修改为jpg

打开注册表编辑器，导航到路径`HKEY_CLASSES_ROOT\MIME\Database\Content Type\image/jpeg`。
找到右侧的`Extension`选项，将数值从.jfif修改为.jpg。然后重启Chrome浏览器，这样保存的图片就会默认使用JPG格式‌

### chrome保存图片默认为jfif格式如何修改为jpg

打开注册表编辑器，导航到路径HKEY_CLASSES_ROOT\MIME\Database\Content Type\image/jpeg。  
找到右侧的Extension选项，将数值从.jfif修改为.jpg。然后重启Chrome浏览器，这样保存的图片就会默认使用JPG格式‌  



## 常用扩展


[Header Editor](https://www.crxsoso.com/webstore/detail/eningockdidmgiojffjmkdblpjocbhgh):解决reCaptcha验证码无法显示的问题  

[WebP / Avif image converter](https://www.crxsoso.com/webstore/detail/pbcfbdlbkdfobidmdoondbgdfpjolhci):webp/avif自动转换为jpg格式，右键c即可  

[SuperDrag](https://www.crxsoso.com/webstore/detail/nmnjeedgpnieleiebjaabgaaeccnddbf):鼠标拖拽

[CSDN自动展开与免登录](https://www.crxsoso.com/webstore/detail/kjoehdlockiihccmfnoamenhobkkddng)：CSDN



