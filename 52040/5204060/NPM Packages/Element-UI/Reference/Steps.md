## [¶](https://element.eleme.cn/#/zh-CN/component/steps#steps-bu-zou-tiao) Steps 步骤条

引导用户按照流程完成任务的分步导航条，可根据实际应用场景设定步骤，步骤不得少于 2 步。

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#ji-chu-yong-fa) 基础用法

简单的步骤条。

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#han-zhuang-tai-bu-zou-tiao) 含状态步骤条

每一步骤显示出该步骤的状态。

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#you-miao-shu-de-bu-zou-tiao) 有描述的步骤条

每个步骤有其对应的步骤状态描述。

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#ju-zhong-de-bu-zou-tiao) 居中的步骤条

标题和描述都将居中。

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#dai-tu-biao-de-bu-zou-tiao) 带图标的步骤条

步骤条内可以启用各种自定义的图标。

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#shu-shi-bu-zou-tiao) 竖式步骤条

竖直方向的步骤条。

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#jian-ji-feng-ge-de-bu-zou-tiao) 简洁风格的步骤条

设置 `simple` 可应用简洁风格，该条件下 `align-center` / `description` / `direction` / `space` 都将失效。

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#steps-attributes) Steps Attributes

| 参数 | 说明 | 类型 | 可选值 | 默认值 |
| --- | --- | --- | --- | --- |
| space | 每个 step 的间距，不填写将自适应间距。支持百分比。 | number / string | — | — |
| direction | 显示方向 | string | vertical/horizontal | horizontal |
| active | 设置当前激活步骤 | number | — | 0 |
| process-status | 设置当前步骤的状态 | string | wait / process / finish / error / success | process |
| finish-status | 设置结束步骤的状态 | string | wait / process / finish / error / success | finish |
| align-center | 进行居中对齐 | boolean | \- | false |
| simple | 是否应用简洁风格 | boolean | \- | false |

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#step-attributes) Step Attributes

| 参数 | 说明 | 类型 | 可选值 | 默认值 |
| --- | --- | --- | --- | --- |
| title | 标题 | string | — | — |
| description | 描述性文字 | string | — | — |
| icon | 图标 | 传入 icon 的 class 全名来自定义 icon，也支持 slot 方式写入 | string | — |
| status | 设置当前步骤的状态，不设置则根据 steps 确定状态 | wait / process / finish / error / success | \- |  |

### [¶](https://element.eleme.cn/#/zh-CN/component/steps#step-slot) Step Slot

| name | 说明 |
| --- | --- |
| icon | 自定义图标 |
| title | 自定义标题 |
| description | 自定义描述性文字 |