---
created: 2022-07-27T15:30:18 (UTC +08:00)
tags: []
source: https://vant-contrib.gitee.io/vant/#/zh-CN/button
author: 
---

# Badge 徽标 - Vant 3

> ## Excerpt
> Mobile UI Components built on Vue

---
### 引入

通过以下方式来全局注册组件，更多注册方式请参考[组件注册](https://vant-contrib.gitee.io/vant/#/zh-CN/advanced-usage#zu-jian-zhu-ce)。

```
import { createApp } from 'vue';
import { Badge } from 'vant';

const app = createApp();
app.use(Badge);
```

## 代码演示

### 基础用法

设置 `content` 属性后，Badge 会在子元素的右上角显示对应的徽标，也可以通过 `dot` 来显示小红点。

```
<van-badge :content="5">
  <div class="child" />
</van-badge>
<van-badge :content="10">
  <div class="child" />
</van-badge>
<van-badge content="Hot">
  <div class="child" />
</van-badge>
<van-badge dot>
  <div class="child" />
</van-badge>

<style>
  .child {
    width: 40px;
    height: 40px;
    background: #f2f3f5;
    border-radius: 4px;
  }
</style>
```

### 最大值

设置 `max` 属性后，当 `content` 的数值超过最大值时，会自动显示为 `{max}+`。

```
<van-badge :content="20" max="9">
  <div class="child" />
</van-badge>
<van-badge :content="50" max="20">
  <div class="child" />
</van-badge>
<van-badge :content="200" max="99">
  <div class="child" />
</van-badge>
```

### 自定义颜色

通过 `color` 属性来设置徽标的颜色。

```
<van-badge :content="5" color="#1989fa">
  <div class="child" />
</van-badge>
<van-badge :content="10" color="#1989fa">
  <div class="child" />
</van-badge>
<van-badge dot color="#1989fa">
  <div class="child" />
</van-badge>
```

### 自定义徽标内容

通过 `content` 插槽可以自定义徽标的内容，比如插入一个图标。

```
<van-badge>
  <div class="child" />
  <template #content>
    <van-icon name="success" class="badge-icon" />
  </template>
</van-badge>
<van-badge>
  <div class="child" />
  <template #content>
    <van-icon name="cross" class="badge-icon" />
  </template>
</van-badge>
<van-badge>
  <div class="child" />
  <template #content>
    <van-icon name="down" class="badge-icon" />
  </template>
</van-badge>
```

```
.badge-icon {
  display: block;
  font-size: 10px;
  line-height: 16px;
}
```

### 自定义徽标位置

通过 `position` 属性来设置徽标的位置。

```
<van-badge :content="10" position="top-left">
  <div class="child" />
</van-badge>
<van-badge :content="10" position="bottom-left">
  <div class="child" />
</van-badge>
<van-badge :content="10" position="bottom-right">
  <div class="child" />
</van-badge>
```

### 独立展示

当 Badge 没有子元素时，会作为一个独立的元素进行展示。

```
<van-badge :content="20" />

<van-badge :content="200" max="99" />
```

## API

### Props

| 参数 | 说明 | 类型 | 默认值 |
| --- | --- | --- | --- |
| content | 徽标内容 | _number | string_ | \- |
| color | 徽标背景颜色 | _string_ | `#ee0a24` |
| dot | 是否展示为小红点 | _boolean_ | `false` |
| max | 最大值，超过最大值会显示 `{max}+`，仅当 content 为数字时有效 | _number | string_ | \- |
| offset `v3.0.5` | 设置徽标的偏移量，数组的两项分别对应水平和垂直方向的偏移量，默认单位为 `px` | _\[number | string, number | string\]_ | \- |
| show-zero `v3.0.10` | 当 content 为数字 0 时，是否展示徽标 | _boolean_ | `true` |
| position `v3.2.7` | 徽标位置，可选值为 `top-left` `bottom-left` `bottom-right` | _string_ | `top-right` |

### Slots

| 名称 | 说明 |
| --- | --- |
| default | 徽标包裹的子元素 |
| content | 自定义徽标内容 |

### 类型定义

组件导出以下类型定义：

```
import type { BadgeProps, BadgePosition } from 'vant';
```

## 主题定制

### 样式变量

组件提供了下列 CSS 变量，可用于自定义样式，使用方法请参考 [ConfigProvider 组件](https://vant-contrib.gitee.io/vant/#/zh-CN/config-provider)。

| 名称 | 默认值 | 描述 |
| --- | --- | --- |
| \--van-badge-size | _16px_ | \- |
| \--van-badge-color | _var(--van-white)_ | \- |
| \--van-badge-padding | _0 3px_ | \- |
| \--van-badge-font-size | _var(--van-font-size-sm)_ | \- |
| \--van-badge-font-weight | _var(--van-font-weight-bold)_ | \- |
| \--van-badge-border-width | _var(--van-border-width-base)_ | \- |
| \--van-badge-background-color | _var(--van-danger-color)_ | \- |
| \--van-badge-dot-color | _var(--van-danger-color)_ | \- |
| \--van-badge-dot-size | _8px_ | \- |
| \--van-badge-font-family | _\-apple-system-font, Helvetica Neue, Arial, sans-serif_ | \- |

## 常见问题

### 设置 show-zero 属性为 false 不生效？

注意 `show-zero` 属性仅对数字类型的 `0` 有效，对字符串类型的 `'0'` 无效。

```
<!-- 正确写法，不显示 0 -->
<van-badge :content="0" :show-zero="false" />

<!-- 错误写法，显示 0 -->
<van-badge content="0" :show-zero="false" />
```
