### 一、矩阵基础

#### 1. Gauss-Jordan 消元法
Gauss-Jordan 消元法是一种用于求解线性方程组和矩阵求逆的算法。其基本步骤如下：
1. **将矩阵化为增广矩阵**：如果要解方程组 $A\mathbf{x} = \mathbf{b}$，首先将其写成增广矩阵 $[A|\mathbf{b}]$。
2. **通过行变换将矩阵化为行最简形式**：使用初等行变换（行交换、行乘以非零常数、某一行加上另一行的倍数）将矩阵转换为行最简形式，即左侧为单位矩阵。
3. **解得结果**：从增广矩阵的右侧读取解。

例如，求解方程组：
$ \begin{cases} 
2x + y = 5 \\
4x - 6y = -2 
\end{cases} $

增广矩阵为：
$ \left[\begin{array}{cc|c}
2 & 1 & 5 \\
4 & -6 & -2 
\end{array}\right] $

通过行变换可以化简为：
$ \left[\begin{array}{cc|c}
1 & 0 & 1 \\
0 & 1 & 3 
\end{array}\right] $

解得 $x = 1$, $y = 3$。

#### 2. 奇异值分解（SVD）
SVD 是一种将矩阵分解为三个矩阵乘积的方法，即：
$ A = U\Sigma V^T $
其中，$U$ 和 $V$ 是正交矩阵，$\Sigma$ 是对角矩阵，其对角线元素为矩阵 $A$ 的奇异值。

SVD 在数据降维、信号处理和推荐系统中有广泛应用。例如，在图像压缩中，可以使用 SVD 将图像矩阵分解，然后保留最大的奇异值对应的分量，丢弃小的奇异值对应的分量，从而实现图像压缩。
