# 文档流（display）

> 这是最基本的布局方式，就是按照文档的顺序一个一个显示出来，块元素独占一行，行内元素共享一行

## 文档

**`display`**

- `none` 此元素不会被显示。
- `block` 此元素将显示为块级元素，此元素前后会带有换行符。
- `inline` 默认。此元素会被显示为内联元素，元素前后没有换行符。
- `inline-block` 行内块元素。（CSS2.1 新增的值）
- `list-item` 此元素会作为列表显示。
- `run-in` 此元素会根据上下文作为块级元素或内联元素显示。
- ~~`compact` CSS 中有值 compact，不过由于缺乏广泛支持，已经从 CSS2.1 中删除。~~
- ~~`marker` CSS 中有值 marker，不过由于缺乏广泛支持，已经从 CSS2.1 中删除。~~
- `table` 此元素会作为块级表格来显示（类似 \<table>），表格前后带有换行符。
- `inline-table` 此元素会作为内联表格来显示（类似 \<table>），表格前后没有换行符。
- `table-row-group` 此元素会作为一个或多个行的分组来显示（类似 \<tbody>）。
- `table-header-group` 此元素会作为一个或多个行的分组来显示（类似 \<thead>）。
- `table-footer-group` 此元素会作为一个或多个行的分组来显示（类似 \<tfoot>）。
- `table-row` 此元素会作为一个表格行显示（类似 \<tr>）。
- `table-column-group` 此元素会作为一个或多个列的分组来显示（类似 \<colgroup>）。
- `table-column` 此元素会作为一个单元格列显示（类似 \<col>）
- `table-cell` 此元素会作为一个表格单元格显示（类似 \<td> 和 <th>）
- `table-caption` 此元素会作为一个表格标题显示（类似 \<caption>）
- `inherit` 规定应该从父元素继承 display 属性的值。
