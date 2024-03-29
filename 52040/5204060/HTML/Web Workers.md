# HTML Web Workers

> Web worker 是运行在后台的 JavaScript，不会影响页面的性能。

- [什么是 Web Worker？](#%e4%bb%80%e4%b9%88%e6%98%af-web-worker)
- [HTML Web Workers 实例](#html-web-workers-%e5%ae%9e%e4%be%8b)
- [检测 Web Worker 支持](#%e6%a3%80%e6%b5%8b-web-worker-%e6%94%af%e6%8c%81)
- [创建 Web Worker 文件](#%e5%88%9b%e5%bb%ba-web-worker-%e6%96%87%e4%bb%b6)
- [创建 Web Worker 对象](#%e5%88%9b%e5%bb%ba-web-worker-%e5%af%b9%e8%b1%a1)
- [终止 Web Worker](#%e7%bb%88%e6%ad%a2-web-worker)
- [复用 Web Worker](#%e5%a4%8d%e7%94%a8-web-worker)
- [完整的 Web Worker 实例代码](#%e5%ae%8c%e6%95%b4%e7%9a%84-web-worker-%e5%ae%9e%e4%be%8b%e4%bb%a3%e7%a0%81)
- [Web Worker 和 DOM](#web-worker-%e5%92%8c-dom)

## 什么是 Web Worker？

当在 HTML 页面中执行脚本时，页面是不可响应的，直到脚本已完成。

Web worker 是运行在后台的 JavaScript，独立于其他脚本，不会影响页面的性能。您可以继续做任何愿意做的事情：点击、选取内容等等，而此时 web worker 运行在后台。

##浏览器支持
表格中的数字指示完全支持 Web Worker 的首个浏览器版本。

API
Web Worker 4.0 10.0 3.5 4.0 11.5

## HTML Web Workers 实例

下面的例子创建了一个简单的 web worker，在后台计数：

```html
<!DOCTYPE html>
<html>
  <body>
    <p>计数: <output id="result"></output></p>
    <button onclick="startWorker()">开始 Worker</button>
    <button onclick="stopWorker()">停止 Worker</button>
    <br /><br />

    <script>
      var w;

      function startWorker() {
        if (typeof Worker !== "undefined") {
          if (typeof w == "undefined") {
            w = new Worker("/example/html5/demo_workers.js");
          }
          w.onmessage = function(event) {
            document.getElementById("result").innerHTML = event.data;
          };
        } else {
          document.getElementById("result").innerHTML =
            "Sorry, your browser does not support Web Workers...";
        }
      }

      function stopWorker() {
        w.terminate();
      }
    </script>
  </body>
</html>
```

## 检测 Web Worker 支持

在创建 web worker 之前，请检测用户浏览器是否支持它：

```js
if (typeof Worker !== "undefined") {
  // 是的！支持 Web worker！
  // 一些代码.....
} else {
  // 抱歉！不支持 Web Worker！
}
```

## 创建 Web Worker 文件

现在，让我们在一个外部 JavaScript 文件中创建我们的 web worker。

在此处，我们创建了计数脚本。该脚本存储于 "demo_workers.js" 文件中：

```js
var i = 0;

function timedCount() {
  i = i + 1;
  postMessage(i);
  setTimeout("timedCount()", 500);
}

timedCount();
```

以上代码中重要的部分是 postMessage() 方法 - 它用于向 HTML 页面传回一段消息。

注释: web worker 通常不用于如此简单的脚本，而是用于更耗费 CPU 资源的任务。

## 创建 Web Worker 对象

现在我们已经有了 web worker 文件，我们需要从 HTML 页面调用它。

下面的代码行检测是否存在 worker，如果不存在，- 它会创建一个新的 web worker 对象，然后运行 "demo_workers.js" 中的代码：

```js
if (typeof w == "undefined") {
  w = new Worker("demo_workers.js");
}
```

然后我们就可以从 web worker 发生和接收消息了。

向 web worker 添加一个 "onmessage" 事件监听器：

```js
w.onmessage = function(event) {
  document.getElementById("result").innerHTML = event.data;
};
```

当 web worker 传送消息时，会执行事件监听器中的代码。来自 web worker 的数据会存储于 event.data 中。

## 终止 Web Worker

当创建 web worker 后，它会继续监听消息（即使在外部脚本完成后）直到其被终止为止。

如需终止 web worker，并释放浏览器/计算机资源，请使用 terminate() 方法：

```js
w.terminate();
```

## 复用 Web Worker

如果您把 worker 变量设置为 undefined，在其被终止后，可以重复使用该代码：

```js
w = undefined;
```

## 完整的 Web Worker 实例代码

我们已经看到了 .js 文件中的 Worker 代码。下面是 HTML 页面的代码：

实例

```html
<!DOCTYPE html>
<html>
  <body>
    <p>Count numbers: <output id="result"></output></p>
    <button onclick="startWorker()">Start Worker</button>
    <button onclick="stopWorker()">Stop Worker</button>
    <br /><br />

    <script>
      var w;

      function startWorker() {
        if (typeof Worker !== "undefined") {
          if (typeof w == "undefined") {
            w = new Worker("demo_workers.js");
          }
          w.onmessage = function(event) {
            document.getElementById("result").innerHTML = event.data;
          };
        } else {
          document.getElementById("result").innerHTML =
            "Sorry! No Web Worker support.";
        }
      }

      function stopWorker() {
        w.terminate();
        w = undefined;
      }
    </script>
  </body>
</html>
```

## Web Worker 和 DOM

由于 web worker 位于外部文件中，它们无法访问下例 JavaScript 对象：

- window 对象
- document 对象
- parent 对象
