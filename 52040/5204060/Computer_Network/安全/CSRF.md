# CSRF

[TOC]
CSRF（Cross-site request forgery）跨站请求伪造，也被称为“One Click Attack”或者 Session Riding，通常缩写为 CSRF 或者 XSRF，是一种对网站的恶意利用。尽管听起来像跨站脚本（XSS），但它与 XSS 非常不同，XSS 利用站点内的信任用户，而 CSRF 则通过伪装成受信任用户的请求来利用受信任的网站。与 XSS 攻击相比，CSRF 攻击往往不大流行（因此对其进行防范的资源也相当稀少）和难以防范，所以被认为比 XSS 更具危险性。

示例特性
攻击通过在授权用户访问的页面中包含链接或者脚本的方式工作。例如：一个网站用户 Bob 可能正在浏览聊天论坛，而同时另一个用户 Alice 也在此论坛中，并且后者刚刚发布了一个具有 Bob 银行链接的图片消息。设想一下，Alice 编写了一个在 Bob 的银行站点上进行取款的 form 提交的链接，并将此链接作为图片 src。如果 Bob 的银行在 cookie 中保存他的授权信息，并且此 cookie 没有过期，那么当 Bob 的浏览器尝试装载图片时将提交这个取款 form 和他的 cookie，这样在没经 Bob 同意的情况下便授权了这次事务。
CSRF 是一种依赖 web 浏览器的、被混淆过的代理人攻击（deputy attack）。在上面银行示例中的代理人是 Bob 的 web 浏览器，它被混淆后误将 Bob 的授权直接交给了 Alice 使用。
下面是 CSRF 的常见特性：
依靠用户标识危害网站
利用网站对用户标识的信任
欺骗用户的浏览器发送 HTTP 请求给目标站点
另外可以通过 IMG 标签会触发一个 GET 请求，可以利用它来实现 CSRF 攻击。
风险提示编辑
风险在于那些通过基于受信任的输入 form 和对特定行为无需授权的已认证的用户来执行某些行为的 web 应用。已经通过被保存在用户浏览器中的 cookie 进行认证的用户将在完全无知的情况下发送 HTTP 请求到那个信任他的站点，进而进行用户不愿做的行为。
使用图片的 CSRF 攻击常常出现在网络论坛中，因为那里允许用户发布图片而不能使用 JavaScript。
相关威胁编辑
贴图只是 GET 的方式，很多时候我们需要伪造 POST 的请求。一个办法是利用跨站，当然目标站点可能不存在跨站，这个时候我们可以从第三方网站发动攻击。
比如我要攻击一个存在问题的 blog，那就先去目标 blog 留言，留下一个网址，诱其主人点击过来（这个就要看你的忽悠本事咯:p），然后构造个 HTML 表单提交些数据过去。
多窗口浏览器就帮了一点忙。
多窗口浏览器（firefox、遨游、MyIE……）便捷的同时也带来了一些问题，因为多窗口浏览器新开的窗口是具有当前所有会话的。即我用 IE 登陆了我的 Blog，然后我想看新闻了，又运行一个 IE 进程，这个时候两个 IE 窗口的会话是彼此独立的，从看新闻的 IE 发送请求到 Blog 不会有我登录的 cookie；但是多窗口浏览器永远都只有一个进程，各窗口的会话是通用的，即看新闻的窗口发请求到 Blog 是会带上我在 blog 登录的 cookie。
想一想，当我们用鼠标在 Blog/BBS/WebMail 点击别人留下的链接的时候，说不定一场精心准备的 CSRF 攻击正等着我们。
防范措施编辑
对于 web 站点，将持久化的授权方法（例如 cookie 或者 HTTP 授权）切换为瞬时的授权方法（在每个 form 中提供隐藏 field），这将帮助网站防止这些攻击。一种类似的方式是在 form 中包含秘密信息、用户指定的代号作为 cookie 之外的验证。
另一个可选的方法是“双提交”cookie。此方法只工作于 Ajax 请求，但它能够作为无需改变大量 form 的全局修正方法。如果某个授权的 cookie 在 form post 之前正被 JavaScript 代码读取，那么限制跨域规则将被应用。如果服务器需要在 Post 请求体或者 URL 中包含授权 cookie 的请求，那么这个请求必须来自于受信任的域，因为其它域是不能从信任域读取 cookie 的。
与通常的信任想法相反，使用 Post 代替 Get 方法并不能提供卓有成效的保护。因为 JavaScript 能使用伪造的 POST 请求。尽管如此，那些导致对安全产生“副作用”的请求应该总使用 Post 方式发送。Post 方式不会在 web 服务器和代理服务器日志中留下数据尾巴，然而 Get 方式却会留下数据尾巴。
尽管 CSRF 是 web 应用的基本问题，而不是用户的问题，但用户能够在缺乏安全设计的网站上保护他们的帐户：通过在浏览其它站点前登出站点或者在浏览器会话结束后清理浏览器的 cookie。
影响因素编辑
CSRF 攻击依赖下面的假定：
攻击者了解受害者所在的站点
攻击者的目标站点具有持久化授权 cookie 或者受害者具有当前会话 cookie
目标站点没有对用户在网站行为的第二授权
