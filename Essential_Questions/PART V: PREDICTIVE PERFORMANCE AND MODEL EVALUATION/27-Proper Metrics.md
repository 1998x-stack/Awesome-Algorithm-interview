### 27. 正确的度量标准

#### 度量函数的三个特性是什么，使其成为正确的度量标准？

度量（Metric）是数学、计算机科学以及其他科学领域的基础。在机器学习中，理解良好的度量函数的基本属性对于衡量点或数据集之间的距离或差异是至关重要的。例如，在处理神经网络中的损失函数时，了解它们是否表现为正确的度量函数有助于理解优化算法如何收敛到一个解决方案。以下将详细分析常用的两个损失函数——均方误差和交叉熵损失，探讨它们是否满足正确度量的标准。

#### 正确度量的标准

要说明正确度量的标准，请考虑两个向量或点 $v$ 和 $w$ 以及它们之间的距离 $d(v, w)$，如下图所示。

1. **非负性**：两个点之间的距离总是非负的，$d(v, w) \geq 0$，并且当且仅当这两个点相同时，距离为0，即 $v = w$。
2. **对称性**：距离是对称的，例如 $d(v, w) = d(w, v)$。
3. **三角不等式**：对于任意三个点 $v, w, x$，距离函数满足三角不等式，即 $d(v, w) \leq d(v, x) + d(x, w)$。

#### 均方误差（MSE）

均方误差（MSE）损失计算目标变量 $y$ 和预测目标值 $\hat{y}$ 之间的平方欧几里得距离：

$$
\text{MSE} = \frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i)^2
$$

对于单个数据点，平方误差（SE）量化了预测值与实际值之间的平方差异，而均方误差（MSE）则是在所有数据点上平均这些平方差异。

1. **非负性**：由于平方差异被提升到平方，距离总是非负的，满足第一个标准。
2. **对称性**：由于减法操作，平方误差也满足对称性，即 $(y - \hat{y})^2 = (\hat{y} - y)^2$。
3. **三角不等式**：尽管直观上似乎平方误差损失也满足三角不等式，但实际上并不总是如此。例如，对于一些值，这种情况并不成立 。

#### 交叉熵损失（Cross-Entropy Loss）

交叉熵用于衡量两个概率分布之间的距离。在机器学习中，我们使用离散交叉熵损失（CE）来训练逻辑回归或神经网络分类器。

$$
\text{CE} = -\sum_{i=1}^{n} y_i \log(\hat{p}_i)
$$

1. **非负性**：交叉熵损失总是非负的，因为对数的概率得分是一个在 $[0, 1]$ 范围内的数值，因此满足第一个标准的一部分。
2. **对称性**：交叉熵损失不满足对称性，例如 $-y \log(p) \neq -p \log(y)$，违反了第二个标准 。
3. **三角不等式**：交叉熵损失也不满足三角不等式。例如，假设我们选择 $r = 0.9$、$p = 0.5$ 和 $q = 0.4$，计算结果表明三角不等式不成立 。

#### 结论

尽管均方误差和交叉熵损失在实际中被广泛使用，但它们并不完全符合正确度量的标准。然而，它们仍然是非常有用的模型评估指标。例如，均方误差常用于回归问题中的模型优化，而交叉熵损失则常用于分类问题中的模型训练  。在选择和使用这些损失函数时，理解它们的特性和限制是至关重要的。