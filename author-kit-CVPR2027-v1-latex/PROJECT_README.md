# TSD 的 CVPR 稿件

此目录是正在修改的 CVPR 主稿。AAAI 目录保留之前提交的原稿，供对照，不在其中编译或改写。

- 正文源文件：`main.tex`，章节位于 `sec/`。
- 补充源文件：`supplement.tex`，内容位于 `supplement/sections/details.tex`。
- 供阅读的最新输出：本目录的 `main.pdf`、`supplement.pdf`。
- 全文对照与审稿依据：`../docs/AAAI_CVPR_FULL_COMPARISON.md`。

在本目录运行 `./build_paper.sh`，或从任意目录运行此脚本的绝对路径。脚本编译正文与补充，成功后刷新同目录的两个 PDF。辅助文件与详细构建日志仍在数据目录的 reports/cvpr_build、reports/cvpr_supplement_build 中。

## 工作稿占位

当前 PDF 是含可见 pending/TBD 的工作稿。已有 160 行历史测量、400 图开发搜索和 336 图扩展比较保留真实结果。正式 40 参考×6 提示词×3 种子测试、最终六个基线、独立人评、成本与部分机制控制设有单独占位。占位数值不得用开发集结果代填，pending 不等于已经完成，也不是零分。

填充结果后应更新对应论述、图表和补充，再清除相关占位。不要仅隐藏占位来生成投稿定稿。含占位的工作稿会增加页数，最终结果齐备后重新安排正文和补充的篇幅。
