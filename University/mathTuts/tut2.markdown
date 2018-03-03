Tut 2
==========================

# Section 1.1

## 1  

### a 

* $\varphi '= \frac{\partial f}{\partial x_1} \quad \psi ' =\frac{\partial g}{\partial x_1}$

### b

* $\frac{\partial (af + bg)}{\partial x_1}  = (a \varphi + b \psi)'$ **(Taking parital derivative with repect to x1 implease treat all other arguments as constant which means tha f and $\varphi$ and equivelant and g and $\psi$ are equivelant)**
* $= a \varphi ' + b \psi '$ **(Result for single veriable derivatives)**
* $= a \frac{\partial f}{x_1} + b \frac{\partial(g)}{x_1}$ **(1.a)**

### c 
 
* $\frac{\partial fg}{\partial x_1} = (\varphi \psi)'$ **(Partial derivate of mulitveriate function and derivative of single veriable function are equivelant)**
* $= \varphi' \psi  + \varphi  \psi'$ **(Product rule for single veriable functions)**
* $= g \frac{\partial f}{\partial x_1} + f \frac{\partial g}{\partial x_1}$ **(1.a , communitivity of addition and multipaction of reals)**


## 2
  
### a
 
* $\begin{pmatrix} t \\ t^2 \end{pmatrix}$ and $\begin{pmatrix} t^2 \\ t \end{pmatrix}$
* Intersections at $t = \{ 0,1\}$ 
* Finding the derivates
  + $\begin{pmatrix}  1 \\ 2t \end{pmatrix}$ and $\begin{pmatrix} 2t \\ 1 \end{pmatrix}$
* Checking orthoganality at intersections
  + at t = 0
    - $\begin{pmatrix} 1 \\ 0 \end{pmatrix} \cdot \begin{pmatrix} 0 \\ 1 \end{pmatrix} = 0$
    - orthognal
  + at t = 1
    - $\begin{pmatrix} 1 \\ 2 \end{pmatrix} \cdot \begin{pmatrix} 2 \\ 1 \end{pmatrix} = 4 \neq 0$
    - Not orthoganal

### b
 
* $\begin{pmatrix} t \\ t^2 \end{pmatrix}$ and $\begin{pmatrix} s \\ \frac{1}{2} - s^2 \end{pmatrix}$
* intersections
  + same x coordinate $t=s$
  + same y cordinate $t^2 = \frac{1}{2} - t^2$ so $t = \pm \frac{1}{2}$
* Finding derivatives
  + $\begin{pmatrix} 1 \\ 2t \end{pmatrix}$ and $\begin{pmatrix} 1 \\ -2t\end{pmatrix}$
* Checking orthoganality of vectors.
  + at $-\frac{1}{2}$
   - $\begin{pmatrix} 1 \\ -1 \end{pmatrix} \cdot \begin{pmatrix} 1 \\ 1 \end{pmatrix} = 0$
   - Orthoganal
  + at $\frac{1}{2}$
    - $\begin{pmatrix} 1 \\ 1 \end{pmatrix} \cdot \begin{pmatrix} 1 \\ -1 \end{pmatrix} = 0$
    - Orthoganal

## 6

### a



## 7

### b

* $(a \vec{F} + b \vec{G})' =\left(a \begin{pmatrix} f_1 \\ \vdots \\ f_m \end{pmatrix} + b \begin{pmatrix} g_1\\ \vdots \\ g_m \end{pmatrix}\right)'$
* $=\left(\begin{pmatrix} a f_1 \\\vdots\\ a f_m \end{pmatrix} + \begin{pmatrix} b  g_1  \\ \vdots \\ b g_m \end{pmatrix}\right)'$
* $=\begin{pmatrix} a f_1 + b g_1 \\ \vdots \\ a f_m + b g_m \end{pmatrix}'$
* $=\begin{pmatrix} \frac{\partial a f_1 + b g_1}{\partial x_1} &\cdots &\frac{\partial a f_1+ b g_1}{\partial x_n} \\ &\vdots & \\ \frac{\partial a f_m + b g_m }{\partial x_1} & \cdots & \frac{\partial a f_m + b g_m}{\partial x_m}\end{pmatrix}$
* $=\begin{pmatrix}\frac{\partial a f_1}{\partial x_1} + \frac{\partial b g_1}{\partial x_1} &\cdots &\frac{\partial a f_1}{\partial x_n}+\frac{\partial bg_1}{\partial x_n}\\ &\vdots&\\ \frac{\partial a f_m}{\partial x_1} + \frac{\partial b f_m}{\partial x_1} &\cdots & \frac{\partial a f_m}{\partial x_n}+\frac{\partial b g_m}{\partial x_n}\end{pmatrix}$ 
* $=\begin{pmatrix} \frac{\partial a f_1}{\partial x_1} & \cdots & \frac{\partial a f_1}{\partial x_n} \\ &\vdots&\\ \frac{\partial a f_m}{\partial x_1} &\cdots& \frac{\partial a f_n}{\partial x_n} \end{pmatrix} + \begin{pmatrix} \frac{\partial b g_1}{\partial x_1} & \cdots & \frac{\partial b g_1}{\partial x_n} \\ &\vdots& \\ \frac{\partial b g_m}{\partial x_1} &\cdots& \frac{\partial b g_m}{\partial x_n} \end{pmatrix}$
* $=\begin{pmatrix} a \frac{\partial f_1}{\partial x_1} & \cdots & a \frac{\partial f_1}{\partial x_n} \\ &\vdots&\\ a \frac{\partial f_m}{\partial x_1} &\cdots& a\frac{\partial f_n}{\partial x_n} \end{pmatrix} + \begin{pmatrix} b\frac{\partial g_1}{\partial x_1} & \cdots & b\frac{\partial g_1}{\partial x_n} \\ &\vdots& \\ b\frac{\partial g_m}{\partial x_1} &\cdots& b\frac{\partial g_m}{\partial x_n} \end{pmatrix}$
*  $=a \begin{pmatrix} \frac{\partial f_1}{\partial x_1} & \cdots &  \frac{\partial f_1}{\partial x_n} \\ &\vdots&\\  \frac{\partial f_m}{\partial x_1} &\cdots& \frac{\partial f_n}{\partial x_n} \end{pmatrix} + b \begin{pmatrix} \frac{\partial g_1}{\partial x_1} & \cdots & \frac{\partial g_1}{\partial x_n} \\ &\vdots& \\ \frac{\partial g_m}{\partial x_1} &\cdots& \frac{\partial g_m}{\partial x_n} \end{pmatrix}$
*  $=a \vec{F}' +b\vec{G}'$
