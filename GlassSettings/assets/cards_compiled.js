var h=this,k=function(a,b){var c=a.split("."),d=h;c[0]in d||!d.execScript||d.execScript("var "+c[0]);for(var e;c.length&&(e=c.shift());)c.length||void 0===b?d=d[e]?d[e]:d[e]={}:d[e]=b},l=function(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&
!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";else if("function"==b&&"undefined"==typeof a.call)return"object";return b},n=function(a){return"string"==typeof a},aa=function(a,b,c){return a.call.apply(a.bind,arguments)},ba=function(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=
Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return a.apply(b,c)}}return function(){return a.apply(b,arguments)}},p=function(a,b,c){p=Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?aa:ba;return p.apply(null,arguments)};Function.prototype.bind=Function.prototype.bind||function(a,b){if(1<arguments.length){var c=Array.prototype.slice.call(arguments,1);c.unshift(this,a);return p.apply(null,c)}return p(this,a)};var q=String.prototype.trim?function(a){return a.trim()}:function(a){return a.replace(/^[\s\xa0]+|[\s\xa0]+$/g,"")},r=function(a,b){return a<b?-1:a>b?1:0};var s=Array.prototype,ca=s.indexOf?function(a,b,c){return s.indexOf.call(a,b,c)}:function(a,b,c){c=null==c?0:0>c?Math.max(0,a.length+c):c;if(n(a))return n(b)&&1==b.length?a.indexOf(b,c):-1;for(;c<a.length;c++)if(c in a&&a[c]===b)return c;return-1},da=s.filter?function(a,b,c){return s.filter.call(a,b,c)}:function(a,b,c){for(var d=a.length,e=[],f=0,m=n(a)?a.split(""):a,g=0;g<d;g++)if(g in m){var y=m[g];b.call(c,y,g,a)&&(e[f++]=y)}return e};var t=function(a){if(a.classList)return a.classList;a=a.className;return n(a)&&a.match(/\S+/g)||[]},w=function(a,b){var c;a.classList?c=a.classList.contains(b):(c=t(a),c=0<=ca(c,b));return c},ea=function(a,b){a.classList?a.classList.remove(b):w(a,b)&&(a.className=da(t(a),function(a){return a!=b}).join(" "))},x=function(a,b,c){w(a,b)&&(ea(a,b),a.classList?a.classList.add(c):w(a,c)||(a.className+=0<a.className.length?" "+c:c))};var z=function(a,b){this.a=[];this.f=!1;this.n=Boolean(a);this.l=b};k("Paginator.init",function(a,b){var c=new z(a,b);if("complete"==document.readyState)window.setTimeout(p(c.c,c),0);else{var d=function(){"complete"==document.readyState&&(document.removeEventListener("readystatechange",d,!1),c.c())};document.addEventListener("readystatechange",d,!1)}return c});
z.prototype.c=function(){this.j();if(this.n)t:if(1<this.a.length){var a=this.a.length;if(this.f){var b;n:{b=document.documentElement;var c=this.a[0].getElementsByClassName("auto-overflow");if(0<c.length)for(var d=0;d<c.length;d++){var e=c[d],f=window.getComputedStyle(e,null);e.style.visibility="";for(var m=e.offsetTop,g=e.offsetParent;g&&"HTML"!=g.nodeName&&"static"===g.style.position;)m=g.offsetTop,g=g.offsetParent;g=g||b;m=g.offsetHeight-m;f=parseInt(f.getPropertyValue("line-height"),10);if(m<e.scrollHeight-
1){e.style["-webkit-line-clamp"]=Math.floor(m/f);b=!0;break n}}b=!1}n:{for(c=1;c<this.a.length;c++)if(!w(this.a[c],"cover-overflow")){c=!0;break n}c=!1}if(!c&&!b){A(this,640);break t}}A(this,640*a)}else 1==this.a.length&&(a=this.a[0],w(a,"auto-paginate")?(a=B(a),640<a&&A(this,a)):A(this,640));else{for(b=a=0;b<this.a.length;b++)c=this.a[b],c.style.left="0px",d=0,d=w(c,"auto-paginate")?B(c):640,c.style.left=a+"px",c.style.visibility="visible",a+=d;A(this,a)}};
z.prototype.j=function(){var a=document.getElementsByTagName("article");this.a=[];for(var b=0;b<a.length;b++)this.a.push(a[b]);0<this.a.length&&(this.f=w(this.a[0],"cover-only"))};
var A=function(a,b){a.l?a.l(b,360,a.f):window.GLASS.paginationComplete(b,360,a.f)},C=function(a){var b=document.documentElement;a=a.getBoundingClientRect();return{top:a.top+window.pageYOffset-b.clientTop,left:a.left+window.pageXOffset-b.clientLeft}},B=function(a){var b,c=document.createElement("DIV");c.textContent="&nbsp;";a.appendChild(c);b=document.documentElement;for(var d=c.offsetParent||b;d&&"HTML"!=d.nodeName&&"static"===d.style.position;)d=d.offsetParent;b=d||b;var d={top:0,left:0},e=C(c);
"HTML"!=b.nodeName&&(d=C(b));var f=window.getComputedStyle(c,null);b=e.top-d.top-parseFloat(f.getPropertyValue("margin-top"));d=e.left-d.left-parseFloat(f.getPropertyValue("margin-left"));40>=b&&(d-=640);a.removeChild(c);return d+640};var D=function(a){this.e=[];this.m=a},E=[{className:"text-small",i:0},{className:"text-normal",i:0},{className:"text-large",i:0},{className:"text-x-large",i:14}];k("AutoSizer.init",function(a){var b=new D(a);if("complete"==document.readyState)window.setTimeout(p(b.c,b),0);else{var c=function(){"complete"==document.readyState&&(document.removeEventListener("readystatechange",c,!1),b.c())};document.addEventListener("readystatechange",c,!1)}return b});
D.prototype.c=function(){this.j();if(0!=this.e.length)for(var a=0;a<this.e.length;a++){var b=this.e[a];if(null!==b.offsetParent||"fixed"===b.style.position){for(var c=document.defaultView.getComputedStyle(b,null),d=parseInt(c.height,10),c=parseInt(c.width,10),e="text-auto-size",f=0;f<E.length;f++){x(b,e,E[f].className);if(b.scrollHeight>d+E[f].i||b.scrollWidth>c){0<f?x(b,E[f].className,E[f-1].className):b.style.wordWrap="break-word";break}e=E[f].className}w(b,"auto-overflow")||(b.style.visibility=
"")}}this.m?this.m():window.GLASS.autoSizingComplete()};D.prototype.j=function(){var a=document.getElementsByClassName("text-auto-size");this.e=[];for(var b=0;b<a.length;b++){var c=a[b];this.e.push(c);c.style.visibility="hidden"}};var F;t:{var G=h.navigator;if(G){var H=G.userAgent;if(H){F=H;break t}}F=""};var fa=-1!=F.indexOf("Opera")||-1!=F.indexOf("OPR"),I=-1!=F.indexOf("Trident")||-1!=F.indexOf("MSIE"),J=-1!=F.indexOf("Gecko")&&-1==F.toLowerCase().indexOf("webkit")&&!(-1!=F.indexOf("Trident")||-1!=F.indexOf("MSIE")),ga=-1!=F.toLowerCase().indexOf("webkit"),K=function(){var a=h.document;return a?a.documentMode:void 0},L=function(){var a="",b;if(fa&&h.opera)return a=h.opera.version,"function"==l(a)?a():a;J?b=/rv\:([^\);]+)(\)|;)/:I?b=/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/:ga&&(b=/WebKit\/(\S+)/);b&&(a=
(a=b.exec(F))?a[1]:"");return I&&(b=K(),b>parseFloat(a))?String(b):a}(),M={},N=function(a){var b;if(!(b=M[a])){b=0;for(var c=q(String(L)).split("."),d=q(String(a)).split("."),e=Math.max(c.length,d.length),f=0;0==b&&f<e;f++){var m=c[f]||"",g=d[f]||"",y=RegExp("(\\d*)(\\D*)","g"),ha=RegExp("(\\d*)(\\D*)","g");do{var u=y.exec(m)||["","",""],v=ha.exec(g)||["","",""];if(0==u[0].length&&0==v[0].length)break;b=r(0==u[1].length?0:parseInt(u[1],10),0==v[1].length?0:parseInt(v[1],10))||r(0==u[2].length,0==
v[2].length)||r(u[2],v[2])}while(0==b)}b=M[a]=0<=b}return b},O=h.document,ia=O&&I?K()||("CSS1Compat"==O.compatMode?parseInt(L,10):5):void 0;var P;if(!(P=!J&&!I)){var Q;if(Q=I)Q=I&&9<=ia;P=Q}P||J&&N("1.9.1");var R=I&&!N("9");var ja={SCRIPT:1,STYLE:1,HEAD:1,IFRAME:1,OBJECT:1},S={IMG:" ",BR:"\n"},U=function(a){if(R&&"innerText"in a)a=a.innerText.replace(/(\r\n|\r|\n)/g,"\n");else{var b=[];T(a,b,!0);a=b.join("")}a=a.replace(/ \xAD /g," ").replace(/\xAD/g,"");a=a.replace(/\u200B/g,"");R||(a=a.replace(/ +/g," "));" "!=a&&(a=a.replace(/^\s*/,""));return a},T=function(a,b,c){if(!(a.nodeName in ja))if(3==a.nodeType)c?b.push(String(a.nodeValue).replace(/(\r\n|\r|\n)/g,"")):b.push(a.nodeValue);else if(a.nodeName in S)b.push(S[a.nodeName]);
else for(a=a.firstChild;a;)T(a,b,c),a=a.nextSibling};var V=function(a){this.b=a;this.d=[];this.g=-1;this.k={label:"title",icon:"icon","data-gls-action":"type","data-tts-text":"value","data-tts-lang":"lang","data-phone":"phoneNumber","data-address":"address","data-lat":"lat","data-lng":"lng","data-name":"name","data-url":"url"};a=this.getCard_(0);null!=a&&(w(a,"gls-in-is")?this.h="is":w(a,"gls-in-tl")?this.h="tl":w(a,"gls-in-bdl")?this.h="bdl":(this.h="???",this.b.writeToLog("Couldn't determine display context from classnames.")),a=p(function(a,c){return"VIEW_WEB_SITE"===
c.type?(this.b.preloadUrl(c.url),!1):!0},this),this.getActions_(0,a,!1))};V.prototype.getCard_=function(a){var b=document.documentElement.clientWidth;a=this.pickCardFromPoint_(b/2+a*b,document.documentElement.clientHeight/2);return null!=a?a:null};V.prototype.pickCardFromPoint_=function(a,b){for(var c=document.getElementsByClassName("gls-crd"),d=0;d<c.length;++d)if(c[d].offsetLeft<=a&&c[d].offsetLeft+c[d].offsetWidth>=a&&c[d].offsetTop<=b&&c[d].offsetTop+c[d].offsetHeight>=b)return c[d];return null};
V.prototype.getActions_=function(a,b,c){var d=this.getCard_(a);if(d.hasAttribute("contextmenu"))if(d=d.getAttribute("contextmenu"),c=document.getElementById(d))for(c.hasAttribute("type")?"popup"!==c.getAttribute("type")&&window.console.log("Card "+a+" has context menu with type="+c.getAttribute("type")+", should be type=popup"):window.console.log("Card "+a+" has no type on its context menu (should be type=popup)"),d=c.getElementsByTagName("MENUITEM"),a=0;a<d.length;++a){c=d[a];var e={type:"CUSTOM"},
f;for(f in this.k)c.hasAttribute(f)&&(e[this.k[f]]=c.getAttribute(f));c.hasAttribute("default")&&(e["default"]=!0);c.hasAttribute("disabled")&&(e.disabled=!0);c.hasAttribute("hidden")&&(e.hidden=!0);if(!b(c,e))break}else this.b.writeToLog("Card "+a+" specified an unavailable context menu: "+d);else{f="gls-no-"+this.h;if(c){e=d.getElementsByClassName("gls-tts");c=null;for(a=0;a<e.length;a++)w(e[a],f)||(c=e[a]);if(null!=c&&(e={type:"READ_ALOUD",lang:c.getAttribute("lang")||"en",value:U(c)},!b(c,e)))return}d=
d.getElementsByClassName("gls-ma");for(a=0;a<d.length&&(w(d[a],f)||(e=JSON.parse(U(d[a])),b(d[a],e)));a++);}};V.prototype.requestOptions=function(a,b){if(this.g>b)this.b.writeToLog("Not responding to outdated options request at r"+b);else{this.g=b;this.d=[];var c=[],d=p(function(a,b){this.d.push(a);c.push(JSON.stringify(b));return!0},this);this.getActions_(a,d,!0);this.b.postOptions(JSON.stringify(c),a,b)}};
V.prototype.onOptionSelected=function(a,b){if(b!=this.g||0>b)this.b.writeToLog("Ignoring onOptionSelected based on r"+b+", current menu is r"+this.g),this.b.optionSelectedCB(!0);else{var c=this.d[a],d=!1;null!=c&&(d=document.createEvent("MouseEvents"),d.initMouseEvent("click",!0,!0,window,1,0,0,0,0,!1,!1,!1,!1,0,null),d=!c.dispatchEvent(d));this.b.optionSelectedCB(d)}};V.prototype.onCardFocus=function(a){a=this.getCard_(a);if(null!=a){var b=W("focus");a.dispatchEvent(b)}};
V.prototype.onCardBlur=function(a){a=this.getCard_(a);if(null!=a){var b=W("blur");a.dispatchEvent(b)}};V.prototype.onMenuOptionFocus=function(a){a=this.d[a];if(null!=a){var b=W("focus");a.dispatchEvent(b)}};V.prototype.onMenuOptionBlur=function(a){a=this.d[a];if(null!=a){var b=W("blur");a.dispatchEvent(b)}};V.prototype.notifyVisible=function(){var a=W("GlassResultsVisible");window.dispatchEvent(a)};V.prototype.notifyInvisible=function(){var a=W("GlassResultsInvisible");window.dispatchEvent(a)};
var W=function(a){var b=document.createEvent("HTMLEvents");b.initEvent(a,!1,!1);return b};
document.addEventListener("DOMContentLoaded",function(){var a=window.glassBridge,b=new V(a);window.glassBridge_client=b;b.notifyVisible();window.showModalCardSetFromSource=function(b){return a.showModalCardSetFromSource(b)};window.showModalCardSetFromUrl=function(b){return a.showModalCardSetFromUrl(b)};window.doBlockingAjaxGet=function(b){return JSON.parse(a.doBlockingAjaxGet(b))};window.glass_onGlassJsBridgeInitialized=function(){var a=W("GlassJsBridgeInitialized");window.dispatchEvent(a)};window.glassDrawFrame=
function(){return a.drawFrame()};a&&a.confirmInitialization();window.addEventListener("load",function(){a.onLoad()})});var X=function(a){this.o=a};k("UrlUniquifier.init",function(a){var b=new X(a);if("complete"==document.readyState)window.setTimeout(p(b.c,b),0);else{var c=function(){"complete"==document.readyState&&(document.removeEventListener("readystatechange",c,!1),b.c())};document.addEventListener("readystatechange",c,!1)}});
X.prototype.c=function(){for(var a=document.getElementsByTagName("*"),b=0;b<a.length;b++){var c=a[b];"IMG"==c.tagName&&Y(c.src)&&(c.src=Z(this,c.src));var d=document.defaultView.getComputedStyle(c,null);Y($(d.backgroundImage))&&(c.style.backgroundImage="url("+Z(this,$(d.backgroundImage)||"")+")")}};
var Y=function(a){return!a||0!=a.lastIndexOf("glass://contact-image/",0)&&0!=a.lastIndexOf("attachment:",0)?!1:!0},Z=function(a,b){var c=b.indexOf("#");0<c&&(b=b.substring(0,c));return b+"#"+a.o},$=function(a){var b;if(b=a&&0==a.lastIndexOf("url(",0))b=a.length-1,b=0<=b&&a.indexOf(")",b)==b;return b?a.substring(4,a.length-1):null};