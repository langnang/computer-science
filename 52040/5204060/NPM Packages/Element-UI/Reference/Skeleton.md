## [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#skeleton-gu-jia-ping) Skeleton 骨架屏

在需要等待加载内容的位置设置一个骨架屏，某些场景下比 Loading 的视觉效果更好。

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#ji-chu-yong-fa) 基础用法

基础的骨架效果。

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#geng-duo-can-shu) 更多参数

可以配置骨架屏段落数量，以便更接近真实渲染效果。首行会被渲染一个长度 33% 的段首。

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#dong-hua-xiao-guo) 动画效果

显示动画效果。

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#zi-ding-yi-yang-shi) 自定义样式

Element 提供的排版模式有时候并不满足要求，当您想要用自己定义的模板时，可以通过一个具名 Slot 来自己设定模板。

我们提供了不同的模板单元可供使用，具体可选值请看 API 详细描述。 建议在描述模板的时候，尽量靠近真实的 DOM 结构，这样可以避免 DOM 高度差距引起的抖动。

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#loading-zhuang-tai) Loading 状态

当 Loading 结束之后，我们往往需要显示真实的 UI，可以通过 `loading` 的值来控制是否显示真实的 DOM。然后通过 具名 Slot 来设置当 loading 结束之后需要展示的 UI。

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#xuan-ran-duo-tiao-shu-ju) 渲染多条数据

大多时候, 骨架屏都被用来渲染列表, 当我们需要在从服务器获取数据的时候来渲染一个假的 UI。利用 `count` 这个属性就能控制渲染多少条假的数据在页面上

请注意, 请尽可能的将 `count` 的大小保持在最小状态, 即使是假的 UI, DOM 元素多了之后, 照样会引起性能问题, 并且在骨架屏销毁时所消耗的时间也会更长(相对的)。

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#fang-zhi-xuan-ran-dou-dong) 防止渲染抖动

有的时候，API 的请求回来的特别快，往往骨架占位刚刚被渲染，真实的数据就已经回来了，用户的界面会突然一闪，此时为了避免这种情况，就需要通过 `throttle` 属性来避免这个问题。

切换 Loading

![](https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png)

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#skeleton-attributes) Skeleton Attributes

| 参数 | 说明 | 类型 | 可选值 | 默认值 |
| --- | --- | --- | --- | --- |
| animated | 是否使用动画 | boolean | true / false | false |
| count | 渲染多少个 template, 建议使用尽可能小的数字 | number | integer | 1 |
| loading | 是否显示 skeleton 骨架屏 | boolean | true / false | true |
| rows | 骨架屏段落数量 | number | 正整数 | 4 |
| throttle | 延迟占位 DOM 渲染的时间, 单位是毫秒 | number | 正整数 | 0 |

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#skeleton-item-attributes) Skeleton Item Attributes

| 参数 | 说明 | 类型 | 可选值 | 默认值 |
| --- | --- | --- | --- | --- |
| variant | 当前显示的占位元素的样式 | Enum(string) | p / text / h1 / h3 / text / caption / button / image / circle / rect | text |

### [¶](https://element.eleme.cn/#/zh-CN/component/skeleton#skeleton-slots) Skeleton Slots

| name | description |
| --- | --- |
| default | 用来展示真实 UI |
| template | 用来展示自定义占位符 |