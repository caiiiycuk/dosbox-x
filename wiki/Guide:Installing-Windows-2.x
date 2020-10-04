<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Asciidoctor 2.0.10">
<title>Installing Microsoft Windows 2.x in DOSBox-X</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic%7CNoto+Serif:400,400italic,700,700italic%7CDroid+Sans+Mono:400,700">
<style>
/* Asciidoctor default stylesheet | MIT License | https://asciidoctor.org */
/* Uncomment @import statement to use as custom stylesheet */
/*@import "https://fonts.googleapis.com/css?family=Open+Sans:300,300italic,400,400italic,600,600italic%7CNoto+Serif:400,400italic,700,700italic%7CDroid+Sans+Mono:400,700";*/
article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}
audio,video{display:inline-block}
audio:not([controls]){display:none;height:0}
html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}
a{background:none}
a:focus{outline:thin dotted}
a:active,a:hover{outline:0}
h1{font-size:2em;margin:.67em 0}
abbr[title]{border-bottom:1px dotted}
b,strong{font-weight:bold}
dfn{font-style:italic}
hr{-moz-box-sizing:content-box;box-sizing:content-box;height:0}
mark{background:#ff0;color:#000}
code,kbd,pre,samp{font-family:monospace;font-size:1em}
pre{white-space:pre-wrap}
q{quotes:"\201C" "\201D" "\2018" "\2019"}
small{font-size:80%}
sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}
sup{top:-.5em}
sub{bottom:-.25em}
img{border:0}
svg:not(:root){overflow:hidden}
figure{margin:0}
fieldset{border:1px solid silver;margin:0 2px;padding:.35em .625em .75em}
legend{border:0;padding:0}
button,input,select,textarea{font-family:inherit;font-size:100%;margin:0}
button,input{line-height:normal}
button,select{text-transform:none}
button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer}
button[disabled],html input[disabled]{cursor:default}
input[type="checkbox"],input[type="radio"]{box-sizing:border-box;padding:0}
button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0}
textarea{overflow:auto;vertical-align:top}
table{border-collapse:collapse;border-spacing:0}
*,*::before,*::after{-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box}
html,body{font-size:100%}
body{background:#fff;color:rgba(0,0,0,.8);padding:0;margin:0;font-family:"Noto Serif","DejaVu Serif",serif;font-weight:400;font-style:normal;line-height:1;position:relative;cursor:auto;tab-size:4;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased}
a:hover{cursor:pointer}
img,object,embed{max-width:100%;height:auto}
object,embed{height:100%}
img{-ms-interpolation-mode:bicubic}
.left{float:left!important}
.right{float:right!important}
.text-left{text-align:left!important}
.text-right{text-align:right!important}
.text-center{text-align:center!important}
.text-justify{text-align:justify!important}
.hide{display:none}
img,object,svg{display:inline-block;vertical-align:middle}
textarea{height:auto;min-height:50px}
select{width:100%}
.center{margin-left:auto;margin-right:auto}
.stretch{width:100%}
.subheader,.admonitionblock td.content>.title,.audioblock>.title,.exampleblock>.title,.imageblock>.title,.listingblock>.title,.literalblock>.title,.stemblock>.title,.openblock>.title,.paragraph>.title,.quoteblock>.title,table.tableblock>.title,.verseblock>.title,.videoblock>.title,.dlist>.title,.olist>.title,.ulist>.title,.qlist>.title,.hdlist>.title{line-height:1.45;color:#7a2518;font-weight:400;margin-top:0;margin-bottom:.25em}
div,dl,dt,dd,ul,ol,li,h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6,pre,form,p,blockquote,th,td{margin:0;padding:0;direction:ltr}
a{color:#2156a5;text-decoration:underline;line-height:inherit}
a:hover,a:focus{color:#1d4b8f}
a img{border:0}
p{font-family:inherit;font-weight:400;font-size:1em;line-height:1.6;margin-bottom:1.25em;text-rendering:optimizeLegibility}
p aside{font-size:.875em;line-height:1.35;font-style:italic}
h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6{font-family:"Open Sans","DejaVu Sans",sans-serif;font-weight:300;font-style:normal;color:#ba3925;text-rendering:optimizeLegibility;margin-top:1em;margin-bottom:.5em;line-height:1.0125em}
h1 small,h2 small,h3 small,#toctitle small,.sidebarblock>.content>.title small,h4 small,h5 small,h6 small{font-size:60%;color:#e99b8f;line-height:0}
h1{font-size:2.125em}
h2{font-size:1.6875em}
h3,#toctitle,.sidebarblock>.content>.title{font-size:1.375em}
h4,h5{font-size:1.125em}
h6{font-size:1em}
hr{border:solid #dddddf;border-width:1px 0 0;clear:both;margin:1.25em 0 1.1875em;height:0}
em,i{font-style:italic;line-height:inherit}
strong,b{font-weight:bold;line-height:inherit}
small{font-size:60%;line-height:inherit}
code{font-family:"Droid Sans Mono","DejaVu Sans Mono",monospace;font-weight:400;color:rgba(0,0,0,.9)}
ul,ol,dl{font-size:1em;line-height:1.6;margin-bottom:1.25em;list-style-position:outside;font-family:inherit}
ul,ol{margin-left:1.5em}
ul li ul,ul li ol{margin-left:1.25em;margin-bottom:0;font-size:1em}
ul.square li ul,ul.circle li ul,ul.disc li ul{list-style:inherit}
ul.square{list-style-type:square}
ul.circle{list-style-type:circle}
ul.disc{list-style-type:disc}
ol li ul,ol li ol{margin-left:1.25em;margin-bottom:0}
dl dt{margin-bottom:.3125em;font-weight:bold}
dl dd{margin-bottom:1.25em}
abbr,acronym{text-transform:uppercase;font-size:90%;color:rgba(0,0,0,.8);border-bottom:1px dotted #ddd;cursor:help}
abbr{text-transform:none}
blockquote{margin:0 0 1.25em;padding:.5625em 1.25em 0 1.1875em;border-left:1px solid #ddd}
blockquote cite{display:block;font-size:.9375em;color:rgba(0,0,0,.6)}
blockquote cite::before{content:"\2014 \0020"}
blockquote cite a,blockquote cite a:visited{color:rgba(0,0,0,.6)}
blockquote,blockquote p{line-height:1.6;color:rgba(0,0,0,.85)}
@media screen and (min-width:768px){h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6{line-height:1.2}
h1{font-size:2.75em}
h2{font-size:2.3125em}
h3,#toctitle,.sidebarblock>.content>.title{font-size:1.6875em}
h4{font-size:1.4375em}}
table{background:#fff;margin-bottom:1.25em;border:solid 1px #dedede}
table thead,table tfoot{background:#f7f8f7}
table thead tr th,table thead tr td,table tfoot tr th,table tfoot tr td{padding:.5em .625em .625em;font-size:inherit;color:rgba(0,0,0,.8);text-align:left}
table tr th,table tr td{padding:.5625em .625em;font-size:inherit;color:rgba(0,0,0,.8)}
table tr.even,table tr.alt{background:#f8f8f7}
table thead tr th,table tfoot tr th,table tbody tr td,table tr td,table tfoot tr td{display:table-cell;line-height:1.6}
h1,h2,h3,#toctitle,.sidebarblock>.content>.title,h4,h5,h6{line-height:1.2;word-spacing:-.05em}
h1 strong,h2 strong,h3 strong,#toctitle strong,.sidebarblock>.content>.title strong,h4 strong,h5 strong,h6 strong{font-weight:400}
.clearfix::before,.clearfix::after,.float-group::before,.float-group::after{content:" ";display:table}
.clearfix::after,.float-group::after{clear:both}
:not(pre):not([class^=L])>code{font-size:.9375em;font-style:normal!important;letter-spacing:0;padding:.1em .5ex;word-spacing:-.15em;background:#f7f7f8;-webkit-border-radius:4px;border-radius:4px;line-height:1.45;text-rendering:optimizeSpeed;word-wrap:break-word}
:not(pre)>code.nobreak{word-wrap:normal}
:not(pre)>code.nowrap{white-space:nowrap}
pre{color:rgba(0,0,0,.9);font-family:"Droid Sans Mono","DejaVu Sans Mono",monospace;line-height:1.45;text-rendering:optimizeSpeed}
pre code,pre pre{color:inherit;font-size:inherit;line-height:inherit}
pre>code{display:block}
pre.nowrap,pre.nowrap pre{white-space:pre;word-wrap:normal}
em em{font-style:normal}
strong strong{font-weight:400}
.keyseq{color:rgba(51,51,51,.8)}
kbd{font-family:"Droid Sans Mono","DejaVu Sans Mono",monospace;display:inline-block;color:rgba(0,0,0,.8);font-size:.65em;line-height:1.45;background:#f7f7f7;border:1px solid #ccc;-webkit-border-radius:3px;border-radius:3px;-webkit-box-shadow:0 1px 0 rgba(0,0,0,.2),0 0 0 .1em white inset;box-shadow:0 1px 0 rgba(0,0,0,.2),0 0 0 .1em #fff inset;margin:0 .15em;padding:.2em .5em;vertical-align:middle;position:relative;top:-.1em;white-space:nowrap}
.keyseq kbd:first-child{margin-left:0}
.keyseq kbd:last-child{margin-right:0}
.menuseq,.menuref{color:#000}
.menuseq b:not(.caret),.menuref{font-weight:inherit}
.menuseq{word-spacing:-.02em}
.menuseq b.caret{font-size:1.25em;line-height:.8}
.menuseq i.caret{font-weight:bold;text-align:center;width:.45em}
b.button::before,b.button::after{position:relative;top:-1px;font-weight:400}
b.button::before{content:"[";padding:0 3px 0 2px}
b.button::after{content:"]";padding:0 2px 0 3px}
p a>code:hover{color:rgba(0,0,0,.9)}
#header,#content,#footnotes,#footer{width:100%;margin-left:auto;margin-right:auto;margin-top:0;margin-bottom:0;max-width:62.5em;*zoom:1;position:relative;padding-left:.9375em;padding-right:.9375em}
#header::before,#header::after,#content::before,#content::after,#footnotes::before,#footnotes::after,#footer::before,#footer::after{content:" ";display:table}
#header::after,#content::after,#footnotes::after,#footer::after{clear:both}
#content{margin-top:1.25em}
#content::before{content:none}
#header>h1:first-child{color:rgba(0,0,0,.85);margin-top:2.25rem;margin-bottom:0}
#header>h1:first-child+#toc{margin-top:8px;border-top:1px solid #dddddf}
#header>h1:only-child,body.toc2 #header>h1:nth-last-child(2){border-bottom:1px solid #dddddf;padding-bottom:8px}
#header .details{border-bottom:1px solid #dddddf;line-height:1.45;padding-top:.25em;padding-bottom:.25em;padding-left:.25em;color:rgba(0,0,0,.6);display:-ms-flexbox;display:-webkit-flex;display:flex;-ms-flex-flow:row wrap;-webkit-flex-flow:row wrap;flex-flow:row wrap}
#header .details span:first-child{margin-left:-.125em}
#header .details span.email a{color:rgba(0,0,0,.85)}
#header .details br{display:none}
#header .details br+span::before{content:"\00a0\2013\00a0"}
#header .details br+span.author::before{content:"\00a0\22c5\00a0";color:rgba(0,0,0,.85)}
#header .details br+span#revremark::before{content:"\00a0|\00a0"}
#header #revnumber{text-transform:capitalize}
#header #revnumber::after{content:"\00a0"}
#content>h1:first-child:not([class]){color:rgba(0,0,0,.85);border-bottom:1px solid #dddddf;padding-bottom:8px;margin-top:0;padding-top:1rem;margin-bottom:1.25rem}
#toc{border-bottom:1px solid #e7e7e9;padding-bottom:.5em}
#toc>ul{margin-left:.125em}
#toc ul.sectlevel0>li>a{font-style:italic}
#toc ul.sectlevel0 ul.sectlevel1{margin:.5em 0}
#toc ul{font-family:"Open Sans","DejaVu Sans",sans-serif;list-style-type:none}
#toc li{line-height:1.3334;margin-top:.3334em}
#toc a{text-decoration:none}
#toc a:active{text-decoration:underline}
#toctitle{color:#7a2518;font-size:1.2em}
@media screen and (min-width:768px){#toctitle{font-size:1.375em}
body.toc2{padding-left:15em;padding-right:0}
#toc.toc2{margin-top:0!important;background:#f8f8f7;position:fixed;width:15em;left:0;top:0;border-right:1px solid #e7e7e9;border-top-width:0!important;border-bottom-width:0!important;z-index:1000;padding:1.25em 1em;height:100%;overflow:auto}
#toc.toc2 #toctitle{margin-top:0;margin-bottom:.8rem;font-size:1.2em}
#toc.toc2>ul{font-size:.9em;margin-bottom:0}
#toc.toc2 ul ul{margin-left:0;padding-left:1em}
#toc.toc2 ul.sectlevel0 ul.sectlevel1{padding-left:0;margin-top:.5em;margin-bottom:.5em}
body.toc2.toc-right{padding-left:0;padding-right:15em}
body.toc2.toc-right #toc.toc2{border-right-width:0;border-left:1px solid #e7e7e9;left:auto;right:0}}
@media screen and (min-width:1280px){body.toc2{padding-left:20em;padding-right:0}
#toc.toc2{width:20em}
#toc.toc2 #toctitle{font-size:1.375em}
#toc.toc2>ul{font-size:.95em}
#toc.toc2 ul ul{padding-left:1.25em}
body.toc2.toc-right{padding-left:0;padding-right:20em}}
#content #toc{border-style:solid;border-width:1px;border-color:#e0e0dc;margin-bottom:1.25em;padding:1.25em;background:#f8f8f7;-webkit-border-radius:4px;border-radius:4px}
#content #toc>:first-child{margin-top:0}
#content #toc>:last-child{margin-bottom:0}
#footer{max-width:100%;background:rgba(0,0,0,.8);padding:1.25em}
#footer-text{color:rgba(255,255,255,.8);line-height:1.44}
#content{margin-bottom:.625em}
.sect1{padding-bottom:.625em}
@media screen and (min-width:768px){#content{margin-bottom:1.25em}
.sect1{padding-bottom:1.25em}}
.sect1:last-child{padding-bottom:0}
.sect1+.sect1{border-top:1px solid #e7e7e9}
#content h1>a.anchor,h2>a.anchor,h3>a.anchor,#toctitle>a.anchor,.sidebarblock>.content>.title>a.anchor,h4>a.anchor,h5>a.anchor,h6>a.anchor{position:absolute;z-index:1001;width:1.5ex;margin-left:-1.5ex;display:block;text-decoration:none!important;visibility:hidden;text-align:center;font-weight:400}
#content h1>a.anchor::before,h2>a.anchor::before,h3>a.anchor::before,#toctitle>a.anchor::before,.sidebarblock>.content>.title>a.anchor::before,h4>a.anchor::before,h5>a.anchor::before,h6>a.anchor::before{content:"\00A7";font-size:.85em;display:block;padding-top:.1em}
#content h1:hover>a.anchor,#content h1>a.anchor:hover,h2:hover>a.anchor,h2>a.anchor:hover,h3:hover>a.anchor,#toctitle:hover>a.anchor,.sidebarblock>.content>.title:hover>a.anchor,h3>a.anchor:hover,#toctitle>a.anchor:hover,.sidebarblock>.content>.title>a.anchor:hover,h4:hover>a.anchor,h4>a.anchor:hover,h5:hover>a.anchor,h5>a.anchor:hover,h6:hover>a.anchor,h6>a.anchor:hover{visibility:visible}
#content h1>a.link,h2>a.link,h3>a.link,#toctitle>a.link,.sidebarblock>.content>.title>a.link,h4>a.link,h5>a.link,h6>a.link{color:#ba3925;text-decoration:none}
#content h1>a.link:hover,h2>a.link:hover,h3>a.link:hover,#toctitle>a.link:hover,.sidebarblock>.content>.title>a.link:hover,h4>a.link:hover,h5>a.link:hover,h6>a.link:hover{color:#a53221}
details,.audioblock,.imageblock,.literalblock,.listingblock,.stemblock,.videoblock{margin-bottom:1.25em}
details>summary:first-of-type{cursor:pointer;display:list-item;outline:none;margin-bottom:.75em}
.admonitionblock td.content>.title,.audioblock>.title,.exampleblock>.title,.imageblock>.title,.listingblock>.title,.literalblock>.title,.stemblock>.title,.openblock>.title,.paragraph>.title,.quoteblock>.title,table.tableblock>.title,.verseblock>.title,.videoblock>.title,.dlist>.title,.olist>.title,.ulist>.title,.qlist>.title,.hdlist>.title{text-rendering:optimizeLegibility;text-align:left;font-family:"Noto Serif","DejaVu Serif",serif;font-size:1rem;font-style:italic}
table.tableblock.fit-content>caption.title{white-space:nowrap;width:0}
.paragraph.lead>p,#preamble>.sectionbody>[class="paragraph"]:first-of-type p{font-size:1.21875em;line-height:1.6;color:rgba(0,0,0,.85)}
table.tableblock #preamble>.sectionbody>[class="paragraph"]:first-of-type p{font-size:inherit}
.admonitionblock>table{border-collapse:separate;border:0;background:none;width:100%}
.admonitionblock>table td.icon{text-align:center;width:80px}
.admonitionblock>table td.icon img{max-width:none}
.admonitionblock>table td.icon .title{font-weight:bold;font-family:"Open Sans","DejaVu Sans",sans-serif;text-transform:uppercase}
.admonitionblock>table td.content{padding-left:1.125em;padding-right:1.25em;border-left:1px solid #dddddf;color:rgba(0,0,0,.6)}
.admonitionblock>table td.content>:last-child>:last-child{margin-bottom:0}
.exampleblock>.content{border-style:solid;border-width:1px;border-color:#e6e6e6;margin-bottom:1.25em;padding:1.25em;background:#fff;-webkit-border-radius:4px;border-radius:4px}
.exampleblock>.content>:first-child{margin-top:0}
.exampleblock>.content>:last-child{margin-bottom:0}
.sidebarblock{border-style:solid;border-width:1px;border-color:#dbdbd6;margin-bottom:1.25em;padding:1.25em;background:#f3f3f2;-webkit-border-radius:4px;border-radius:4px}
.sidebarblock>:first-child{margin-top:0}
.sidebarblock>:last-child{margin-bottom:0}
.sidebarblock>.content>.title{color:#7a2518;margin-top:0;text-align:center}
.exampleblock>.content>:last-child>:last-child,.exampleblock>.content .olist>ol>li:last-child>:last-child,.exampleblock>.content .ulist>ul>li:last-child>:last-child,.exampleblock>.content .qlist>ol>li:last-child>:last-child,.sidebarblock>.content>:last-child>:last-child,.sidebarblock>.content .olist>ol>li:last-child>:last-child,.sidebarblock>.content .ulist>ul>li:last-child>:last-child,.sidebarblock>.content .qlist>ol>li:last-child>:last-child{margin-bottom:0}
.literalblock pre,.listingblock>.content>pre{-webkit-border-radius:4px;border-radius:4px;word-wrap:break-word;overflow-x:auto;padding:1em;font-size:.8125em}
@media screen and (min-width:768px){.literalblock pre,.listingblock>.content>pre{font-size:.90625em}}
@media screen and (min-width:1280px){.literalblock pre,.listingblock>.content>pre{font-size:1em}}
.literalblock pre,.listingblock>.content>pre:not(.highlight),.listingblock>.content>pre[class="highlight"],.listingblock>.content>pre[class^="highlight "]{background:#f7f7f8}
.literalblock.output pre{color:#f7f7f8;background:rgba(0,0,0,.9)}
.listingblock>.content{position:relative}
.listingblock code[data-lang]::before{display:none;content:attr(data-lang);position:absolute;font-size:.75em;top:.425rem;right:.5rem;line-height:1;text-transform:uppercase;color:inherit;opacity:.5}
.listingblock:hover code[data-lang]::before{display:block}
.listingblock.terminal pre .command::before{content:attr(data-prompt);padding-right:.5em;color:inherit;opacity:.5}
.listingblock.terminal pre .command:not([data-prompt])::before{content:"$"}
.listingblock pre.highlightjs{padding:0}
.listingblock pre.highlightjs>code{padding:1em;-webkit-border-radius:4px;border-radius:4px}
.listingblock pre.prettyprint{border-width:0}
.prettyprint{background:#f7f7f8}
pre.prettyprint .linenums{line-height:1.45;margin-left:2em}
pre.prettyprint li{background:none;list-style-type:inherit;padding-left:0}
pre.prettyprint li code[data-lang]::before{opacity:1}
pre.prettyprint li:not(:first-child) code[data-lang]::before{display:none}
table.linenotable{border-collapse:separate;border:0;margin-bottom:0;background:none}
table.linenotable td[class]{color:inherit;vertical-align:top;padding:0;line-height:inherit;white-space:normal}
table.linenotable td.code{padding-left:.75em}
table.linenotable td.linenos{border-right:1px solid currentColor;opacity:.35;padding-right:.5em}
pre.pygments .lineno{border-right:1px solid currentColor;opacity:.35;display:inline-block;margin-right:.75em}
pre.pygments .lineno::before{content:"";margin-right:-.125em}
.quoteblock{margin:0 1em 1.25em 1.5em;display:table}
.quoteblock:not(.excerpt)>.title{margin-left:-1.5em;margin-bottom:.75em}
.quoteblock blockquote,.quoteblock p{color:rgba(0,0,0,.85);font-size:1.15rem;line-height:1.75;word-spacing:.1em;letter-spacing:0;font-style:italic;text-align:justify}
.quoteblock blockquote{margin:0;padding:0;border:0}
.quoteblock blockquote::before{content:"\201c";float:left;font-size:2.75em;font-weight:bold;line-height:.6em;margin-left:-.6em;color:#7a2518;text-shadow:0 1px 2px rgba(0,0,0,.1)}
.quoteblock blockquote>.paragraph:last-child p{margin-bottom:0}
.quoteblock .attribution{margin-top:.75em;margin-right:.5ex;text-align:right}
.verseblock{margin:0 1em 1.25em}
.verseblock pre{font-family:"Open Sans","DejaVu Sans",sans;font-size:1.15rem;color:rgba(0,0,0,.85);font-weight:300;text-rendering:optimizeLegibility}
.verseblock pre strong{font-weight:400}
.verseblock .attribution{margin-top:1.25rem;margin-left:.5ex}
.quoteblock .attribution,.verseblock .attribution{font-size:.9375em;line-height:1.45;font-style:italic}
.quoteblock .attribution br,.verseblock .attribution br{display:none}
.quoteblock .attribution cite,.verseblock .attribution cite{display:block;letter-spacing:-.025em;color:rgba(0,0,0,.6)}
.quoteblock.abstract blockquote::before,.quoteblock.excerpt blockquote::before,.quoteblock .quoteblock blockquote::before{display:none}
.quoteblock.abstract blockquote,.quoteblock.abstract p,.quoteblock.excerpt blockquote,.quoteblock.excerpt p,.quoteblock .quoteblock blockquote,.quoteblock .quoteblock p{line-height:1.6;word-spacing:0}
.quoteblock.abstract{margin:0 1em 1.25em;display:block}
.quoteblock.abstract>.title{margin:0 0 .375em;font-size:1.15em;text-align:center}
.quoteblock.excerpt>blockquote,.quoteblock .quoteblock{padding:0 0 .25em 1em;border-left:.25em solid #dddddf}
.quoteblock.excerpt,.quoteblock .quoteblock{margin-left:0}
.quoteblock.excerpt blockquote,.quoteblock.excerpt p,.quoteblock .quoteblock blockquote,.quoteblock .quoteblock p{color:inherit;font-size:1.0625rem}
.quoteblock.excerpt .attribution,.quoteblock .quoteblock .attribution{color:inherit;text-align:left;margin-right:0}
table.tableblock{max-width:100%;border-collapse:separate}
p.tableblock:last-child{margin-bottom:0}
td.tableblock>.content>:last-child{margin-bottom:-1.25em}
td.tableblock>.content>:last-child.sidebarblock{margin-bottom:0}
table.tableblock,th.tableblock,td.tableblock{border:0 solid #dedede}
table.grid-all>thead>tr>.tableblock,table.grid-all>tbody>tr>.tableblock{border-width:0 1px 1px 0}
table.grid-all>tfoot>tr>.tableblock{border-width:1px 1px 0 0}
table.grid-cols>*>tr>.tableblock{border-width:0 1px 0 0}
table.grid-rows>thead>tr>.tableblock,table.grid-rows>tbody>tr>.tableblock{border-width:0 0 1px}
table.grid-rows>tfoot>tr>.tableblock{border-width:1px 0 0}
table.grid-all>*>tr>.tableblock:last-child,table.grid-cols>*>tr>.tableblock:last-child{border-right-width:0}
table.grid-all>tbody>tr:last-child>.tableblock,table.grid-all>thead:last-child>tr>.tableblock,table.grid-rows>tbody>tr:last-child>.tableblock,table.grid-rows>thead:last-child>tr>.tableblock{border-bottom-width:0}
table.frame-all{border-width:1px}
table.frame-sides{border-width:0 1px}
table.frame-topbot,table.frame-ends{border-width:1px 0}
table.stripes-all tr,table.stripes-odd tr:nth-of-type(odd),table.stripes-even tr:nth-of-type(even),table.stripes-hover tr:hover{background:#f8f8f7}
th.halign-left,td.halign-left{text-align:left}
th.halign-right,td.halign-right{text-align:right}
th.halign-center,td.halign-center{text-align:center}
th.valign-top,td.valign-top{vertical-align:top}
th.valign-bottom,td.valign-bottom{vertical-align:bottom}
th.valign-middle,td.valign-middle{vertical-align:middle}
table thead th,table tfoot th{font-weight:bold}
tbody tr th{display:table-cell;line-height:1.6;background:#f7f8f7}
tbody tr th,tbody tr th p,tfoot tr th,tfoot tr th p{color:rgba(0,0,0,.8);font-weight:bold}
p.tableblock>code:only-child{background:none;padding:0}
p.tableblock{font-size:1em}
ol{margin-left:1.75em}
ul li ol{margin-left:1.5em}
dl dd{margin-left:1.125em}
dl dd:last-child,dl dd:last-child>:last-child{margin-bottom:0}
ol>li p,ul>li p,ul dd,ol dd,.olist .olist,.ulist .ulist,.ulist .olist,.olist .ulist{margin-bottom:.625em}
ul.checklist,ul.none,ol.none,ul.no-bullet,ol.no-bullet,ol.unnumbered,ul.unstyled,ol.unstyled{list-style-type:none}
ul.no-bullet,ol.no-bullet,ol.unnumbered{margin-left:.625em}
ul.unstyled,ol.unstyled{margin-left:0}
ul.checklist{margin-left:.625em}
ul.checklist li>p:first-child>.fa-square-o:first-child,ul.checklist li>p:first-child>.fa-check-square-o:first-child{width:1.25em;font-size:.8em;position:relative;bottom:.125em}
ul.checklist li>p:first-child>input[type="checkbox"]:first-child{margin-right:.25em}
ul.inline{display:-ms-flexbox;display:-webkit-box;display:flex;-ms-flex-flow:row wrap;-webkit-flex-flow:row wrap;flex-flow:row wrap;list-style:none;margin:0 0 .625em -1.25em}
ul.inline>li{margin-left:1.25em}
.unstyled dl dt{font-weight:400;font-style:normal}
ol.arabic{list-style-type:decimal}
ol.decimal{list-style-type:decimal-leading-zero}
ol.loweralpha{list-style-type:lower-alpha}
ol.upperalpha{list-style-type:upper-alpha}
ol.lowerroman{list-style-type:lower-roman}
ol.upperroman{list-style-type:upper-roman}
ol.lowergreek{list-style-type:lower-greek}
.hdlist>table,.colist>table{border:0;background:none}
.hdlist>table>tbody>tr,.colist>table>tbody>tr{background:none}
td.hdlist1,td.hdlist2{vertical-align:top;padding:0 .625em}
td.hdlist1{font-weight:bold;padding-bottom:1.25em}
.literalblock+.colist,.listingblock+.colist{margin-top:-.5em}
.colist td:not([class]):first-child{padding:.4em .75em 0;line-height:1;vertical-align:top}
.colist td:not([class]):first-child img{max-width:none}
.colist td:not([class]):last-child{padding:.25em 0}
.thumb,.th{line-height:0;display:inline-block;border:solid 4px #fff;-webkit-box-shadow:0 0 0 1px #ddd;box-shadow:0 0 0 1px #ddd}
.imageblock.left{margin:.25em .625em 1.25em 0}
.imageblock.right{margin:.25em 0 1.25em .625em}
.imageblock>.title{margin-bottom:0}
.imageblock.thumb,.imageblock.th{border-width:6px}
.imageblock.thumb>.title,.imageblock.th>.title{padding:0 .125em}
.image.left,.image.right{margin-top:.25em;margin-bottom:.25em;display:inline-block;line-height:0}
.image.left{margin-right:.625em}
.image.right{margin-left:.625em}
a.image{text-decoration:none;display:inline-block}
a.image object{pointer-events:none}
sup.footnote,sup.footnoteref{font-size:.875em;position:static;vertical-align:super}
sup.footnote a,sup.footnoteref a{text-decoration:none}
sup.footnote a:active,sup.footnoteref a:active{text-decoration:underline}
#footnotes{padding-top:.75em;padding-bottom:.75em;margin-bottom:.625em}
#footnotes hr{width:20%;min-width:6.25em;margin:-.25em 0 .75em;border-width:1px 0 0}
#footnotes .footnote{padding:0 .375em 0 .225em;line-height:1.3334;font-size:.875em;margin-left:1.2em;margin-bottom:.2em}
#footnotes .footnote a:first-of-type{font-weight:bold;text-decoration:none;margin-left:-1.05em}
#footnotes .footnote:last-of-type{margin-bottom:0}
#content #footnotes{margin-top:-.625em;margin-bottom:0;padding:.75em 0}
.gist .file-data>table{border:0;background:#fff;width:100%;margin-bottom:0}
.gist .file-data>table td.line-data{width:99%}
div.unbreakable{page-break-inside:avoid}
.big{font-size:larger}
.small{font-size:smaller}
.underline{text-decoration:underline}
.overline{text-decoration:overline}
.line-through{text-decoration:line-through}
.aqua{color:#00bfbf}
.aqua-background{background:#00fafa}
.black{color:#000}
.black-background{background:#000}
.blue{color:#0000bf}
.blue-background{background:#0000fa}
.fuchsia{color:#bf00bf}
.fuchsia-background{background:#fa00fa}
.gray{color:#606060}
.gray-background{background:#7d7d7d}
.green{color:#006000}
.green-background{background:#007d00}
.lime{color:#00bf00}
.lime-background{background:#00fa00}
.maroon{color:#600000}
.maroon-background{background:#7d0000}
.navy{color:#000060}
.navy-background{background:#00007d}
.olive{color:#606000}
.olive-background{background:#7d7d00}
.purple{color:#600060}
.purple-background{background:#7d007d}
.red{color:#bf0000}
.red-background{background:#fa0000}
.silver{color:#909090}
.silver-background{background:#bcbcbc}
.teal{color:#006060}
.teal-background{background:#007d7d}
.white{color:#bfbfbf}
.white-background{background:#fafafa}
.yellow{color:#bfbf00}
.yellow-background{background:#fafa00}
span.icon>.fa{cursor:default}
a span.icon>.fa{cursor:inherit}
.admonitionblock td.icon [class^="fa icon-"]{font-size:2.5em;text-shadow:1px 1px 2px rgba(0,0,0,.5);cursor:default}
.admonitionblock td.icon .icon-note::before{content:"\f05a";color:#19407c}
.admonitionblock td.icon .icon-tip::before{content:"\f0eb";text-shadow:1px 1px 2px rgba(155,155,0,.8);color:#111}
.admonitionblock td.icon .icon-warning::before{content:"\f071";color:#bf6900}
.admonitionblock td.icon .icon-caution::before{content:"\f06d";color:#bf3400}
.admonitionblock td.icon .icon-important::before{content:"\f06a";color:#bf0000}
.conum[data-value]{display:inline-block;color:#fff!important;background:rgba(0,0,0,.8);-webkit-border-radius:100px;border-radius:100px;text-align:center;font-size:.75em;width:1.67em;height:1.67em;line-height:1.67em;font-family:"Open Sans","DejaVu Sans",sans-serif;font-style:normal;font-weight:bold}
.conum[data-value] *{color:#fff!important}
.conum[data-value]+b{display:none}
.conum[data-value]::after{content:attr(data-value)}
pre .conum[data-value]{position:relative;top:-.125em}
b.conum *{color:inherit!important}
.conum:not([data-value]):empty{display:none}
dt,th.tableblock,td.content,div.footnote{text-rendering:optimizeLegibility}
h1,h2,p,td.content,span.alt{letter-spacing:-.01em}
p strong,td.content strong,div.footnote strong{letter-spacing:-.005em}
p,blockquote,dt,td.content,span.alt{font-size:1.0625rem}
p{margin-bottom:1.25rem}
.sidebarblock p,.sidebarblock dt,.sidebarblock td.content,p.tableblock{font-size:1em}
.exampleblock>.content{background:#fffef7;border-color:#e0e0dc;-webkit-box-shadow:0 1px 4px #e0e0dc;box-shadow:0 1px 4px #e0e0dc}
.print-only{display:none!important}
@page{margin:1.25cm .75cm}
@media print{*{-webkit-box-shadow:none!important;box-shadow:none!important;text-shadow:none!important}
html{font-size:80%}
a{color:inherit!important;text-decoration:underline!important}
a.bare,a[href^="#"],a[href^="mailto:"]{text-decoration:none!important}
a[href^="http:"]:not(.bare)::after,a[href^="https:"]:not(.bare)::after{content:"(" attr(href) ")";display:inline-block;font-size:.875em;padding-left:.25em}
abbr[title]::after{content:" (" attr(title) ")"}
pre,blockquote,tr,img,object,svg{page-break-inside:avoid}
thead{display:table-header-group}
svg{max-width:100%}
p,blockquote,dt,td.content{font-size:1em;orphans:3;widows:3}
h2,h3,#toctitle,.sidebarblock>.content>.title{page-break-after:avoid}
#toc,.sidebarblock,.exampleblock>.content{background:none!important}
#toc{border-bottom:1px solid #dddddf!important;padding-bottom:0!important}
body.book #header{text-align:center}
body.book #header>h1:first-child{border:0!important;margin:2.5em 0 1em}
body.book #header .details{border:0!important;display:block;padding:0!important}
body.book #header .details span:first-child{margin-left:0!important}
body.book #header .details br{display:block}
body.book #header .details br+span::before{content:none!important}
body.book #toc{border:0!important;text-align:left!important;padding:0!important;margin:0!important}
body.book #toc,body.book #preamble,body.book h1.sect0,body.book .sect1>h2{page-break-before:always}
.listingblock code[data-lang]::before{display:block}
#footer{padding:0 .9375em}
.hide-on-print{display:none!important}
.print-only{display:block!important}
.hide-for-print{display:none!important}
.show-for-print{display:inherit!important}}
@media print,amzn-kf8{#header>h1:first-child{margin-top:1.25rem}
.sect1{padding:0!important}
.sect1+.sect1{border:0}
#footer{background:none}
#footer-text{color:rgba(0,0,0,.6);font-size:.9em}}
@media amzn-kf8{#header,#content,#footnotes,#footer{padding:0}}
</style>
</head>
<body class="book">
<div id="header">
</div>
<div id="content">
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
<p>Back to the <a href="Guide%3AMicrosoft-Windows-in-DOSBox‐X">Microsoft Windows in DOSBox-X</a></p>
</div>
</div>
</div>
<h1 id="_installing_microsoft_windows_2_x_in_dosbox_x" class="sect0">Installing Microsoft Windows 2.x in DOSBox-X</h1>
<div class="openblock partintro">
<div class="content">
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SPLASH.png" alt="Windows 2.03 splash screen">
</div>
</div>
<div id="toc" class="toc">
<div id="toctitle" class="title">Table of Contents</div>
<ul class="sectlevel0">
<li><a href="#_installing_microsoft_windows_2_x_in_dosbox_x">Installing Microsoft Windows 2.x in DOSBox-X</a></li>
<li><a href="#_overview">Overview</a>
<ul class="sectlevel1">
<li><a href="#_editions_this_applies_to">Editions this applies to</a></li>
<li><a href="#_readme_1st">README.1ST</a>
<ul class="sectlevel2">
<li><a href="#_useful_links">Useful links</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#_dosbox_x_config_file">DOSBox-X config file</a></li>
<li><a href="#_method_1_installing_windows_2_03_into_a_mounted_folder">Method 1 - Installing Windows 2.03 into a mounted folder</a>
<ul class="sectlevel1">
<li><a href="#_preparing_for_installation">Preparing for installation</a>
<ul class="sectlevel2">
<li><a href="#_example_of_extracting_files_from_disk_images">Example of extracting files from disk images</a></li>
</ul>
</li>
<li><a href="#_installing_in_a_mounted_folder">Installing in a mounted folder</a></li>
</ul>
</li>
<li><a href="#_method_2_installing_in_real_dos">Method 2 - Installing in real DOS</a></li>
<li><a href="#_windows_2_x_setup_program">Windows 2.x setup program</a></li>
<li><a href="#_starting_windows_2_x_after_installation">Starting Windows 2.x after installation</a></li>
</ul>
</div>
</div>
</div>
<h1 id="_overview" class="sect0">Overview</h1>
<div class="sect1">
<h2 id="_editions_this_applies_to">Editions this applies to</h2>
<div class="sectionbody">
<div class="ulist">
<ul>
<li>
<p><strong>Windows/386 2.01</strong></p>
<div class="ulist">
<ul>
<li>
<p>Only meant for Compaq 386 computers</p>
</li>
<li>
<p>Introduces 386 extensions (protected mode)</p>
</li>
<li>
<p>LIM EMS 4.0 support</p>
</li>
<li>
<p>Provides EMS emulation</p>
</li>
<li>
<p>Support for overlapping windows</p>
</li>
</ul>
</div>
</li>
<li>
<p><strong>Windows 2.03</strong></p>
<div class="ulist">
<ul>
<li>
<p>Adds support for non-Compaq computers</p>
</li>
<li>
<p>Runs on 8086 or 286</p>
</li>
</ul>
</div>
</li>
<li>
<p><strong>Windows/286 2.10</strong> and <strong>Windows/386 2.10</strong></p>
<div class="ulist">
<ul>
<li>
<p>Adds HIMEM.SYS support for HMA (High Memory Area)</p>
</li>
</ul>
</div>
</li>
<li>
<p><strong>Windows/286 2.11</strong> and <strong>Windows/386 2.11</strong></p>
<div class="ulist">
<ul>
<li>
<p>minor update to memory management</p>
</li>
<li>
<p>AppleTalk Support</p>
</li>
<li>
<p>Faster printing and updated printer drivers</p>
</li>
</ul>
</div>
</li>
</ul>
</div>
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 25%;">
<col style="width: 25%;">
<col style="width: 25%;">
<col style="width: 25%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Edition</th>
<th class="tableblock halign-left valign-top">Min CPU</th>
<th class="tableblock halign-left valign-top">Min DOS</th>
<th class="tableblock halign-left valign-top">HMA</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Windows/386 2.01</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">386</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">3.10</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">No</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Windows 2.03</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">8086</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">2.0</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">No</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Windows/386 2.03</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">386</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">3.10</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">No</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Windows/286 2.10</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">8086</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">3.00</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Yes</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Windows/386 2.10</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">386</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">3.10</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Yes</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Windows/286 2.11</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">8086</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">3.00</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Yes</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Windows/386 2.11</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">386</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">3.10</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Yes</p></td>
</tr>
</tbody>
</table>
<div class="paragraph">
<p>Windows 2.x was available for both Retail and via OEM. A runtime version was also included with some applications.</p>
</div>
<div class="paragraph">
<p><strong>Windows 2.03</strong> was followed by <strong>Windows/286 2.10</strong> and <strong>Windows/286 2.11</strong>.
The reason for the name change, is that version 2.10 includes HIMEM.SYS which requires at least a 286.
However, despite the 286 in the name, it will also run on 8086/8088 CPUs.</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Running Windows 2.03 requires at least DOS 2.0</p>
</li>
<li>
<p>Running a Windows/286 edition requires at least DOS 3.0</p>
</li>
<li>
<p>Running a Windows/386 edition requires at least DOS 3.1</p>
</li>
</ul>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_readme_1st">README.1ST</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Windows 2.x has problems starting if the reported DOS version is 5.0 or higher.
Therefore it is necessary to set the reported DOS version to something like 4.0.</p>
</div>
<div class="paragraph">
<p>Windows/386 2.01 was the first Windows 2.x release, and meant for Compaq 386 computers.
As such it has a very small selection of drivers, and for instance no driver for PS/2 mouse.
Therefore if you want to run this version in DOSBox-X, you should enable <code>serial1=serialmouse</code> support.</p>
</div>
<div class="paragraph">
<p>Windows 2.1x will complain if the High Memory Area (HMA) is used.
This can be resolved by setting <code>DOS=LOW</code> in the [config] section of the DOSBox-X config file.</p>
</div>
<div class="paragraph">
<p>The Windows/386 editions install by default into <code>C:\WIN386</code> instead of <code>C:\WINDOWS</code> as all other Windows versions normally do.
And the command to start Windows/386 is <code>win386.exe</code>, instead of the typical <code>win.com</code> of most other Windows versions at the time.
Windows/386 also has a <code>win86.com</code> executable, which is effectively a renamed <code>win.com</code>, and this makes it possible to run Windows/386 on 8086 and 286 computers.</p>
</div>
<div class="admonitionblock important">
<table>
<tr>
<td class="icon">
<div class="title">Important</div>
</td>
<td class="content">
Unfortunately at this point only <strong>Windows 2.03</strong> works in the integrated DOS that DOSBox-X provides.
All other Windows/286 and Windows/386 editions need to be run from a real DOS.
</td>
</tr>
</table>
</div>
<div class="sect2">
<h3 id="_useful_links">Useful links</h3>
<div class="ulist">
<ul>
<li>
<p><a href="https://en.wikipedia.org/wiki/Windows_2.0">Wikipedia: Windows 2.0</a></p>
</li>
<li>
<p><a href="https://en.wikipedia.org/wiki/Windows_2.1x">Wikipedia: Windows 2.1x</a></p>
</li>
<li>
<p><a href="https://microsoft.fandom.com/wiki/Windows_2.0">Fandom: Windows 2.0</a></p>
</li>
<li>
<p><a href="https://microsoft.fandom.com/wiki/Windows_2.1">Fandom: Windows 2.1</a></p>
</li>
<li>
<p><a href="https://betawiki.net/wiki/Windows_2.x">BetaWiki: Windows 2.x</a></p>
</li>
<li>
<p><a href="http://www.os2museum.com/wp/windows386-2-01/">os2museum: Windows/386 2.01</a></p>
</li>
</ul>
</div>
</div>
</div>
</div>
<h1 id="_dosbox_x_config_file" class="sect0">DOSBox-X config file</h1>
<div class="openblock partintro">
<div class="content">
<div class="paragraph">
<p>It is recommended that you create a custom DOSBox-X config file for running Windows 2.x</p>
</div>
<div class="literalblock">
<div class="content">
<pre>[sdl]
autolock=true

[dosbox]
title=Windows 2.x

[dos]
ver=4.0

[serial]
#uncomment if using Windows/386 2.01 which lacks PS/2 mouse support
#serial1=serialmouse

[parallel]
parallel1=printer

[printer]
multipage=true
timeout=5000

[render]
scaler=none

[config]
# this prevents Windows 2.1x from complaining that HMA is in use
dos=low

[autoexec]</pre>
</div>
</div>
<div class="paragraph">
<p>Copy the above config and save it as <strong>win2x.conf</strong></p>
</div>
</div>
</div>
<h1 id="_method_1_installing_windows_2_03_into_a_mounted_folder" class="sect0">Method 1 - Installing Windows 2.03 into a mounted folder</h1>
<div class="openblock partintro">
<div class="content">
<div class="paragraph">
<p>This method will <strong>only</strong> work for Windows 2.03.
It will not work for any other Windows 2.x version, including Windows/386 2.03.</p>
</div>
<div class="paragraph">
<p>For other Windows versions, please see Method 2 below.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_preparing_for_installation">Preparing for installation</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The installation will be into a mounted folder, and Windows 2.03 will run from the integrated DOS that DOSBox-X provides.
You can optionally install real DOS into DOSBox-X and install Windows 2.03 in that, but there is no known advantage to doing so.</p>
</div>
<div class="paragraph">
<p>Start by creating a directory on your system that your going to use (mount) as your Windows 2.03 C: drive.
Valid examples:</p>
</div>
<div class="ulist">
<ul>
<li>
<p>For Windows hosts</p>
<div class="ulist">
<ul>
<li>
<p>C:\winroot</p>
</li>
<li>
<p>C:\users\myuser\win2x</p>
</li>
</ul>
</div>
</li>
<li>
<p>For Linux hosts</p>
<div class="ulist">
<ul>
<li>
<p>/home/myuser/winroot</p>
</li>
<li>
<p>/home/myuser/windows/win2x</p>
</li>
</ul>
</div>
</li>
</ul>
</div>
<div class="paragraph">
<p>Note: For Windows users, do <strong>NOT</strong> mount the root of your C: drive as the DOSBox-X C: drive! (e.g. <code>MOUNT C C:\</code> should NOT be done)</p>
</div>
<div class="paragraph">
<p>Windows 2.x versions were shipped on diskettes, requiring anywhere between 4 and 10 disks, depending on media-type and windows version.
And while it is definitely possible to install Windows 2.x from diskette images in DOSBox-X, the disk-swap process for this is rather tedious for large number of disks.
As such it is highly recommended to make a directory such as "INSTALL" and copy the contents of ALL the diskettes into this directory.
This way there is no need to swap disks during the installation process.</p>
</div>
<div class="sect2">
<h3 id="_example_of_extracting_files_from_disk_images">Example of extracting files from disk images</h3>
<div class="paragraph">
<p>There are various ways to extract the contents of disk images, such as 7zip on Windows or "Disk Image Mounter" on Linux.
In this example, DOSBox-X itself is used to mount a disk image, copy its contents into a folder, unmount the disk image and do the next.</p>
</div>
<div class="literalblock">
<div class="content">
<pre>MOUNT C /home/myuser/winroot
C:
MD INSTALL
IMGMOUNT A DISK01.IMG -U
XCOPY A:\. C:\INSTALL /S /Y
IMGMOUNT A DISK02.IMG -U
XCOPY A:\. C:\INSTALL /S /Y
IMGMOUNT A DISK03.IMG -U
XCOPY A:\. C:\INSTALL /S /Y
IMGMOUNT A DISK04.IMG -U
XCOPY A:\. C:\INSTALL /S /Y
IMGMOUNT A DISK05.IMG -U
XCOPY A:\. C:\INSTALL /S /Y
IMGMOUNT A -U</pre>
</div>
</div>
<div class="paragraph">
<p>Your new INSTALL directory now contains the contents of all 5 disks.</p>
</div>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_installing_in_a_mounted_folder">Installing in a mounted folder</h2>
<div class="sectionbody">
<div class="paragraph">
<p>You are now ready to start DOSBox-X from the command-line, using the newly created win2x.conf config file.
This assumes that dosbox-x is in your path and win2x.conf is in your current directory.</p>
</div>
<div class="literalblock">
<div class="content">
<pre>dosbox-x -conf win2x.conf</pre>
</div>
</div>
<div class="paragraph">
<p>You now need to mount your new folder as the C: drive in DOSBox-X and start the installation.</p>
</div>
<div class="literalblock">
<div class="content">
<pre>MOUNT C /home/myuser/winroot
C:
CD INSTALL
SETUP</pre>
</div>
</div>
<div class="paragraph">
<p>Adjust the path for mounting the C: drive as needed.</p>
</div>
<div class="paragraph">
<p><strong>Notes</strong></p>
</div>
<div class="ulist">
<ul>
<li>
<p>If your path contains spaces, you need to enclose it in quotes. e.g. <code>MOUNT C "C:\Users\John Doe\winroot"</code></p>
</li>
</ul>
</div>
<div class="paragraph">
<p>The Windows installation will now take place. See the <a href="#Windows-2.x-setup-program">Windows 2.x setup program</a> section below.</p>
</div>
</div>
</div>
<h1 id="_method_2_installing_in_real_dos" class="sect0">Method 2 - Installing in real DOS</h1>
<div class="openblock partintro">
<div class="content">
<div class="paragraph">
<p>This method is required for most Windows 2.x versions, and requires that you create a DOS HDD image.</p>
</div>
<div class="paragraph">
<p>In addition, it brings with it several inconveniences.
For instance you will need to do your own DOS memory management and load DOS drivers for CD-ROM access if you need it.
You can also not mount a host directory in DOSBox-X when you boot a disk image.
Even host directories that you mounted prior to booting the disk image will become unavailable.
Everything needs to be done using IMAGE files.</p>
</div>
<div class="paragraph">
<p>The first step is to create a DOS HDD image, for which you can follow the <a href="Guide%3ADOS-Installation-in-DOSBox‐X">PC DOS and MS-DOS Installation Guide</a>.
It is recommended to use at least DOS 3.1, as it is compatible with all Windows 2.x releases.
When using DOS 5.0 or higher however, it will be necessary to use <a href="https://web.csulb.edu/~murdock/setver.html">SETVER</a> to make Windows 2.x think your using and older DOS version like 4.0.</p>
</div>
<div class="paragraph">
<p>Once you have a DOS HDD image, temporarily mount it in DOSBox-X to transfer your INSTALL folder into your DOS HDD image, together with any drivers and add-ons you might need (preferably already unzipped, such that you don&#8217;t need to do that in DOS or Windows 3.x, as they lack support for that by default).</p>
</div>
<div class="paragraph">
<p>Something along the lines of:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>IMGMOUNT C hdd.img
MOUNT D .
XCOPY D:\INSTALL C:\INSTALL /I /S
XCOPY D:\DRIVERS C:\DRIVERS /I /S
XCOPY D:\ADDONS C:\ADDONS /I /S
EXIT</pre>
</div>
</div>
<div class="paragraph">
<p>Adjust paths in the above example as needed.</p>
</div>
<div class="paragraph">
<p>Now edit your win2x.conf config file and in the [autoexec] section at the end, add the following lines:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>IMGMOUNT C hdd.img
BOOT C:</pre>
</div>
</div>
<div class="paragraph">
<p>Now start DOSBox-X with your win2x.conf config file from the command-line:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>dosbox-x -conf win2x.conf</pre>
</div>
</div>
<div class="paragraph">
<p>It should boot to the C: prompt, and you can start the installation process</p>
</div>
<div class="literalblock">
<div class="content">
<pre>CD INSTALL
SETUP</pre>
</div>
</div>
<div class="paragraph">
<p>After the installation is finished, you can install your drivers and add-ons.</p>
</div>
</div>
</div>
<h1 id="_windows_2_x_setup_program" class="sect0">Windows 2.x setup program</h1>
<div class="openblock partintro">
<div class="content">
<div class="paragraph">
<p>The setup program will ask several question relating to mouse, display, keyboard, region and printer.</p>
</div>
<div class="paragraph">
<p>Note: the below screenshots are from the retail Windows 2.03 release, other releases can vary.
In particular OEM or Runtime versions may have a different number of disks and present other options.</p>
</div>
<hr>
<div class="paragraph">
<p>Simply press Enter to continue as prompted.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_01.png" alt="Windows 2.03 SETUP">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Installation drive</strong></p>
</div>
<div class="paragraph">
<p>This screen is only shown on Windows 2.03. Later versions require a harddisk.</p>
</div>
<div class="paragraph">
<p>Confirm you want to install onto the hard disk (H) by pressing Enter.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_02.png" alt="Windows 2.03 SETUP drive">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Installation directory</strong></p>
</div>
<div class="paragraph">
<p>You can optionally specify a different directory to install into.</p>
</div>
<div class="ulist">
<ul>
<li>
<p>Windows 2.03 and Windows/386 2.1x will propose to install into C:\WINDOWS</p>
</li>
<li>
<p>Windows/386 2.x will propose to install into C:\WIN386</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Simply press Enter when ready.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_03.png" alt="Windows 2.03 SETUP directory">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Computer Type</strong></p>
</div>
<div class="paragraph">
<p>The options offered on this screen will vary depending on the version, and edition (retail, OEM).</p>
</div>
<div class="ulist">
<ul>
<li>
<p>For Windows 2.03 select the "IBM Personal System/2 Model 50, 60 or 80" option or alternatively "IBM PC, XT, AT (or 100% compatible)"</p>
</li>
<li>
<p>For Windows/286 2.1x select the "IBM Personal System/2 Model 50, 60 or 80" option or alternatively "IBM AT (or 100% compatible)".</p>
</li>
<li>
<p>For Windows/386 2.x select the "IBM Personal System/2 Model 80"</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>It does not seem to matter which you choose, the only difference appears to be the order that video and mouse options are presented on the following screens.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_04.png" alt="Windows 2.03 SETUP machine type">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Graphics Adapter selection</strong></p>
</div>
<div class="paragraph">
<p>Select "IBM (or 100% compatible) VGA (Video Graphics Array)" and press Enter.</p>
</div>
<div class="paragraph">
<p>Note: depending on the edition, this option may be labelled slightly differently.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_05.png" alt="Windows 2.03 SETUP GRAPHICS">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Keyboard selection</strong></p>
</div>
<div class="paragraph">
<p>Select your keyboard layout, and press Enter.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_06.png" alt="Windows 2.03 SETUP Keyboard">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Mouse selection</strong></p>
</div>
<div class="paragraph">
<p>Select "Microsoft Mouse connected to PS/2 Mouse Port" and press Enter to continue.</p>
</div>
<div class="paragraph">
<p>If installing Windows/386 2.01, you will need to select the Microsoft serial mouse instead, and activate serial mouse support in your dosbox config file.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_07.png" alt="Windows 2.03 SETUP MOUSE">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Installation confirmation</strong></p>
</div>
<div class="paragraph">
<p>Confirm that the settings are correct by selecting "No Change", and pressing Enter, and windows will start the first part of the installation process.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_08.png" alt="Windows 2.03 CONFIRM">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Extended Memory Setting</strong></p>
</div>
<div class="paragraph">
<p>Starting with Windows 2.10 the following screen will be presented.</p>
</div>
<div class="paragraph">
<p>Simply confirm by pressing Enter.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.11_SETUP_01.png" alt="Windows 2.03 SETUP EMS">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Printer setup</strong></p>
</div>
<div class="paragraph">
<p>It now asks if you want to setup a printer. You can press enter to confirm.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_09.png" alt="Windows 2.03 SETUP printer">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Printer setup - select model</strong></p>
</div>
<div class="paragraph">
<p>If you indicated wanting a printer, it now asks you which model.</p>
</div>
<div class="paragraph">
<p>For this guide, scroll to the "Epson LQ-800", and press Enter.</p>
</div>
<div class="paragraph">
<p>Later releases may have other options, such as a "Generic / Text Only" printer which can also be used.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_10.png" alt="Windows 2.03 SETUP printer">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Printer setup - port select</strong></p>
</div>
<div class="paragraph">
<p>If you indicated wanting a printer, it now asks you which port the printer is connected to.</p>
</div>
<div class="paragraph">
<p>Select the "LPT1:" port and press Enter.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_11.png" alt="Windows 2.03 SETUP printer port">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Printer setup - another printer</strong></p>
</div>
<div class="paragraph">
<p>SETUP now asks if you want to setup another printer.</p>
</div>
<div class="paragraph">
<p>Press Enter to continue without setting up another printer.</p>
</div>
<div class="paragraph">
<p>You can always change the installed printers afterwards by running CONTROL.EXE from within Windows.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_12.png" alt="Windows 2.03 SETUP another printer">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>Country selection</strong>
You will be asked for a country for regional settings</p>
</div>
<div class="paragraph">
<p>Select a country, and press Enter.</p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_13.png" alt="Windows 2.03 SETUP country">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>View Readme files</strong></p>
</div>
<div class="paragraph">
<p>You can now optionally view the README files. Select F and press Enter when ready.</p>
</div>
<div class="ulist">
<ul>
<li>
<p>If your following Method 1, you can simply press Enter</p>
</li>
<li>
<p>If your using disk images to install Windows, you need to now swap the disk using the menu item "DOS" followed by "Swap floppy". And then press enter.</p>
</li>
</ul>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_14.png" alt="Windows 2.03 SETUP View readme files">
</div>
</div>
<hr>
<div class="paragraph">
<p><strong>SETUP finished</strong></p>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03_SETUP_15.png" alt="Windows 2.03 SETUP finished">
</div>
</div>
<div class="paragraph">
<p>The setup program is now finished, and your ready to start Windows 2.x.</p>
</div>
<div class="paragraph">
<p>But first type <code>EXIT</code> to close DOSBox-X.</p>
</div>
<div class="paragraph">
<p>And then edit your win2x.conf config file and add the following lines into the [autoexec] section at the end of the file:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>MOUNT C /home/myuser/winroot
C:
SET PATH=%PATH%;C:\WINDOWS;
C:\WINDOWS\WIN
EXIT</pre>
</div>
</div>
<div class="paragraph">
<p>Adjust the path for mounting the C: drive as needed. If you don&#8217;t want DOSBox-X to close when exiting Windows 2.x, remove the <code>EXIT</code> command.</p>
</div>
</div>
</div>
<h1 id="_starting_windows_2_x_after_installation" class="sect0">Starting Windows 2.x after installation</h1>
<div class="openblock partintro">
<div class="content">
<div class="paragraph">
<p>After the installation is finished, you can start Windows 2.x from the command-prompt with the following command:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>dosbox-x -conf win2x.conf</pre>
</div>
</div>
<div class="imageblock">
<div class="content">
<img src="images/Windows:Windows_2.03.png" alt="Windows 2.03 MS-DOS Executive">
</div>
</div>
</div>
</div>
</div>
<div id="footer">
<div id="footer-text">
Last updated 2020-10-04 16:47:35 -0400
</div>
</div>
</body>
</html>