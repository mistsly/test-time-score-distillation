# CVPR 2027 working revision — writing pass, 2026-11-06

The active manuscript uses the uploaded outer CVPR 2027 template. The AAAI manuscript remains unchanged. This version is a substantially rewritten working paper, not a submission-ready claim of completed P0 research.

## Writing and figure changes

- Rewritten Abstract, Introduction, Related Work, Method, Experiments, Discussion and Conclusion from the AAAI material and review concerns.
- Applied `research-paper-writing` from Master-cai/Research-Paper-Writing-Skills, commit `77e7c2c1ba06f7d71844873147665437a03aac1b`; installed at `/home/fengwj/.codex/skills/research-paper-writing`.
- Retained the two task objectives while defining locality specifically as reference-layout retention.
- Corrected score sign, detach, mean reduction, optimizer displacement, reverse-first order and the distinction between sampler text CFG and style-contrast scale.
- Added a mechanism comparison with StyleID, StyleSSP, Attention Distillation and reference CFG. This is a conceptual table, not an empirical ranking.
- Preserved the recomputed historical numerical table, with single-prompt/single-seed and provenance qualifications. Removed unsupported strongest-baseline, matched-layout and regularization-substitution claims.
- Replaced the basic method sketch with editable `figures/method.svg` and a vector PDF. Added a development-only boundary row from actual saved outputs with per-image hashes in `figures/development_boundary_sources.json`.
- Verified important reference metadata against primary sources; corrected Decoupled DMD author names and DMD2 author order in the active bibliography.
- The LLM statement describes assistance during this revision. Authors still need to verify complete disclosure of prior research/evaluation tools and the applicable submission requirements.

## Review artifacts

See `../docs/CVPR_WRITING_REVIEW.md` for the mini-outline, paragraph roles/reverse outline, claim–evidence map, review-response mapping and five-dimension self-review. Source citations for the checks are recorded there.

The pre-polish manuscript is backed up at `/data534/fengwj/TSD/reports/before_writing_polish_20261106_134547`. Original uploaded main template files are backed up at `/data534/fengwj/TSD/reports/uploaded_cvpr_template_original`. The uploaded `cvpr.sty` and bibliography style are unchanged.

`build_cvpr_revision.py` now refreshes historical data assets by default, preserving edited prose, bibliography and method art. `--initialize-draft` is an explicit regeneration of the old initial draft and should not be used to build this edited manuscript. Use `draw_cvpr_method.py` to update the vector art and development row, then compile `main.tex` with latexmk.

## Remaining scientific work

The original image/run/evaluator provenance is incomplete. Expanded quantitative results, strong-native development, dedicated-method comparisons, multi-content/multi-seed evaluation, matched-budget mechanisms, human quality assessment and a final cost analysis remain incomplete. The development illustration is a labeled failure case, not a test-set result. These gaps cannot be closed by writing changes alone. See `../docs/P0_PROGRESS.md`.

Latest update: all 256 development outputs and CSD/CLIP/DINO evaluation are complete, with a full 16-configuration supplementary table and anonymous numeric/protocol export. A pixel-identical two-GPU recovery closed the two missing cells. Stronger-reference and near-forward-budget experiments are now running; formal test and human assessment remain incomplete. Current builds are 8 pages (main, including references) and 5 pages (supplement). See `../docs/DEVELOPMENT_RESULTS_COMPLETE.md`. Earlier pending-metric notes above describe previous snapshots.

2026-11-07 current update: the main experimental narrative now uses the balanced 240-output development coverage and references the complete 400-output search. Historical 160-row data remain in the supplement, with provenance qualifications. Five-method 40×6×3 held-out protocol is frozen and running (3,600 outputs planned, not yet complete). The abstract, introduction, discussion and LLM disclosure have been aligned with the completed development evidence. This supersedes the older 256-row/current-queue snapshot above.

Build validation after this update: main 8 pages including references; supplement 11 pages. Final logs have no undefined references or overfull boxes. The main portrait-comparison page and supplemental table/image pages were visually inspected. All three active formal lanes have produced successful, hash-validated outputs. The remainder continues in the background; these builds remain development-evidence working drafts.

2026-11-07 integrated writing pass: revised the whole main text against AAAI/main.tex, review(1).md, the user's abstract and presentation preferences, and research-paper-writing guidance. Restored the two-task narrative and native-contrast operator as the central story. Reworked Introduction, Related Work, Method, Experiments, Discussion and Conclusion, and inserted the user's latest abstract. Correct equations, same-state conditions, VAE reference tokens, optimizer update and separate text/reference scales remain explicit. Added official-source StyleShot/CSGO/USO citations. Development comparisons now lead with both TSD operating points against strong CFG, with paired layout-subset coverage and full AD/USO differences. Original AAAI sources and frozen generation code/protocol are unchanged. Scientific completion still follows the experiment plan, not this writing update. See ../docs/AAAI_CVPR_INTEGRATED_WRITING.md.

Integrated writing final build verified: main 7 pages including references, supplement 6 pages. Final TeX logs contain no undefined citations/references, duplicate labels, or overfull boxes. Source CSV means, bibliography keys, and frozen experiment identities were checked. Main opening/method/results and supplementary tables were visually inspected.

2026-11-07 用户明确修订范围：以AAAI原论文为底稿，根据审稿意见修改并迁移CVPR格式。此前改名不符合用户预期，正文和补充已恢复AAAI原题Test-Time Score Distillation: Mask-Free Semantic Style Editing with Reverse-Process Regularization。后续保留原题与研究主线，进行有审稿依据的定点修订；保留数学修正和已完成实验。

## 2026-11-07 原稿结构修订
保持原题、原 AAAI 双任务与方法主线。恢复 40 风格初始研究到正文，作为原有存储测量单独呈现。新增六配置（含两种 TSD 配置）的 288 图开发对照，含刚完成的 StyleShot 48 图评价。恢复两提示词主图，使用统一 seed64 的可核验新输出。补充材料增加固定 K 设计对比图。正式多种子与最终六基线、人评仍未全部完成。具体段落、审稿意见和证据映射见 `../docs/AAAI_BASED_CVPR_REPAIR.md`。AAAI 原件不修改。

## 当前：直接迁入 AAAI 后定点修订
原引言、相关工作、四项贡献结构和原实验论述已迁入，正确方法推导和新结果保留。原多提示词汇总、213 条参数记录及 20 条残差记录已恢复补充。未完成工作设可见 pending/TBD。正文与补充 PDF 在本模板目录，使用 build_paper.sh 更新。全文对应说明以 ../docs/AAAI_CVPR_FULL_COMPARISON.md 为准。

2026-11-08 InstantStyle开发48/48生成及三指标评价完成，共同开发网格扩展为336行（7配置，其中5基线和2个TSD）。正文和补充已更新对应设置、数据量与表格，并重新编译到模板目录。该结果不代填正式测试表。CSGO仍待开发验证，三个新增方法正式扩展尚未启动。
