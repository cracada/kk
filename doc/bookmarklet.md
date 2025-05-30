### 小书签


解除网页限制  
```
javascript:function t(e){e.stopPropagation(),e.stopImmediatePropagation&&e.stopImmediatePropagation()}document.querySelectorAll('*').forEach(e=>{'none'===window.getComputedStyle(e,null).getPropertyValue('user-select')&&e.style.setProperty('user-select','text','important')}),['copy','cut','contextmenu','selectstart','mousedown','mouseup','mousemove','keydown','keypress','keyup'].forEach(function(e){document.documentElement.addEventListener(e,t,{capture:!0})}),alert('%E5%B7%B2%E8%A7%A3%E9%99%A4%E7%BD%91%E9%A1%B5%E9%99%90%E5%88%B6%EF%BC%81')();
```

显示星号密码  
```
javascript:(function()%7Bvar%20IN,F;IN=document.getElementsByTagName('input');for(var%20i=0;i<IN.length;i++)%7BF=IN%5Bi%5D;if(F.type.toLowerCase()=='password')%7Btry%7BF.type='text'%7Dcatch(r)%7Bvar%20n,Fa;n=document.createElement('input');Fa=F.attributes;for(var%20ii=0;ii<Fa.length;ii++)%7Bvar%20k,knn,knv;k=Fa%5Bii%5D;knn=k.nodeName;knv=k.nodeValue;if(knn.toLowerCase()!='type')%7Bif(knn!='height'&&knn!='width'&!!knv)n%5Bknn%5D=knv%7D%7D;F.parentNode.replaceChild(n,F)%7D%7D%7D%7D)()
```

搜索  
```
javascript:function%20se(d)%20{return%20d.selection%20?%20d.selection.createRange().text%20:%20d.getSelection()}%20s%20=%20se(document);%20for%20(i=0;%20i%3Cframes.length%20&&%20!s;%20i++)%20s%20=%20se(frames[i].document);%20if%20(!s%20||%20s==%27%27)%20s%20=%20prompt(%27%E4%BD%A0%E6%B2%A1%E6%9C%89%E9%80%89%E6%8B%A9%E6%96%87%E6%9C%AC%EF%BC%8C%E8%AF%B7%E8%BE%93%E5%85%A5%E5%85%B3%E9%94%AE%E8%AF%8D%27,%27%27);%20open(%27https://www.baidu.com%27%20+%20(s%20?%20%27/s?wd=%27%20+%20encodeURIComponent(s)%20:%20%27%27)).focus();
```

百度网页翻译  
```
javascript:(function(){window.open('http://fanyi.baidu.com/transpage?query=%27+escape(location.href)+%27&from=auto&to=zh&source=url&render=1%27)})();
```

查看浏览器UA  
```
javascript:(function(){alert(navigator.userAgent)})()
```

IP查询  
```
javascript:window.open('https://ip.chinaz.com/'%20+%20escape(location.hostname));void(0);
```

DNS查询  
```
javascript:window.open('https://www.robtex.com/dns-lookup/'%20+%20escape(location.hostname.split('.').reverse().splice(0,2).reverse().join('.')));void(0);
```

WHOIS查询  
```
javascript:window.open('http://whois.chinaz.com/'%20+%20escape(location.hostname));void(0);
```

BuildWith查询  
```
javascript:window.open('https://builtwith.com/'%20+%20escape(location.hostname));void(0);
```

网站综合查询  
```
javascript:window.open('https://sitereport.netcraft.com/?url=%27%20+%20escape(location));void(0);
```

网站访问速度检测  
```
javascript:window.open('https://ping.chinaz.com/'%20+%20escape(location.hostname));void(0);
```

谷歌扩展下载  
```
javascript:!(function(){window.trustedTypes&&window.trustedTypes.createPolicy&&window.trustedTypes.createPolicy('default',{createHTML:(e,t)=>e});var e=window.location.href,t=/^https?:\/\/chrome\.google\.com\/webstore\/.+?\/([a-z]{32})(?=[\/#?]|$)/,n=/^https?:\/\/chromewebstore\.google\.com\/.+?\/([a-z]{32})(?=[\/#?]|$)/,r=/^https?:\/\/microsoftedge\.microsoft\.com\/addons\/.+?\/([a-z]{32})(?=[\/#?]|$)/,o=/^https?:\/\/addons.opera.com\/.*?extensions\/(?:details|download)\/([^\/?#]+)/i,c=/^https?:\/\/addons.mozilla.org\/.*?addon\/([^\/%3C%3E''?#]+)/,i=/^https?:\/\/(?:apps|www)\.microsoft\.com\/(?:store|p)\/.+?\/([a-zA-Z\d]{10,})(?=[\/#?]|$)/,s='https://www.crxsoso.com/?auto=1&link=';document.body.innerHTML=document.body.innerHTML.replace(/chrome(webstore)?\.google\.com\/webstore/g,'chrome.crxsoso.com/webstore').replace(/microsoftedge\.microsoft\.com\/addons/g,'microsoftedge.crxsoso.com/addons').replace(/addons\.mozilla\.org/g,'addons.crxsoso.com').replace(/(apps|www)\.microsoft\.com\/store/g,'apps.crxsoso.com/store'),t.test(e)||n.test(e)?window.location.href=e.replace('google.com','crxsoso.com'):r.test(e)?window.location.href=e.replace('microsoft.com','crxsoso.com'):c.test(e)?window.location.href=s+encodeURIComponent(e):''!=(e=window.prompt('%E6%82%A8%E5%8F%AF%E4%BB%A5%E9%80%9A%E8%BF%87%E4%BB%A5%E4%B8%8B3%E7%A7%8D%E6%96%B9%E5%BC%8F%E4%B8%8B%E8%BD%BD%E6%89%A9%E5%B1%95/%E5%BA%94%E7%94%A8%EF%BC%9A%20(v3.0)\n\n1.%20%E5%8F%AF%E4%BB%A5%E5%9C%A8%20Chrome/Edge/Firefox/Microsoft%20%E5%95%86%E5%BA%97%E8%AF%A6%E6%83%85%E9%A1%B5%E7%82%B9%E6%9C%AC%E6%8C%89%E9%92%AE%E4%BC%9A%E8%87%AA%E5%8A%A8%E8%B7%B3%E8%BD%AC\n2.%20%E5%8F%AF%E4%BB%A5%E8%BE%93%E5%85%A5%E6%89%A9%E5%B1%95/%E5%BA%94%E7%94%A8%E5%90%8D%E7%A7%B0%EF%BC%8C%E4%BE%8B%E5%A6%82%EF%BC%9A%E6%B2%B9%E7%8C%B4%EF%BC%8C%E5%BE%AE%E4%BF%A1\n3.%20%E5%8F%AF%E4%BB%A5%E8%BE%93%E5%85%A5%E6%89%A9%E5%B1%95%E9%93%BE%E6%8E%A5%EF%BC%8C%E4%BE%8B%E5%A6%82%EF%BC%9Ahttps://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo'))&&null!=e&&(t.test(e)||n.test(e)||r.test(e)||c.test(e)||i.test(e)?window.location.href=s+encodeURIComponent(e):window.location.href='https://www.crxsoso.com/search?keyword='+encodeURIComponent(e))})();vid(0);
```

编辑当前网页(ESC取消)  
```
javascript:(function(){document.body.setAttribute('contenteditable', 'true');alert('%E5%B7%B2%E5%BC%80%E5%90%AF%E7%BD%91%E9%A1%B5%E7%BC%96%E8%BE%91%EF%BC%8C%E6%8C%89%20Esc%20%E5%8F%96%E6%B6%88%EF%BC%81');document.onkeydown = function (e) {e = e || window.event;if(e.keyCode==27){document.body.setAttribute('contenteditable', 'false');}}})();
```

GH甲素  
```
javascript:(function(){location.href='https://ghproxy.net/' + decodeURIComponent(location);})();
```



### awFice

TextEditor  
```
data:text/html,<body contenteditable style=line-height:1.5;font-size:20px>
```

Spreadsheet
```
data:text/html,<table id=t><script>z=Object.defineProperty,p=parseFloat;for(I=[],D={},C={},q=_=>I.forEach(e=>{try{e.value=D[e.id]}catch(e){}}),i=0;i<101;i++)for(r=t.insertRow(-1),j=0;j<27;j++)c=String.fromCharCode(65+j-1),d=r.insertCell(-1),d.innerHTML=i?j?"":i:c,i*j&&I.push(d.appendChild((f=>(f.id=c+i,f.onfocus=e=>f.value=C[f.id]||"",f.onblur=e=>{C[f.id]=f.value,q()},get=_=>{v=C[f.id]||"";if("="!=v.charAt(0))return isNaN(p(v))?v:p(v);with(D)return eval(v.slice(1))},a={get},z(D,f.id,a),z(D,f.id.toLowerCase(),a),f))(document.createElement`input`)))</script><style>#t{border-collapse:collapse}td{border:1px solid gray;text-align:right}input{border:none;width:4rem;text-align:center}</style>
```

Drawing
```
data:text/html,<canvas id=v><script>d=document,d.body.style.margin=0,P="onpointer",c=v.getContext`2d`,v.width=innerWidth,v.height=innerHeight,c.lineWidth=2,f=0,d[P+"down"]=e=>{f=e.pointerId+1;e.preventDefault();c.beginPath();c.moveTo(e.x,e.y)};d[P+"move"]=e=>{f==e.pointerId+1&&c.lineTo(e.x,e.y);c.stroke()},d[P+"up"]=_=>f=0</script></canvas>
```

Presentation maker 

- Ctrl+Alt+1: Header
- Ctrl+Alt+2: Normal style
- Ctrl+Alt+3: Align left
- Ctrl+Alt+4: Align center
- Ctrl+Alt+5: Align right
- Ctrl+Alt+6: Outdent
- Ctrl+Alt+7: Indent
- Ctrl+Alt+8: Make a list

```
data:text/html,<body><script>d=document;for(i=0;i<50;i++)d.body.innerHTML+='<div style="position:relative;width:90%;padding-top:60%;margin:5%;border:1px solid silver;page-break-after:always"><div contenteditable style=outline:none;position:absolute;right:10%;bottom:10%;left:10%;top:10%;font-size:5vmin>';d.querySelectorAll("div>div").forEach(e=>e.onkeydown=e=>{n=e.ctrlKey&&e.altKey&&e.keyCode-49,f="formatBlock",j="justify",x=[f,f,j+"Left",j+"Center",j+"Right","outdent","indent","insertUnorderedList"][n],y=["<h1>","<div>"][n],x&&d.execCommand(x,!1,y)})</script><style>@page{size:6in 8in landscape}@media print{*{border:0 !important}}
```


Code Editor
```
data:text/html,<body oninput="i.srcdoc=h.value+'<style>'+c.value+'</style><script>'+j.value+'</script>'"><style>textarea,iframe{width:100%;height:50%;}body{margin:0;}textarea{width: 33.33%;font-size:18px;padding:0.5em}</style><textarea placeholder="HTML" id="h"></textarea><textarea placeholder="CSS" id="c"></textarea><textarea placeholder="JS" id="j"></textarea><iframe id="i"></iframe><script>document.querySelectorAll("textarea").forEach((t)=>t.addEventListener("keydown",function(t){var e,s;"Tab"==t.key&&(t.preventDefault(),e=this.selectionStart,s=this.selectionEnd,this.value=this.value.substring(0,e)+"  "+this.value.substring(s),this.selectionStart=this.selectionEnd=e+1)}))</script></body>
```


Calculator
```
data:text/html,<table style="text-align: center;width:80vw;margin: 0 auto;"><tbody><tr><td colspan="4"><textarea></textarea></td></tr></tbody><script>let d=document;let tbl=d.querySelector('tbody');let z=d.querySelector('textarea');let oc=(x)=>z.value+=x;let cl=()=>z.value='';let re=()=>{try{z.value=eval(z.value);}catch(error){cl();}};[[1,2,3,'+'],[4,5,6,'-'],[7,8,9,'*'],['C',0,'=','/']].forEach((a)=>{let r=d.createElement('tr');r.style.lineHeight='64px';tbl.appendChild(r);a.forEach((b)=>{let tb=d.createElement('tb');tb.innerText=b;tb.style.padding='16px';tb.style.border='1px solid';r.appendChild(tb);tb.onclick=b==='='?re:b==='C'?cl:()=>oc(b);})})</script></table>
```


