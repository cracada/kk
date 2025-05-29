
/*via自定义css部分*/
:root{
/*——————整—————体——————*/
--KeyOpen:0.6s;/*开屏动画效果(关闭改成0)*/
--Trantime:0.4s;/*过渡动画效果(关闭改成0)*/
--contop:90vmin;/*整体离顶部的距离90*/
--contmove:35vmin;/*整体聚焦下移的距离35*/
--BoxRadius:7px;/*主要元素的圆角*/
--Boxblur:5px;/*主要元素的模糊*/
--Boxbg:rgba(255,255,255,.1);/*背景色*/
--BoxBor:1px;/*主要元素的边框粗细*/
--BoxColor:rgba(128,128,128,.2);/*边框颜色*/
--Shadow:0 2px 4px rgba(0,0,0,.1);/*阴影*/
/*——————搜—索—区—域——————*/
--Animation:auto;/*动态渐变效果(关闭改成0s)*/
--SearT:0;/*引擎浮现动画(30vh关闭改成0)*/
--Sugturn:0.5turn;/*联想词倒序(正序改成0)*/
--SugH:auto;/*联想框伸展动画(关闭改成0)*/
--SugY:18px;/*联想框位置(改成auto显示在下方)*/
--SugWt:var(--SearWt);/*聚焦后联想框宽度*/
--SearWo:88%;/*未聚焦时的搜索框宽度*/
--SearWt:96%;/*聚焦后的搜索框宽度*/
--SearRadius:var(--BoxRadius);/*搜索框的圆角*/
--SearBor:var(--BoxBor);/*搜索框的边框粗细*/
--SubDis:block;/*搜索框放大镜(启用改为block)*/
--ClearDis:block;/*删字按钮(禁用改为none)*/
--ScanDis:none;/*扫码按钮(禁用改为none)*/
--ScanOpa:1;/*扫码按钮透明度(0~1内均可)*/
/*——————书—————签——————*/
--BMnum:0;/*搜索书签可视数量(禁用搜索书签改为0)*/
--Border:var(--BoxBor);/*书签边框粗细*/
--BorCol:rgba(200,200,200,.1);/*书签边框色*/
--Markblur:var(--Boxblur);/*书签抽屉背景模糊*/
--Markbg:var(--Boxbg);/*书签抽屉背景色*/
--Boxnum:5;/*每行书签的最大数量(自适应改为5)*/
--Heio:2 * 44px;/*书签抽屉默认状态的高度*/
--Heit:5 * 47px;/*书签抽屉展开状态的高度*/
--Opacity:0.5;/*多彩书签的透明度*/
--Contrast:2;/*多彩书签的对比度*/
--TitRadius:80px;/*书签单字或图片的圆角*/
--ShowCont:"﹀";/*可展开提示的内容*/
--ShowOp:1;/*可展开提示透明度(0~1内均可)*/

/*不需要书签抽屉展开部分的，可将本CSS后面的“书签抽屉展开状态”之后的内容全部删除*/
}

/*网页内容*/
#content{top:calc(var(--contop) - 70px);will-change:translate;backface-visibility:hidden;}
#content:has(:is(.search_button,.opSug_wpr,#search_submit,#container_copy>.box):hover,#search_input:focus){
translate:0 var(--contmove) 0;
transition:var(--Trantime) ease 1ms;}
/*开屏动画*/
.smaller,#logo,.opSug_wpr,.search_bar,#button_group,#bookmark_part:before{
animation:hi var(--KeyOpen);}
.title,.overlay,.box .url,#box_container .box{animation:hi2 var(--KeyOpen);}
@keyframes hi{0% 
{opacity:0;margin-top:60px;}}
@keyframes hi2{0%{opacity:0;
translate:0 60px 0;}}

/*设置圆角、背景色、模糊*/
.opSug_wpr:has(tr),.search_bar,#container_copy>.box,.title,.search_button,#bookmark_part:before{
backdrop-filter:blur(var(--Boxblur));
border:var(--BoxBor) solid var(--BoxColor);
border-radius:var(--BoxRadius) !important;
background-color:var(--Boxbg);box-shadow:var(--Shadow);}
.title,#bookmark_part:before{
border:var(--Border) solid var(--BorCol);}
/*设置布局方式*/
.smaller,#logo,#container_copy,.opSug_wpr,.search_bar,#button_group,#bookmark_part,#bookmark_part:before{
position:absolute;display:inline-block  !important;}
#search_submit,#scanqr,#fltBtn,#container_copy :is(.url,.title){
position:absolute;}
/*设置无法长按分词的元素*/
.frosted-glass,#scanqr,#fltBtn,.search_button,#logo{user-select:none;}
/*尝试通过css性能优化*/
#logo,.smaller,.opSug_wpr,.search_bar,#fltBtn,#scanqr,.search_button,.box,#bookmark_part:before{will-change:translate,rotate,width,height,max-height,margin,opacity,filter,backdrop-filter;backface-visibility:hidden;translate:0 0 0;}
.opSug_wpr,#container_copy,.search_bar{translate:-50% 0 0;}
/*设置渐变色文字*/
#logo{
background:-webkit-linear-gradient(left,#348DA6,#E6D205 25%,#348DA6 50%,#E6D205 75%,#348DA6);
background-size:200% 100%;
-webkit-background-clip:text;
-webkit-text-fill-color:transparent;
animation:hi var(--KeyOpen),runs var(--Animation) infinite linear;}
@keyframes runs{to{
background-position:-100% 0;}}
/*会显示的部分*/
:has(:is(.search_button,.opSug_wpr,#search_submit,#container_copy>.box):hover,#search_input:focus) :is(#content,.opSug_wpr,.search_bar,#fltBtn,#search_submit,.search_button,#container_copy>.box),.smaller,#logo,.search_bar,#scanqr,#content,#box_container,#container_copy,#box_container>.box,#bookmark_part:before{
opacity:1;visibility:visible;transition:var(--Trantime) ease 1ms,border 0s;}
/*会隐藏的部分*/
:has(:is(.search_button,.opSug_wpr,#search_submit,#container_copy>.box):hover,#search_input:focus) :is(#box_container>.box,.smaller,#logo,#scanqr),.opSug_wpr,#search_submit,#fltBtn,.search_button,#bookmark_part:hover:before,#container_copy>.box{
opacity:0;visibility:hidden;
transition:var(--Trantime) ease 1ms;}

/*普通logo部分*/
#logo{text-shadow:var(--Shadow);
font-size:39px;translate:-50% -55px 0;
padding:0 8px;white-space:nowrap;
text-decoration:none;}
/*原logo*/
.smaller{translate:-50% -75px 0;}

/*联想框部分*/
.opSug_wpr{
bottom:var(--SugY);width:var(--SearWo);max-height:var(--SugH);
margin-top:90px;border:0;z-index:3;}
.opSug_wpr:has(tr){
animation:sug var(--Trantime);}
@keyframes sug{0%{opacity:0;max-height:var(--SugH);}}
:has(:is(.search_button,#search_submit,.opSug_wpr,#container_copy>.box):hover,#search_input:focus) .opSug_wpr{width:var(--SugWt);max-height:190px;}
.opSug_wpr table{table-layout:fixed;}
.opSug_wpr td{
border-radius:calc(var(--BoxRadius) - 1px);
word-break:break-all;white-space:nowrap;
padding-left:14px;overflow:scroll;}
.opSug_wpr tr:hover{
background-color:rgba(140,150,230,.6);}
.opSug_wpr :is(table,td){rotate:var(--Sugturn);}

/*搜索书签*/
#container_copy{
width:var(--SearWo);text-align:left;
white-space:nowrap;overflow:scroll;
margin-bottom:9px;}
:has(#S4B:empty) #container_copy{max-width:0;
transition:var(--Trantime) ease 1ms;}
#container_copy>.box{width:0;
height:35px;margin:0;border:0;}
#container_copy .title{
filter:contrast(var(--Contrast));
text-indent:-99cm;height:100%;}
#container_copy .overlay{opacity:0;}
#container_copy .url{top:50%;translate:0 -50% 0;margin:0;}

/*搜索框*/
.search_bar{
width:var(--SearWo);border-width:var(--SearBor);border-radius:var(--SearRadius) !important;margin:0;z-index:4;}
:has(:is(.search_button,.opSug_wpr,#search_submit,#container_copy>.box):hover,#search_input:focus) :is(.search_bar,#container_copy){width:var(--SearWt);}
#search_input{margin-left:-1.5%;padding-right:78px;}
.search_part{margin:0;width:100%;}

/*搜索框内放大镜*/
#search_submit{right:0;
display:var(--SubDis) !important; min-width:42px; background-color:#aaa;
width:max-content;margin: 0 0;}
:has(:is(.search_button,.opSug_wpr,#container_copy>.box,#search_submit,#fltBtn):hover,#search_input:focus) :is(#search_submit,#fltBtn){position:static;float:right;}



/*书签部分*/
/*书签抽屉默认状态*/
#bookmark_part{
border-radius:var(--BoxRadius);height:calc(var(--Heio));width:calc(var(--SearWo) + 1.5%);border:var(--BoxBor) solid transparent;transition:var(--Trantime) ease 1ms,backdrop-filter 0s;
translate:-50% 66px 0;margin:2px 0;
box-sizing:content-box;padding:0 2.6%;
background-color:transparent;will-change:background-color,height;backface-visibility:hidden;}
:has(:is(.search_button,.opSug_wpr,#search_submit,#container_copy>.box):hover,#search_input:focus) :is(#box_container,#bookmark_part){height:0;transition:var(--Trantime) ease 1ms;}
#box_container{
height:calc(var(--Heio));width:100%;
overflow:scroll;padding-bottom:3px;}
/*隐藏溢出部分*/
.box{overflow:hidden;}
/*书签文字(填满宽度)*/
.title,.box .url{width:100%;}
/*书签图片(设定圆角)*/
.title,.overlay{
border-radius:var(--TitRadius);}

/*↓将书签变为卡片↓*/
#box_container .box{
backdrop-filter:blur(var(--Boxblur));width:calc((100%/var(--Boxnum)) * (18/20)) !important;margin:6px calc((100%/var(--Boxnum)) * (1/20)) 0;border-radius:var(--BoxRadius) !important;background-color:var(--Boxbg);box-shadow:var(--Shadow);
height:35px !important;}
.title,.overlay,.box .url{animation:0s;}
/*书签单字(隐藏但保留多彩)*/
.title{
position:absolute;filter:contrast(var(--Contrast));height:100%;text-indent:-99cm;border-radius:0;}
/*书签图片(隐藏)*/
.overlay{opacity:0;}
/*书签底部文字(移入书签内)*/
.box .url{
position:relative;top:50%;translate:0 -50% 0;margin:0;}
/*↑将书签变为卡片↑*/

