/*via自定义html部分*/

<!-- 搜索引擎按钮(外显) 开始 -->
<style>
.search_button{
padding:4px 1%;margin:0 0 5px 2.6%;
width:17.8%;display:inline-block;
translate:0 var(--SearT) 0;
padding:6px 6px;font-size:0.75rem;color:#666;background-color:#eee;
border-radius:6px;border:1px solid #ddd;}
.search_button:first-child{margin-left:0;}
#button_group{z-index:-1;
translate:-50% 44px 0;
width:calc(var(--SearWo));height:20vh;
overflow:scroll hidden;font-size:15px;
transition:calc(var(--Trantime) * .8) ease 1ms;
white-space:nowrap;padding:8px 0 0;}
:has(:is(.search_button,.opSug_wpr,#search_submit,#container_copy>.box):hover,#search_input:focus) #button_group{width:calc(var(--SearWt));
z-index:2;height:max-content;}
:has(:is(.search_button,.opSug_wpr,#search_submit,#container_copy>.box):hover,#search_input:focus) .search_button{translate:0 0 0;}
</style><script>
function createSearchButtons(config){const buttonGroup=document.createElement('div');buttonGroup.id='button_group';buttonGroup.className='url';const searchPart=document.querySelector('.search_part');const searchBar=document.querySelector('.search_bar');const searchInput=document.querySelector('#search_input');

searchInput.inputMode = 'search';

function openSearch(source){
const query=searchInput.value.trim().replace(/u200b/g, '');
if (query){window.open(config[source].searchUrl.replace('%@', encodeURIComponent(query)),'_blank');searchInput.value='';searchInput.blur();} else{window.open(config[source].homeUrl,'_blank');}}
config.forEach((engine, index)=>{
const button=document.createElement('div');button.className='search_button';button.textContent=engine.name;button.dataset.engineIndex=index;button.addEventListener('click',()=>{openSearch(index);});
buttonGroup.appendChild(button);});
searchPart.insertBefore(buttonGroup, searchBar.nextSibling);}
/*搜索引擎配置*/
const searchEngines=[
{name: '必应',
searchUrl: 'https://cn.bing.com/search?q=%@',
homeUrl: 'https://cn.bing.com'},
{name: 'P',
//searchUrl: 'https://p.221220.xyz/%@',
searchUrl: 'https://tv.221220.xyz/my/r?type=p&url=%@',
homeUrl: 'https://p.221220.xyz/'},
//searchUrl: 'https://gh.221220.xyz/resources/go?p.%@',

{name: 'D',
searchUrl: 'https://d.221220.xyz/redirect.php?alias=%@',
homeUrl: 'https://d.221220.xyz/'},
{name: 'O',
searchUrl: 'https://o.221220.xyz/',
homeUrl: 'https://o.221220.xyz/'},
{name: '知乎',
//searchUrl: 'https://www.zhihu.com/search?type=content&q=%@',
searchUrl: 'https://m.baidu.com/s?word=%@%20site%3Azhihu.com&ms=1&tfflag=1&gpc=tr%3D1&timefactor=11&sa=se',
homeUrl: 'https://www.zhihu.com'},
{name: '秘塔',
searchUrl: 'https://metaso.cn/?q=%@',
homeUrl: 'https://metaso.cn'},
{name: '纳米',
searchUrl: 'https://www.n.cn/?q=%@',
homeUrl: 'https://www.n.cn/'},

{name: '搜狗',
searchUrl: 'https://wap.sogou.com/web/sl?keyword=%@',
homeUrl: 'https://wap.sogou.com'},

/*
{name: '云盘',
searchUrl: 'https://alipansou.com/search?k=%@',
homeUrl: 'https://alipansou.com'},
{name: 'B站',
searchUrl: 'https://www.bilibili.com/search?keyword=%@',
homeUrl: 'https://www.bilibili.com'},
*/
{name: 'Sear',
searchUrl: 'https://searx.si/search?q=%@',
homeUrl: 'https://searx.si/'},
{name: 'Oddg',
searchUrl: 'https://oceanhero.today/web?q=%@',
homeUrl: 'https://oceanhero.today/'},

];
window.addEventListener('DOMContentLoaded',()=>{createSearchButtons(searchEngines);});
</script>
<!-- 搜索引擎按钮(外显) 结束 -->


<!-- 搜索框右侧删字/扫码按钮 开始 -->
<style>
#fltBtn,#scanqr{
right:0;border:0;height:100%;width:36px;
background-color:transparent;}
#fltBtn{right:42px;width:36px;
height:46px;display:var(--ClearDis);
padding-left:4px;}
#fltBtn .url{margin-left:6px;
transition:calc(var(--Trantime)*1.3);
width:15px;height:15px;border-radius:100%;
border:1px solid currentColor;}
#fltBtn .url div{
font-size:12px;translate:0 -4px 0;}
:has(:is(.search_button,.opSug_wpr,#search_submit,#container_copy>.box):hover,#search_input:focus) #fltBtn .url{
rotate:4turn;
transition:calc(var(--Trantime)*1.3);}
#scanqr{
display:var(--ScanDis);padding-right:10px;}
#scanqr .url{
opacity:var(--ScanOpa);border-radius:calc(var(--SearRadius) - 2px);
margin:0 auto;width:22px;height:22px;
box-shadow:inset 0 0 3px 3px rgba(200, 200,205,0.25);}
#scanqr .url div{
opacity:var(--ScanOpa);translate:0 -24px 0;scale:1.2;height:100%;width:100%;
background:linear-gradient(180deg, transparent 50%,#fff 300%);
animation:scan calc(var(--Animation)) infinite linear;}
@keyframes scan{to{translate:0 18px 0;}}
</style><script>
/*删字按钮部分*/
window.addEventListener("load",()=>{
input=document.querySelector("#search_input");
document.querySelector(".search_bar>span").insertAdjacentHTML("beforebegin",`<button type=button onclick="if(input.value){input.value=input.value.replace(/[^!-}]/g,'').replace(/[^^-]]/g,'').replace(/^.*http/,'http');input.focus();} else{input.blur();}" ondblclick="const val =input.value.replace(/[^]/g,'');input.value=val;input.dispatchEvent(new InputEvent('input'));" id="fltBtn"><div class="url"><div>x</div></div></button>`);}, 0);
/*扫码按钮部分*/
window.addEventListener("load",()=>{document.querySelector(".search_bar>span").insertAdjacentHTML("beforebegin",`<button type=button onclick="location.assign('v://scanner');" id="scanqr"><div class="url"><div></div></div></button>`);
input.addEventListener("blur",(e)=>{document.querySelector("#scanqr").style.display=(e.target.value.replace(/u200B/g, '').trim()==="")?"revert-layer":"none";});},0);
</script>
<!-- 搜索框右侧删字/扫码按钮 结束 -->


<!-- 聚焦搜索框方式 开始 -->
<script>
/*去除下滑打开地址栏↓*/
Object.defineProperty(window,'initGesture',{value: () => null, writable: false });
/*下滑聚焦搜索框↓*/
document.addEventListener('DOMContentLoaded', function(){let lastClientX=0;let lastClientY=0;const inputElements=document.getElementsByTagName('input');
const firstInput=inputElements.length>0 ? inputElements[0] : null;
document.addEventListener('touchstart', function(e){lastClientX=e.touches[0].clientX;lastClientY=e.touches[0].clientY;}, false);
document.addEventListener('touchmove', function(e){const touch=e.touches[0];const target=e.target;
if (target.classList.contains('opSug_wpr')){e.preventDefault();}if ((touch.clientY - lastClientY)>150&&Math.abs(touch.clientY - lastClientY)>Math.abs(touch.clientX - lastClientX)&&touch.clientY>0&&firstInput){firstInput.focus();}}, true);});
/*双击聚焦搜索框↓*/
document.addEventListener('DOMContentLoaded', function(){
let lastClickTime=0;const input=document.querySelector('#search_input');
const book=document.querySelector('#bookmark_part');
const searchPart=document.querySelector('.search_part');
document.addEventListener('click', function(e){if (!searchPart.contains(e.target)&&!(book&&book.contains(e.target))){const now=Date.now();if (now - lastClickTime < 300){
input.focus();lastClickTime=0;} else{lastClickTime=now;}}}, false);});
/*长按搜索框聚焦↓*/
window.addEventListener('load', function(){const si=document.querySelector('#search_input');si.addEventListener('contextmenu', function(e){if (document.activeElement !== si){e.preventDefault();si.focus();}}, false);});
</script>
<!-- 聚焦搜索框方式 结束 -->


<!-- 搜索主页收藏 开始 -->
<script>function initSearchEventListeners(searchInput, showSearchResults){const addListener=(event, useTimeout)=>{searchInput.addEventListener(event, useTimeout ? showSearchResults : () => setTimeout(showSearchResults, 0));};addListener('input', true);addListener('focus', true);addListener('blur', false);}
function Search4Bookmarks(){const boxCo=document.querySelector('#box_container');const boxCoCopy=boxCo.cloneNode(true);
boxCoCopy.id="container_copy";
document.querySelector("#content").appendChild(boxCoCopy); boxCoCopy.querySelectorAll('.box>[title]').forEach(element =>{element.title=element.title.toLowerCase();});
const searchInput=document.querySelector('#search_input');
const style=document.createElement('style');
style.id='S4B';document.head.append(style);
const showSearchResults=()=>{const value=searchInput.value.toLowerCase();
if (value){boxCo.scrollLeft=0;}
style.innerHTML=value?`#container_copy>.box:not(:has([title*="${value}"])){width:0;margin:0;border:0;}
#container_copy>.box:has([title*="${value}"]){margin:0 1.5% 0 0;width:calc((101.5%/var(--BMnum)) - 1.5%) !important;}
#container_copy>.box:has([title*="${value}"]):last-child{margin-right:0;}`:'';};
initSearchEventListeners(searchInput, showSearchResults);
const observer=new ResizeObserver(mutations =>{mutations.forEach(mutation=>{if(mutation.borderBoxSize?.length>0){
const rootStyle=getComputedStyle(document.querySelector(":root"));boxCoCopy.style.bottom=rootStyle.getPropertyValue("--SugY")==="auto"?'-8px':`${mutation.borderBoxSize[0].blockSize}px`;}});});observer.observe(document.querySelector('#sug_tbody'));}
document.addEventListener("DOMContentLoaded",Search4Bookmarks);
</script>
<!-- 搜索主页收藏 结束 -->


<!-- 收起输入法时取消聚焦 开始-->
<script>function debounce(call,delay){let id=-1;return ()=>{if(id!==-1){clearTimeout(id);}
id=setTimeout(()=>{call();id=-1;},delay);};}
const portraitQuery=window.matchMedia("(orientation: portrait)");
let portrait=portraitQuery.matches;let currentHeight=window.innerHeight;
window.addEventListener("resize",debounce(()=>{if(portraitQuery.matches === portrait){const delta=Math.abs(window.innerHeight - currentHeight);if(delta>150){if(window.innerHeight>=currentHeight){document.querySelector("#search_input").blur();}currentHeight=window.innerHeight;}}else{portrait=portraitQuery.matches;currentHeight=window.innerHeight;}}),);
</script>
<!-- 收起输入法时取消聚焦 结束-->


<!-- 长按聚焦唤出输入法 开始 -->
<script>document.addEventListener('DOMContentLoaded',()=>{const s=':is(.search_button,.opSug_wpr,#search_submit,#container_copy>.box)',d=document,i=d.querySelector('#search_input'),u='u200B';i.value=u;let h,p;
d.addEventListener('mouseover',e=>h=e.target.closest(s));d.addEventListener('mouseout',()=>h=null);d.addEventListener('touchstart',e=>p=d.elementFromPoint(e.touches[0].clientX,e.touches[0].clientY),{passive:1});
i.addEventListener('focus',()=>setTimeout(()=>{if(!h&&!p?.closest(s)&&i.value.includes(u)){i.value=i.value.replace(/u200B/g,'');i.dispatchEvent(new Event('input',{bubbles:1}))}},40));i.addEventListener('blur',()=>setTimeout(()=>{if(!i.value.trim()&&!h&&!p?.closest(s)){
i.value=u;}},40));new MutationObserver(()=>i.value.includes(u)&&i.dispatchEvent(new Event('input')))
.observe(i,{characterData:1})});</script>
<!-- 长按聚焦唤出输入法 结束 -->


<!-- 主页收藏背景透明度修复 开始 -->
<script>document.addEventListener("DOMContentLoaded",()=>{const books=document.querySelectorAll(".title");
books.forEach((book)=>{book.style.backgroundColor=`rgba(${getComputedStyle(book).backgroundColor.split("(")[1].slice(0,-1)},var(--Opacity))`;});});
</script>
<!-- 主页收藏背景透明度修复 结束 -->


<!-- 修改主页地址栏标题-->
<script>document.title="⠀";</script>


<!--点击打开小书签的logo-->
<a id="logo" href="javascript:window.via.cmd(257)">Explorer</a>

