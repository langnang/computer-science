# XSS 攻击

XSS 攻击全称跨站脚本攻击，是为不和层叠样式表(Cascading Style Sheets, CSS)的缩写混淆，故将跨站脚本攻击缩写为 XSS，XSS 是一种在 web 应用中的计算机安全漏洞，它允许恶意 web 用户将代码植入到提供给其它用户使用的页面中。

1. [背景知识](#背景知识)
    1. [1.1 什么是 XSS 攻击](#11-什么是-xss-攻击)
    2. [1.2 XSS 漏洞的分类](#12-xss-漏洞的分类)
2. [传统防御技术](#传统防御技术)
    1. [2.1.1 基于特征的防御](#211-基于特征的防御)
3. [3 综论](#3-综论)

## 背景知识

### 1.1 什么是 XSS 攻击

XSS 是一种经常出现在 web 应用中的计算机安全漏洞，它允许恶意 web 用户将代码植入到提供给其它用户使用的页面中。比如这些代码包括 HTML 代码和客户端脚本。攻击者利用 XSS 漏洞旁路掉访问控制——例如同源策略(same origin policy)。这种类型的漏洞由于被骇客用来编写危害性更大的网络钓鱼(Phishing)攻击而变得广为人知。对于跨站脚本攻击，骇客界共识是：跨站脚本攻击是新型的“缓冲区溢出攻击“，而 JavaScript 是新型的“ShellCode”。
数据来源：2007 OWASP Top 10 的 MITRE 数据
注：OWASP 是世界上最知名的 Web 安全与数据库安全研究组织
在 2007 年 OWASP 所统计的所有安全威胁中，跨站脚本攻击占到了 22%，高居所有 Web 威胁之首。
XSS 攻击的危害包括
1、盗取各类用户帐号，如机器登录帐号、用户网银帐号、各类管理员帐号
2、控制企业数据，包括读取、篡改、添加、删除企业敏感数据的能力
3、盗窃企业重要的具有商业价值的资料
4、非法转账
5、强制发送电子邮件
6、网站挂马
7、控制受害者机器向其它网站发起攻击

### 1.2 XSS 漏洞的分类

XSS 漏洞按照攻击利用手法的不同，有以下三种类型：
类型 A，本地利用漏洞，这种漏洞存在于页面中客户端脚本自身。其攻击过程如下所示：
Alice 给 Bob 发送一个恶意构造了 Web 的 URL。
Bob 点击并查看了这个 URL。
恶意页面中的 JavaScript 打开一个具有漏洞的 HTML 页面并将其安装在 Bob 电脑上。
具有漏洞的 HTML 页面包含了在 Bob 电脑本地域执行的 JavaScript。
Alice 的恶意脚本可以在 Bob 的电脑上执行 Bob 所持有的权限下的命令。
类型 B，反射式漏洞，这种漏洞和类型 A 有些类似，不同的是 Web 客户端使用 Server 端脚本生成页面为用户提供数据时，如果未经验证的用户数据被包含在页面中而未经 HTML 实体编码，客户端代码便能够注入到动态页面中。其攻击过程如下：
Alice 经常浏览某个网站，此网站为 Bob 所拥有。Bob 的站点运行 Alice 使用用户名/密码进行登录，并存储敏感信息(比如银行帐户信息)。
Charly 发现 Bob 的站点包含反射性的 XSS 漏洞。
Charly 编写一个利用漏洞的 URL，并将其冒充为来自 Bob 的邮件发送给 Alice。
Alice 在登录到 Bob 的站点后，浏览 Charly 提供的 URL。
嵌入到 URL 中的恶意脚本在 Alice 的浏览器中执行，就像它直接来自 Bob 的服务器一样。此脚本盗窃敏感信息(授权、信用卡、帐号信息等)然后在 Alice 完全不知情的情况下将这些信息发送到 Charly 的 Web 站点。
类型 C，存储式漏洞，该类型是应用最为广泛而且有可能影响到 Web 服务器自身安全的漏洞，骇客将攻击脚本上传到 Web 服务器上，使得所有访问该页面的用户都面临信息泄漏的可能，其中也包括了 Web 服务器的管理员。其攻击过程如下：
Bob 拥有一个 Web 站点，该站点允许用户发布信息/浏览已发布的信息。
Charly 注意到 Bob 的站点具有类型 C 的 XSS 漏洞。
Charly 发布一个热点信息，吸引其它用户纷纷阅读。
Bob 或者是任何的其他人如 Alice 浏览该信息，其会话 cookies 或者其它信息将被 Charly 盗走。
类型 A 直接威胁用户个体，而类型 B 和类型 C 所威胁的对象都是企业级 Web 应用。

## 传统防御技术

### 2.1.1 基于特征的防御

XSS 漏洞和著名的 SQL 注入漏洞一样，都是利用了 Web 页面的编写不完善，所以每一个漏洞所利用和针对的弱点都不尽相同。这就给 XSS 漏洞防御带来了困难：不可能以单一特征来概括所有 XSS 攻击。
传统 XSS 防御多采用特征匹配方式，在所有提交的信息中都进行匹配检查。对于这种类型的 XSS 攻击，采用的模式匹配方法一般会需要对“javascript”这个关键字进行检索，一旦发现提交信息中包含“javascript”，就认定为 XSS 攻击。这种检测方法的缺陷显而易见：骇客可以通过插入字符或完全编码的方式躲避检测：
躲避方法 1)在 javascript 中加入多个 tab 键，得到

```js
< IMG SRC="jav ascript:alert('XSS');" >;
```

躲避方法 2) 在 javascript 中加入(空格)字符，得到

```js
< IMG SRC="javascri pt:alert('XSS');" >;
```

躲避方法 3) 在 javascript 中加入(回车)字符，得到

```js
< IMG SRC="jav
ascript:alert('XSS');" >;
```

躲避方法 4)在 javascript 中的每个字符间加入回车换行符，得到

```js
< IMG SRC="javascrip\r
\nt:alert('XSS');" >
```

躲避方法 5)对"javascript:alert('XSS')"采用完全编码，得到

```js
< IMGSRC=javascrip?74:alert('XSS') >
```

上述方法都可以很容易的躲避基于特征的检测。而除了会有大量的漏报外，基于特征的
还存在大量的误报可能：在上面的例子中，对上述某网站这样一个地址，由于包含了关键字“javascript”，也将会触发报警。
###2.1.2 基于代码修改的防御
和 SQL 注入防御一样，XSS 攻击也是利用了 Web 页面的编写疏忽，所以还有一种方法就是从 Web 应用开发的角度来避免：
步骤 1、对所有用户提交内容进行可靠的输入验证，包括对 URL、查询关键字、HTTP 头、POST 数据等，仅接受指定长度范围内、采用适当格式、采用所预期的字符的内容提交，对其他的一律过滤。
步骤 2、实现 Session 标记(session tokens)、CAPTCHA 系统或者 HTTP 引用头检查，以防功能被第三方网站所执行。
步骤 3、确认接收的的内容被妥善的规范化，仅包含最小的、安全的 Tag(没有 javascript)，去掉任何对远程内容的引用(尤其是样式表和 javascript)，使用 HTTP only 的 cookie。
当然，如上操作将会降低 Web 业务系统的可用性，用户仅能输入少量的制定字符，人与系统间的交互被降到极致，仅适用于信息发布型站点。并且考虑到很少有 Web 编码人员受过正规的安全培训，很难做到完全避免页面中的 XSS 漏洞。

## 3 综论

XSS 攻击作为 Web 业务的最大威胁之一，不仅危害 Web 业务本身，对访问 Web 业务的用户也会带来直接的影响，如何防范和阻止 XSS 攻击，保障 Web 站点的业务安全，是定位于业务威胁防御的入侵防御产品的本职工作。
