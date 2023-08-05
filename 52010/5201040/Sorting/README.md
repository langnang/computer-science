# 排序算法



| 排序算法                  | 平均时间复杂度                                               | 最好时间复杂度                                               | 最坏时间复杂度                                               | 平均空间复杂度                                      | 排序方式  | 稳定性 |
| ------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | --------------------------------------------------- | --------- | ------ |
| 冒泡排序（BubbleSort）    | ![](<https://latex.codecogs.com/png.latex?O(n^{2})>)         | ![](<https://latex.codecogs.com/png.latex?O(n)>)             | ![](<https://latex.codecogs.com/png.latex?O(n^{2})>)         | ![](<https://latex.codecogs.com/png.latex?O(1)>)    | In-place  | 稳定   |
| 选择排序（SelectionSort） | ![](<https://latex.codecogs.com/png.latex?O(n^{2})>)         | ![](<https://latex.codecogs.com/png.latex?O(n^{2})>)         | ![](<https://latex.codecogs.com/png.latex?O(n^{2})>)         | ![](<https://latex.codecogs.com/png.latex?O(1)>)    | In-place  | 不稳定 |
| 插入排序（InsertionSort） | ![](<https://latex.codecogs.com/png.latex?O(n^{2})>)         | ![](<https://latex.codecogs.com/png.latex?O(n)>)             | ![](<https://latex.codecogs.com/png.latex?O(n^{2})>)         | ![](<https://latex.codecogs.com/png.latex?O(1)>)    | In-place  | 稳定   |
| 希尔排序（ShellSort）     | ![](<https://latex.codecogs.com/png.latex?O(nlogn)>)         | ![](<https://latex.codecogs.com/png.latex?O(nlog^{2}n)>)     | ![](<https://latex.codecogs.com/png.latex?O(nlog^{2}n)>)     | ![](<https://latex.codecogs.com/png.latex?O(1)>)    | In-place  | 不稳定 |
| 归并排序（MergeSort）     | ![](<https://latex.codecogs.com/png.latex?O(nlogn)>)         | ![](<https://latex.codecogs.com/png.latex?O(nlogn)>)         | ![](<https://latex.codecogs.com/png.latex?O(nlogn)>)         | ![](<https://latex.codecogs.com/png.latex?O(n)>)    | Out-place | 稳定   |
| 快速排序（QuickSort）     | ![](<https://latex.codecogs.com/png.latex?O(nlogn)>)         | ![](<https://latex.codecogs.com/png.latex?O(nlogn)>)         | ![](<https://latex.codecogs.com/png.latex?O(n^{2})>)         | ![](<https://latex.codecogs.com/png.latex?O(logn)>) | In-place  | 不稳定 |
| 基数排序（RadixSort）     | ![](<https://latex.codecogs.com/png.latex?O(n&space;\times&space;k)>) | ![](<https://latex.codecogs.com/png.latex?O(n&space;\times&space;k)>) | ![](<https://latex.codecogs.com/png.latex?O(n&space;\times&space;k)>) | ![](<https://latex.codecogs.com/png.latex?O(n+k)>)  | Out-place | 稳定   |
| 堆排序（HeapSort）        | ![](<https://latex.codecogs.com/png.latex?O(nlogn)>)         | ![](<https://latex.codecogs.com/png.latex?O(nlogn)>)         | ![](<https://latex.codecogs.com/png.latex?O(nlogn)>)         | ![](<https://latex.codecogs.com/png.latex?O(1)>)    | In-place  | 不稳定 |
| 计数排序（CountingSort）  | ![](<https://latex.codecogs.com/png.latex?O(n+k)>)           | ![](<https://latex.codecogs.com/png.latex?O(n+k)>)           | ![](<https://latex.codecogs.com/png.latex?O(n+k)>)           | ![](<https://latex.codecogs.com/png.latex?O(k)>)    | Out-place | 稳定   |
| 桶排序（BucketSort）      | ![](<https://latex.codecogs.com/png.latex?O(n+k)>)           | ![](<https://latex.codecogs.com/png.latex?O(n+k)>)           | ![](<https://latex.codecogs.com/png.latex?O(n^{2})>)         | ![](<https://latex.codecogs.com/png.latex?O(n+k)>)  | Out-place | 稳定   |

- 冒泡排序 - 重复遍历比较相邻元素，将最大/小元素移至末尾，并逐渐减少遍历长度
- 选择排序 - 重复遍历未排序部分, 将最小元素移至已排序末尾
- 插入排序 - 默认第一个元素为已排序, 取未排序部分第一个元素, 从后向前进行比较交换位置
- 希尔排序 - 设置增量序列/因子, 分割数组进行插入排序, 直至增量因子为 1
- 归并排序 - 递归分割序列, 比较合并已排序序列
- 快速排序 - 根据基准值分割序列, 左侧小于, 右侧大于, 递归执行后合并
- 基数排序 - 取最大值及其位数, 取元素的每个位组成技术序列, 进行计数排序
- 堆排序 - 构建待排序序列成大项堆, 交换堆顶元素与最后一个元素, 调整新堆为大项堆
- 计数排序 - 取最大值和最小值, 统计元素出现次数, 计数累加, 反向填充输出
- 桶排序 - 设置桶范围, 遍历数据至对应的桶中, 对非空桶进行排序后拼接