# YBLabel_Copy

## 一个属性 给UILabel添加长按复制


## demo
![image](https://raw.githubusercontent.com/alexyubin/YBLabel_Copy/master/Demo.gif)


## Installation
> **CocoaPods**
<pre><code>
 pod 'YBLabel+Copy', '~> 1.0.1'
</code></pre>
如果未发现 1.0.1 请更新一下pod,  使用命令

<pre><code>
 pod repo update
</code></pre>

但是有时候，更新了却还是不行，那我们就 

<pre><code>
 pod cache clean --all
 rm -rf ~/Library/Caches/CocoaPods
 pod repo update
</code></pre>


> **手动拖入**
> 将 YBLabel_Copy 文件夹拽入项目中，导入头文件：
> #import "#import "UILabel+Copy.h"


## How to use

<pre><code>
 UILabel *label= [[UILabel alloc] init];
 //使UILabel拥有长按复制功能
 label.copyingEnabled = YES;
</code></pre>


