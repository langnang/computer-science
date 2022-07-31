# Array

Array 对象是用于构造数组的全局对象，数组是类似于列表的高阶对象。

## 构造器

`Array()`

> 创建一个新的 `Array` 对象

## 静态属性

`get Array[@@species]`

> 返回 Array 的构造函数

## 静态方法

- `Array.isArray(obj)`
  > 用来判断某个变量是否是一个数组对象
  - `obj`: 需要检测的值。
  - 返回值: 如果值是 Array，则为 true；否则为 false。

### ES6 新增静态方法

- `Array.from(arrayLike[, mapFn[, thisArg]])`
  > 从类数组对象或者可迭代对象中创建一个新的数组实例
  - `arrayLike`: 想要转换成数组的伪数组对象或可迭代对象。
  - `mapFn`: 可选，如果指定了该参数，新数组中的每个元素会执行该回调函数。
  - `thisArg`: 可选，可选参数，执行回调函数 mapFn 时 this 对象。
  - 返回值: 一个新的数组实例。
- `Array.of(element0[, element1[, ...[, elementN]]])`
  > 根据一组参数来创建新的数组实例，支持任意的参数数量和类型
  - `elementN`: 任意个参数，将按顺序成为返回数组中的元素。
  - 返回值: 新的 Array 实例。

## 实例属性

- `Array.prototype.length`
  > 数组中的元素个数
- `Array.prototype[@@unscopables]`
  > 包含了所有 ES2015 (ES6) 中新定义的、且并未被更早的 ECMAScript 标准收纳的属性名。这些属性被排除在由 with 语句绑定的环境中

## 实例方法

- `Array.prototype.concat()`
  > 用于合并两个或多个数组。此方法不会更改现有数组，而是返回一个新数组
- `Array.prototype.every()`
  > 测试一个数组内的所有元素是否都能通过某个指定函数的测试。它返回一个布尔值
- `Array.prototype.filter()`
  > 创建一个新数组，其包含通过所提供函数实现的测试的所有元素
- `Array.prototype.forEach()`
  > 对数组的每个元素执行一次给定的函数
- `Array.prototype.indexOf()`
  > 返回在数组中可以找到一个给定元素的第一个索引，如果不存在，则返回 -1
- `Array.prototype.join()`
  > 将一个数组的所有元素连接成一个字符串并返回这个字符串
- `Array.prototype.lastIndexOf()`
  > 返回指定元素在数组中的最后一个的索引，如果不存在则返回 -1
- `Array.prototype.map()`
  > 返回一个新数组，其结果是该数组中的每个元素是调用一次提供的函数后的返回值
- `Array.prototype.pop()`
  > 从数组中删除最后一个元素，并返回该元素的值
- `Array.prototype.push()`
  > 将一个或多个元素添加到数组的末尾，并返回该数组的新长度
- `Array.prototype.reduce()`
  > 对数组中的每个元素执行一个由您提供的 reducer 函数（升序执行），将其结果汇总为单个返回值
- `Array.prototype.reduceRight()`
  > 接受一个函数作为累加器（accumulator）和数组的每个值（从右到左）将其减少为单个值
- `Array.prototype.reverse()`
  > 将数组中元素的位置颠倒，并返回该数组。该方法会改变原数组
- `Array.prototype.shift()`
  > 从数组中删除第一个元素，并返回该元素的值
- `Array.prototype.slice()`
  > 提取源数组的一部分并返回一个新数组
- `Array.prototype.some()`
  > 测试数组中是不是至少有一个元素通过了被提供的函数测试
- `Array.prototype.sort()`
  > 对数组元素进行原地排序并返回此数组
- `Array.prototype.splice()`
  > 通过删除或替换现有元素或者原地添加新的元素来修改数组，并以数组形式返回被修改的内容
- `Array.prototype.toLocaleString()`
  > 返回一个字符串表示数组中的元素。数组中的元素将使用各自的 `Object.prototype.toLocaleString()` 方法转成字符串
- `Array.prototype.toString()`
  > 返回一个字符串表示指定的数组及其元素。数组中的元素将使用各自的 `Object.prototype.toString()` 方法转成字符串
- `Array.prototype.unshift()`
  > 将一个或多个元素添加到数组的头部，并返回该数组的新长度
- `Array.prototype[@@iterator]()`
  > 返回一个新的 Array Iterator 对象，该对象包含数组每个索引的值

### ES6 新增实例方法

- `Array.prototype.at()`
  > 返回处于 index 位置的元素
- `Array.prototype.copyWithin()`
  > 浅复制数组的一部分到同一数组中的另一个位置，并返回它，不会改变原数组的长度
- `Array.prototype.entries()`
  > 返回一个新的 Array Iterator 对象，该对象包含数组中每个索引的键/值对
- `Array.prototype.find()`
  > 返回数组中满足提供的测试函数的第一个元素的值。否则返回 undefined
- `Array.prototype.findIndex()`
  > 返回数组中满足提供的测试函数的第一个元素的索引。若没有找到对应元素则返回 -1
- `Array.prototype.fill()`
  > 用一个固定值填充一个数组中从起始索引到终止索引内的全部元素
- `Array.prototype.flat()`
  > 按照一个可指定的深度递归遍历数组，并将所有元素与遍历到的子数组中的元素合并为一个新数组返回
- `Array.prototype.flatMap()`
  > 使用映射函数映射每个元素，然后将结果压缩成一个新数组
- `Array.prototype.keys()`
  > 返回一个包含数组中每个索引键的 Array Iterator 对象
- `Array.prototype.includes()`
  > 判断一个数组是否包含一个指定的值，如果包含则返回 true，否则返回 false
- `Array.prototype.values()`
  > 返回一个新的 Array Iterator 对象，该对象包含数组每个索引的值

## 总结

### Array 对象属性

| 属性        | 描述                            |
| ----------- | ------------------------------- |
| constructor | 返回创建 Array 对象原型的函数。 |
| length      | 设置或返回数组中元素的数量。    |
| prototype   | 允许您向数组添加属性和方法。    |

### Array 对象方法

| 方法          | 描述                                               |
| ------------- | -------------------------------------------------- |
| concat()      | 连接两个或多个数组，并返回已连接数组的副本。       |
| copyWithin()  | 将数组中的数组元素复制到指定位置或从指定位置复制。 |
| entries()     | 返回键/值对数组迭代对象。                          |
| every()       | 检查数组中的每个元素是否通过测试。                 |
| fill()        | 用静态值填充数组中的元素。                         |
| filter()      | 使用数组中通过测试的每个元素创建新数组。           |
| find()        | 返回数组中第一个通过测试的元素的值。               |
| findIndex()   | 返回数组中通过测试的第一个元素的索引。             |
| forEach()     | 为每个数组元素调用函数。                           |
| from()        | 从对象创建数组。                                   |
| includes()    | 检查数组是否包含指定的元素。                       |
| indexOf()     | 在数组中搜索元素并返回其位置。                     |
| isArray()     | 检查对象是否为数组。                               |
| join()        | 将数组的所有元素连接成一个字符串。                 |
| keys()        | 返回 Array Iteration 对象，包含原始数组的键.       |
| lastIndexOf() | 在数组中搜索元素，从末尾开始，并返回其位置。       |
| map()         | 使用为每个数组元素调用函数的结果创建新数组。       |
| pop()         | 删除数组的最后一个元素，并返回该元素。             |
| push()        | 将新元素添加到数组的末尾，并返回新的长度。         |
| reduce()      | 将数组的值减为单个值（从左到右）。                 |
| reduceRight() | 将数组的值减为单个值（从右到左）。                 |
| reverse()     | 反转数组中元素的顺序。                             |
| shift()       | 删除数组的第一个元素，并返回该元素。               |
| slice()       | 选择数组的一部分，并返回新数组。                   |
| some()        | 检查数组中的任何元素是否通过测试。                 |
| sort()        | 对数组的元素进行排序。                             |
| splice()      | 从数组中添加/删除元素。                            |
| toString()    | 将数组转换为字符串，并返回结果。                   |
| unshift()     | 将新元素添加到数组的开头，并返回新的长度。         |
| valueOf()     | 返回数组的原始值。                                 |

## 参考文献

- https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array
- https://www.w3school.com.cn/jsref/jsref_obj_array.asp
- https://es6.ruanyifeng.com/#docs/array
