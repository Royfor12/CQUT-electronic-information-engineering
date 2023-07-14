# .mif文件生成器

为EDA乐曲播放实验设计，设计目的为更快速便捷生成乐谱文件。

[![Platform Version](https://img.shields.io/badge/Java-13.0.1-orange)](https://www.oracle.com/technetwork/java/javase/downloads/jdk13-downloads-5672538.html)
[![IDE](https://img.shields.io/badge/IDE-IntelliJ%20IDEA-red)](https://www.jetbrains.com/idea/)
[![Software License](https://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE)

## 使用说明

**本工程需要自行下载或克隆仓库后自行编译运行。**

项目规定了一种新的乐谱音符表示方法，能大幅简化音符输入的表示。

### 输入格式

&nbsp;&nbsp;&nbsp;&nbsp;项目中的 `input` 文件为程序的输入部分。

&nbsp;&nbsp;&nbsp;&nbsp;文件内容与所演奏的乐谱对应，共支持低音、中音和高音三个音域的音符，其对应写法如下：

|低音1|中音1|高音1|
|---|---|---|
|01|1|11|

|十六分音符|八分音符|四分音符|二分音符|全音符|
|---|---|---|---|---|
|..1|.1|1|1-|1---|

|八分音符附点|四分音符附点|二分音符附点|
|---|---|---|
|.1.|1.|1---|

### 输出格式

&nbsp;&nbsp;&nbsp;&nbsp;项目中的 `output` 文件为程序的输出部分。生成的文件内容可直接使用。

