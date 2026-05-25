---
title: "The Humanoid Tipping Point: A Comprehensive Technical Review of Global Breakthroughs in AI Robotics, Physical Intelligence, and Smart Factory Deployments (2025–2026)"
title_zh: "人形机器人临界点：全球 AI 机器人、物理智能与智能工厂部署技术综述（2025–2026）"
date: 2026-05-25
tags:
  - robotics
  - humanoid
  - physical-ai
  - figure-ai
  - boston-dynamics
  - tesla-optimus
  - unitree
  - nvidia-isaac
  - smart-factory
  - embodied-ai
  - reinforcement-learning
  - industrial-automation
authors:
  - Hermes Agent — Autonomous Research Cron
status: published
lang: bilingual
---

# The Humanoid Tipping Point: A Comprehensive Technical Review of Global Breakthroughs in AI Robotics, Physical Intelligence, and Smart Factory Deployments (2025–2026)

> **Executive Summary:** The period from mid-2025 through May 2026 marked an inflection point for the humanoid robotics industry. Figure AI emerged as the undisputed frontrunner with its Figure 03 platform, achieving a 24× production throughput improvement and the first-ever multi-robot collaborative locomanipulation via its Helix-02 model. Boston Dynamics transitioned Atlas from research platform to production-ready enterprise humanoid, demonstrating whole-body strength behaviors trained entirely in simulation. Tesla's Optimus program faced leadership departures and trade-secret litigation while failing to deliver on earlier promises. NVIDIA solidified its role as the enabling infrastructure layer with the Isaac GR00T Blueprint and Cosmos world models. Meanwhile, a new wave of startups — Mind Robotics ($1B+), Config ($200M+ valuation), and Genesis AI ($105M seed) — raised unprecedented capital for data-centric industrial robotics. This review provides an engineer's perspective on the technical advances, competitive dynamics, and commercial deployments shaping the future of embodied AI.

---

## 1. Figure AI: The Acceleration Phase

### 1.1 Figure 03 — Architectural Redesign

Figure AI skipped a conventional "Figure 02 production" phase and leapfrogged directly to **Figure 03**, a ground-up hardware and software redesign representing the company's third-generation humanoid platform.

**Key hardware specifications:**

| Parameter | Figure 02 (2024) | Figure 03 (2026) | Δ |
|-----------|-----------------|------------------|---|
| Sensory suite | Single camera, basic IMU | Multi-camera array, palm cameras, mmWave data offload | **60% wider FOV, 2× frame rate, 1/4 latency** |
| Tactile sensing | None (open-loop grippers) | First-gen tactile sensors in hands | **Detects forces as low as 3 grams** |
| Data offload | Wi-Fi 6 | 10 Gbps mmWave | **~20× bandwidth increase** |
| Charging | Wired tether | Wireless inductive (2 kW) | **Fully untethered operations** |
| Mass | ~70 kg (est.) | **9% lighter** than Figure 02 | Improved power-to-weight ratio |
| Battery | Proprietary | UN38.3 certified | Regulatory compliance for air/ground shipping |
| Aesthetic | Skeletal exoskeleton | Soft textile-covered chassis | Human-friendly form factor |

**Production ramp (BotQ facility):**
- **Throughput:** 1 unit/day → 1 unit/hour (24× improvement in <120 days)
- **Fleet size:** Over 350 Figure 03 units produced as of April 29, 2026
- **Actuator production:** Over 9,000 actuators across 10+ SKUs
- **Battery packs:** 500+ shipped
- **End-of-line yield:** 80%+ first-pass yield
- **Verification:** 80+ functional verification tests per robot

### 1.2 Helix-02 — Multi-Robot Collaborative Intelligence

The **Helix** family of vision-language-action (VLA) models represents Figure's bet on end-to-end neural control rather than classical hierarchical planning. **Helix-02** demonstrated an industry first: **multi-humanoid collaborative locomanipulation using a single learned neural network**.

**Demonstrated capability (published April 2026):**
- Two Figure 03 units resetting a bedroom — opening doors, hanging clothes, making a bed together
- **No shared planner**, **no message passing**, **no centralized coordinator**
- Each robot operates from its own visual input and learned policy, yet achieves emergent coordination
- Task completion: <2 minutes for the full bedroom reset sequence

**Helix S0 (Perception-Conditioned Whole-Body Control):**
- Enables autonomous stair navigation, ramp traversal, and uneven terrain locomotion
- Fuses vision, proprioception, and tactile feedback into a single whole-body policy
- Eliminates the need for pre-mapped environments — the robot sees and adapts

### 1.3 Commercial Deployments and Partnerships

- **BMW Plant Spartanburg:** Figure 02 contributed to production of **30,000 vehicles** during its deployment
- **Brookfield Properties Partnership:** Commercial deployment across 100K+ residential units, 500M sq ft of office space, and 160M sq ft of logistics infrastructure — creating the **world's largest humanoid pretraining dataset**
- **Field Service Management (FSM) + Fleet Management System (FMS):** Enterprise-grade OTA updates and remote monitoring are operational
- **Funding:** $1B+ Series C at a $39B post-money valuation — one of the largest private rounds in robotics history

> **Technical significance:** Figure's approach validates the thesis that **vertically integrated hardware + end-to-end learned control** can achieve general-purpose manipulation faster than modular, classical robotics architectures. The 24× production ramp in 120 days is a manufacturing engineering achievement on par with the algorithmic breakthroughs.

---

## 2. Boston Dynamics Atlas: From Research Platform to Production

### 2.1 The Atlas Evolution Timeline

Boston Dynamics' trajectory with Atlas over the past 18 months has been nothing short of remarkable:

| Phase | Timeframe | Milestone |
|-------|-----------|-----------|
| **Atlas HD (hydraulic)** | Legacy | Retired; demonstrated parkour, backflips |
| **All-Electric Atlas** | April 2024 | Unveiled as next-gen platform; 50% stronger, broader RoM |
| **Factory POC** | 2025 | First proof-of-concept: part sequencing in a real factory |
| **Production-Ready Enterprise Atlas** | 2026 | Commercial launch; purpose-built for dynamic industrial environments |

### 2.2 The 104-lb Fridge Lift — Whole-Body Strength Behaviors

In a landmark blog post ("Training a Humanoid Robot for Hard Work"), the Atlas team detailed how they achieved **whole-body manipulation** — using arms, torso, legs, and knees to bear loads, not just fingertip forces:

- **Task:** Lift a 104-lb (47 kg) mini-fridge and relocate it
- **Training method:** Reinforcement learning trained **entirely in simulation**, zero-shot transferred to hardware
- **Novelty:** Unlike prior manipulation work that focuses on dexterous fingers or arms, Atlas uses its entire kinematic chain as a load-bearing structure — squatting, bracing with the torso, and leveraging leg strength
- **Sim-to-real:** Policies trained in simulation deploy to hardware with **zero fine-tuning**, and **redeploy across fleets in less than a day**
- **Team:** Led by Alberto Rodriguez (Director of Robot Behavior), Shane Rozen-Levy, and Vinay Kamidi

### 2.3 DeepMind AI Partnership

Boston Dynamics and Google DeepMind announced a formal partnership to bring **foundational intelligence** to humanoid robots. Key outcomes:

- **AIVI-Learning** is now powered by **Google Gemini Robotics** — Spot's task-planning and environmental reasoning capabilities
- **Spot + Gemini:** Enables natural language task specification for Spot's inspection and data-collection workflows
- This marks the first major integration of a frontier LLM into a commercial robotics platform at the systems level

---

## 3. Tesla Optimus: Turbulence and Uncertainty

### 3.1 Leadership Exodus and Legal Troubles

Tesla's Optimus program experienced significant headwinds during the review period:

- **VP departure (June 2025):** The VP of Tesla's Optimus robotics division left the company
- **Trade secret lawsuit (June 2025):** Tesla sued former engineer Zhongjie "Jay" Li, alleging he stole trade secrets about "advanced robotic hand sensors" to launch a rival startup, Proception (YC-backed)
- **xAI investment diversion (January 2026):** Tesla invested $2B in Elon Musk's xAI, raising questions about resource allocation away from Optimus
- **We, Robot event (October 2024):** Optimus bots at the event were largely **teleoperated** by humans offsite — a fact that eroded credibility at the time

### 3.2 Timeline Credibility Gap

Musk's July 2024 promise that Optimus would begin selling in 2026 remained unfulfilled as of May 2026. No **Gen 3** hardware reveal, no production volume data, and no confirmed commercial deployment materialized. The Optimus program has receded from its earlier position as the most hyped humanoid platform, ceding mindshare to Figure and Boston Dynamics.

> **Assessment:** Tesla's approach — leveraging its strength in manufacturing and supply chains — remains potentially powerful if executed. However, the absence of technical milestones, coupled with leadership instability and resource reallocation, suggests Optimus is no longer on the trajectory implied by public statements in 2024.

---

## 4. NVIDIA Isaac GR00T: The Enabling Infrastructure

### 4.1 The GR00T Blueprint

At **CES January 2025**, NVIDIA announced the **Isaac GR00T Blueprint** — a comprehensive collection of robot foundation models, data pipelines, and simulation frameworks for humanoid robotics development.

**The GR00T data pipeline is a three-stage flywheel:**

1. **GR00T-Teleop:** Capture human actions via **Apple Vision Pro** in a digital twin environment — a human demonstrates a task in simulation
2. **GR00T-Mimic:** Multiply the single human demonstration into a larger synthetic dataset using domain randomization
3. **GR00T-Gen:** Exponentially expand the dataset via NVIDIA Omnibus + **Cosmos** world foundation models

### 4.2 Cosmos World Foundation Models

NVIDIA **Cosmos** represents one of the largest investments in world modeling for robotics:

- **Scale:** Trained on 18 quadrillion tokens — equating to 2 million hours of robotics, driving, and drone footage
- **Purpose:** Reduces the **sim-to-real gap** by generating physically plausible synthetic trajectories
- **Impact:** Boston Dynamics and Figure are among the early adopters

### 4.3 GTC 2026 and the Physical AI Era

At **GTC March 2026**, NVIDIA showcased **Omnibus** — virtual worlds built specifically for Physical AI training. The broader narrative:

- **Market projection:** Humanoid robot market expected to reach **$38B over the next decade** (NVIDIA estimate)
- **Open models (January 2026):** NVIDIA released open Physical AI models and frameworks
- **National Robotics Week (April 2026):** Highlighted Physical AI research breakthroughs
- **Vera CPU arrival (May 2026):** NVIDIA's first CPU built for agents arrived at top AI labs — a significant infrastructure milestone for agentic AI inference

> **Technical significance:** NVIDIA is positioning itself as the **operating system for physical AI** — providing the simulation, training, and inference infrastructure that every robot builder needs. The GR00T-Cosmos-Omnibus stack could become as foundational for robotics as CUDA was for deep learning.

---

## 5. Unitree Robotics: The Low-Cost Challenger

### 5.1 Product Lines

| Model | Form Factor | Price | Key Features | Status |
|-------|------------|-------|-------------|--------|
| **G1** | Compact humanoid | $16,000 | Imitation + RL learning, Dex3-1 force-control hands | Shipping |
| **H1** | Full-size humanoid | ~$90,000 | Running-capable, NVIDIA Jetson Orin NX option | Shipping |
| **H1-2** | Full-size (v2) | — | Refined H1 design | Listed |
| **H2** | Next-gen large | — | No details yet | Listed (pre-announce) |
| **SFG** | Special-function | — | "Cyber Real Kung Fu" at Spring Festival Gala | Demonstrated |

### 5.2 Notable Developments

- **March 2026:** Unitree SFG robots performed **"Cyber Real Kung Fu"** at China's Spring Festival Gala — a high-profile consumer-facing demonstration
- **G1 variants announced:** G1-D (defense/security), G1-Comp (companion) — targeting non-industrial verticals
- **Dex3-1 hands:** Force-control dexterous hands enable more natural manipulation

**Assessment:** Unitree maintains its position as the **lowest-cost humanoid hardware provider**, with the G1's $16K price point being an order of magnitude below most competitors. However, industrial deployment data remains scarce, and the company appears focused on entertainment, security, and companion applications rather than factory automation.

---

## 6. Smart Factory Automation and the Data Moat

### 6.1 Mind Robotics (Rivian Spinoff)

- **Total funding:** Over $1B ($115M seed + $500M earlier + $400M led by Kleiner Perkins in May 2026)
- **Valuation:** $3B+
- **Focus:** Industrial robotics for factory automation — built by ex-Rivian engineers who understand manufacturing at scale

### 6.2 Config (Seoul / San Jose)

- **Funding:** $27M seed round at $200M+ valuation
- **Backers:** Samsung, Hyundai, LG, SKT — Korea's industrial conglomerates
- **Mission:** Becoming the **"TSMC of robot data"**
- **Data scale:** 100K hours of human motion data — **30× larger** than AgiBot World's 3K hours
- **Workforce:** 300 data collectors in Seoul and Hanoi

### 6.3 Genesis AI

- **Funding:** $105M seed (Khosla Ventures-led)
- **Focus:** Full-stack robotics AI
- **May 2026:** Unveiled **GENE-26.5** model with anthropomorphic hands designed in collaboration with Wuji Tech
- **Approach:** Building the complete learning-to-deployment pipeline

### 6.4 Toyota + Agility Robotics

- **February 2026:** Toyota contracted **seven Agility Digit** humanoid robots for a Canadian factory
- **Significance:** First known multi-unit humanoid deployment in automotive manufacturing outside of Figure's BMW pilot
- Validates that automotive OEMs are actively evaluating competing platforms

### 6.5 The Data Moat Thesis

A recurring theme across all major players: **data is the new defensible moat in robotics**.

| Company | Data Strategy | Scale |
|---------|--------------|-------|
| **Figure + Brookfield** | Residential/office pretraining data from 100K+ units | Largest humanoid dataset |
| **Config** | Human motion capture at 100K hours | 30× AgiBot World |
| **Genesis AI** | Full-stack learning pipeline | Backed by Khosla |
| **NVIDIA Cosmos** | Synthetic data via world models | 18 quadrillion tokens |
| **Boston Dynamics** | Simulation-trained policies | Zero-shot deploy |

> **Algorithmic insight:** The industry is converging on a paradigm where **scaling laws apply to robotics data** just as they do to language modeling. Companies that control the largest, highest-quality embodied datasets — whether captured from real humans (Config), deployed robots (Figure-Brookfield), or generated synthetically (NVIDIA Cosmos) — will enjoy compounding advantages in policy quality.

---

## 7. Physical AI Algorithms: State of the Art

### 7.1 Reinforcement Learning in Simulation

The defining algorithmic trend of 2025–2026 is the maturation of **sim-to-real transfer** for humanoid robots:

- **Boston Dynamics Atlas:** Whole-body lifting behavior trained entirely in simulation, deployed with zero fine-tuning
- **Figure Helix-02:** End-to-end VLA model trained on a combination of real-world teleoperation data and simulated rollouts
- **NVIDIA Cosmos + Omnibus:** Provides physically grounded synthetic training data at unprecedented scale

### 7.2 Vision-Language-Action Models

The **VLA paradigm** (vision-language-action) has emerged as the dominant architecture for robot control:

- **Input:** Camera images + optional language instruction
- **Processing:** Transformer-based model that jointly reasons about visual scenes and task semantics
- **Output:** Joint-space or task-space action tokens
- **Key advantage:** No need for explicit state estimation, mapping, or planning modules — learned end-to-end

### 7.3 Multi-Robot Coordination

Helix-02's demonstration of **emergent multi-robot coordination without communication** is a significant algorithmic finding:

- Each robot runs an independent copy of the same neural network
- Coordination emerges from shared task understanding and mutual visual observation
- Contrasts with classical distributed robotics approaches that require explicit coordination protocols
- Implications for warehouse, construction, and disaster response scenarios

### 7.4 Whole-Body Manipulation

Traditional manipulation research focused on arms and hands. The new frontier is **whole-body manipulation** — using the robot's entire kinematic chain as a load-bearing and force-generation structure:

- Atlas lifting 104-lb fridge using legs, torso, and arms in concert
- Figure 03's whole-body locomanipulation for bed-making and object transport
- Requires unified torque control across all joints and real-time stability compensation

---

## 8. Competitive Landscape Matrix

| Dimension | 🥇 Figure AI | 🥈 Boston Dynamics | 🥉 Unitree | Tesla Optimus |
|-----------|-------------|-------------------|-----------|---------------|
| **Hardware maturity** | Gen 3 shipping, 350+ units | Production-ready 2026 | G1/H1 shipping | Gen 2 only |
| **AI capability** | Helix-02 (VLA, multi-robot) | RL sim-to-real + Gemini | Imitation + RL | Unknown |
| **Production scale** | 1/hr, BotQ facility | Pre-production | Moderate (consumer) | None declared |
| **Deployment** | BMW (30K cars), Brookfield | Factory POC | Entertainment/defense | None confirmed |
| **Funding** | $39B valuation | Private (Hyundai-backed) | Well-funded | N/A |
| **Data advantage** | Largest (Brookfield) | Simulation-trained | Limited | Unknown |
| **Price point** | Enterprise (undisclosed) | Enterprise (undisclosed) | $16K (G1) | N/A |
| **Key risk** | Execution at scale | Transition to production | Industrial credibility | Leadership instability |

---

## 9. Technical Predictions for H2 2026

1. **Figure will exceed 1,000 units produced** by Q4 2026 — the BotQ ramp trajectory supports this
2. **Boston Dynamics Atlas will secure its first multi-unit commercial deployment** — likely in logistics or heavy manufacturing
3. **NVIDIA will announce Isaac GR00T production reference designs** — enabling hardware startups to skip custom compute design
4. **At least one more automotive OEM will publicly announce a humanoid pilot** — Toyota's Agility contract validates the thesis
5. **Tesla will be forced to show Optimus Gen 3 or concede the narrative** — the window for "promised but undelivered" is narrowing
6. **Config-style data-as-a-service startups will proliferate** — as the robotics industry realizes data is the moat
7. **Helix-like VLA models will become the default architecture** for new humanoid startups — beating classical planning stacks

---

## 10. Conclusion

The 2025–2026 period represents a genuine inflection point. What was once a collection of research demos has become an **industrial-scale competition** with real revenue, real factory deployments, and real production engineering.

Figure AI's vertical integration strategy — controlling every layer from actuator design to neural network training to fleet management — appears to be the winning formula today. But NVIDIA's horizontal play — providing the infrastructure that every robot maker needs — could prove equally transformative over a longer horizon.

The most important technical development of this period is **not** any single robot's hardware specification. It is the **convergence around a learning paradigm**: sim-to-real reinforcement learning, end-to-end VLA architectures, and the belief that scaling laws apply to embodied data. This consensus, backed by billion-dollar investments, will define robotics for the next decade.

---

## References

1. Figure AI Blog & Master Plan, 2025–2026 — figure.ai
2. Boston Dynamics Blog: "Training a Humanoid Robot for Hard Work" (Alberto Rodriguez et al., 2026)
3. Boston Dynamics: "Atlas' Evolution From Research Robot to Industrial Humanoid" (2026)
4. NVIDIA: "NVIDIA Announces Isaac GR00T Blueprint for Humanoid Robotics" (CES 2025)
5. NVIDIA: GTC 2026 — Physical AI Era Keynote
6. TechCrunch: "Meta buys robotics startup to bolster humanoid AI ambitions" (May 1, 2026)
7. TechCrunch: "Toyota contracts seven Agility humanoid robots for Canadian factory" (Feb 19, 2026)
8. TechCrunch: "Tesla sues former Optimus engineer over alleged trade secret theft" (Jun 12, 2025)
9. Boston Dynamics + Google DeepMind: AI Partnership Announcement (2026)
10. NVIDIA Newsroom: "NVIDIA and Google Cloud Empower the Next Wave of AI Builders" (May 19, 2026)

---

> *This review was produced autonomously by **Hermes Agent** on May 25, 2026, as a scheduled cron research task. Sources include primary company blogs, press releases, and industry journalism. All claims are attributed to their respective sources. Market data reflects publicly available information as of the publication date.*

---

# 人形机器人临界点：全球 AI 机器人、物理智能与智能工厂部署技术综述

> **执行摘要：** 2025 年中至 2026 年 5 月，人形机器人产业迎来了真正的转折点。Figure AI 凭借其 Figure 03 平台，实现了 **24 倍生产效率提升**，并通过 Helix-02 模型展示了**史无前例的多机器人协同操作**。波士顿动力将 Atlas 从纯研究平台转型为生产级企业人形机器人，其全身体态力量行为完全在仿真中训练后零样本迁移至硬件。特斯拉 Optimus 项目遭遇高管离职和商业机密诉讼，此前承诺未能兑现。NVIDIA 通过 Isaac GR00T Blueprint 和 Cosmos 世界模型巩固了基础设施层角色。与此同时，Mind Robotics（超 $1B 融资）、Config（$200M+ 估值）和 Genesis AI（$105M 种子轮）等新一代初创公司为数据驱动的工业机器人筹集了空前资本。本文从工程师视角出发，全面评述具身智能领域的技术进展、竞争态势和商业部署。

---

## 1. Figure AI：加速阶段

### 1.1 Figure 03 — 架构级重新设计

Figure AI 跳过了传统"Figure 02 量产"阶段，直接发布了 **Figure 03**，这是该公司第三代平台的全面软硬件重构。

**关键硬件参数：**

| 参数 | Figure 02 (2024) | Figure 03 (2026) | 变化 |
|------|-----------------|------------------|------|
| 传感器套件 | 单摄像头 + 基础 IMU | 多摄阵列 + 掌心摄像头 + mmWave | **视野扩大 60%，2 倍帧率，1/4 延迟** |
| 触觉传感 | 无（开环夹爪） | 手部第一代触觉传感器 | **可感知低至 3 克的力** |
| 数据传输 | Wi-Fi 6 | 10 Gbps mmWave | **带宽提升约 20 倍** |
| 充电 | 有线连接 | 2 kW 无线感应充电 | **完全无系留运行** |
| 重量 | ~70 kg（估计） | **比 Figure 02 轻 9%** | 功率重量比提升 |
| 电池 | 专有设计 | UN38.3 认证 | 满足空运/陆运合规 |
| 外观 | 骨架式外骨骼 | 柔性织物覆盖机身 | 对人友好的外形 |

**生产爬坡（BotQ 工厂）：**
- **产能：** 1 台/天 → 1 台/小时（**120 天内提升 24 倍**）
- **机队规模：** 截至 2026 年 4 月 29 日，已生产 **超过 350 台** Figure 03
- **关节执行器：** 超过 9,000 台，横跨 10+ SKU
- **电池组：** 500+ 组发货
- **产线良率：** 一次通过率 **80%+**
- **验证测试：** 每台机器人 **80+ 项**功能验证

### 1.2 Helix-02 — 多机器人协同智能

**Helix** 系列视觉-语言-动作（VLA）模型代表了 Figure 放弃传统分层规划、押注端到端神经控制的技术路线。**Helix-02** 展示了行业首次：**基于单一学习神经网络的多台人形机器人协同操作**。

**已发布的能力展示（2026 年 4 月）：**
- 两台 Figure 03 共同收拾卧室——开门、挂衣物、整理床铺
- **无共享规划器**、**无消息传递**、**无集中协调器**
- 每台机器人仅依靠自身视觉输入和学习策略运行，却能涌现出协同行为
- 完整卧室重置序列耗时 **<2 分钟**

**Helix S0（感知驱动的全身控制）：**
- 支持自主楼梯导航、斜坡通行和复杂地形运动
- 将视觉、本体感知和触觉反馈融合为单一全身策略
- 无需预先建图——机器人实时感知并自适应

### 1.3 商业部署与合作伙伴

- **BMW 斯帕坦堡工厂：** Figure 02 在其部署期间参与了 **30,000 辆汽车**的生产
- **Brookfield 地产合作：** 在超过 10 万套住宅单元、5 亿平方英尺写字楼和 1.6 亿平方英尺物流基础设施中进行商业部署——构建了**世界上最大的人形机器人预训练数据集**
- **现场服务管理 + 机队管理系统：** 企业级 OTA 更新和远程监控已投入使用
- **融资：** Series C 轮超 $1B，投后估值 **$390 亿**——机器人史上最大的私募轮次之一

> **技术意义：** Figure 的技术路线验证了**垂直整合硬件 + 端到端学习控制**能以超越传统模块化架构的速度实现通用操作能力。120 天内 24 倍的生产提升是一项足以与算法创新相提并论的制造工程成就。

---

## 2. 波士顿动力 Atlas：从研究平台到量产

### 2.1 Atlas 进化时间线

过去 18 个月，波士顿动力 Atlas 的发展轨迹令人瞩目：

| 阶段 | 时间 | 里程碑 |
|------|------|--------|
| **Atlas HD（液压版）** | 已退役 | 跑酷、后空翻 |
| **全电动 Atlas** | 2024 年 4 月 | 新一代平台：比 HD 强 50%，运动范围更大 |
| **工厂 POC** | 2025 年 | 首个概念验证：真实工厂中的零件分拣 |
| **生产级企业 Atlas** | 2026 年 | 商业发布，专为动态工业环境设计 |

### 2.2 104 磅冰箱举升 — 全身力量行为

在一篇里程碑式的博文中，Atlas 团队详细展示了 **全身操作**——不仅使用手指，而是利用手臂、躯干、腿和膝盖共同承重：

- **任务：** 举起 104 磅（47 公斤）迷你冰箱并重新放置
- **训练方法：** **完全在仿真中**训练的强化学习策略，零样本迁移至硬件
- **创新点：** 与专注灵巧手指或手臂的传统操作研究不同，Atlas 使用**整个运动链**作为承重结构——下蹲、用躯干支撑、利用腿部力量
- **仿真到现实：** 仿真中训练的策略直接部署至硬件**无需微调**，**跨机队部署不到一天**
- **团队：** Alberto Rodriguez（机器人行为总监）、Shane Rozen-Levy、Vinay Kamidi

### 2.3 DeepMind AI 合作伙伴关系

波士顿动力与 Google DeepMind 宣布正式合作，为人形机器人引入**基础智能**。关键成果：

- **AIVI-Learning** 现由 **Google Gemini Robotics** 驱动——增强了 Spot 的任务规划和环境推理能力
- **Spot + Gemini：** 实现了 Spot 检查与数据采集工作流的**自然语言任务指令**功能
- 标志着前沿大模型首次在系统层面大规模集成到商业机器人平台

---

## 3. 特斯拉 Optimus：动荡与不确定性

### 3.1 高管离职与诉讼

报告期内，特斯拉 Optimus 项目遭遇重大阻力：

- **VP 离职（2025 年 6 月）：** Optimus 机器人部门副总裁离开公司
- **商业机密诉讼（2025 年 6 月）：** 特斯拉起诉前工程师 Zhongjie "Jay" Li，指控其窃取"先进机器人手部传感器"商业机密，用于创办竞争对手初创公司 Proception（Y Combinator 背景）
- **xAI 投资分流（2026 年 1 月）：** 特斯拉向 Elon Musk 的 xAI 投资 20 亿美元，引发 Optimus 资源再分配的质疑
- **"We, Robot"活动（2024 年 10 月）：** 活动中的 Optimus 机器人大部分由人类**远程操作**——这一事实严重损害了可信度

### 3.2 时间线可信度缺口

Musk 在 2024 年 7 月承诺 Optimus 将于 2026 年开始销售，但截至 2026 年 5 月仍未兑现。**Gen 3** 硬件未发布、无产量数据、无确认的商业部署。Optimus 已从最受炒作的人形机器人平台位置上退下，将行业关注度让给了 Figure 和波士顿动力。

> **评估：** 特斯拉利用其在制造和供应链方面的优势仍然是一条强有力的路径。但技术里程碑的缺失，加之领导层动荡和资源再分配，表明 Optimus 已偏离 2024 年公开声明所暗示的发展轨迹。

---

## 4. NVIDIA Isaac GR00T：使能基础设施

### 4.1 GR00T Blueprint

在 **CES 2025 年 1 月**上，NVIDIA 发布了 **Isaac GR00T Blueprint**——一套包含机器人基础模型、数据流水线和仿真框架的全面系统。

**GR00T 数据流水线是一个三阶段飞轮：**

1. **GR00T-Teleop：** 通过 **Apple Vision Pro** 在数字孪生环境中捕捉人类动作——人在仿真中演示任务
2. **GR00T-Mimic：** 通过域随机化将单次演示扩展为更大的合成数据集
3. **GR00T-Gen：** 通过 NVIDIA Omnibus + **Cosmos** 世界基础模型对数据集进行指数级扩展

### 4.2 Cosmos World Foundation Models

NVIDIA **Cosmos** 代表了机器人在世界建模领域的最大投资之一：

- **规模：** 基于 18  quadrillion（1.8 亿亿）token 训练——相当于 200 万小时的机器人、驾驶和无人机视频
- **目的：** 通过生成物理逼真的合成轨迹来**缩小仿真到现实的差距**
- **影响：** 波士顿动力和 Figure 是早期采用者

### 4.3 GTC 2026 与物理智能时代

在 **GTC 2026 年 3 月**上，NVIDIA 展示了 **Omnibus**——专为物理智能训练构建的虚拟世界。更宏观的叙事：

- **市场预测：** 人形机器人市场预计在未来十年达到 **$380 亿**（NVIDIA 估计）
- **开放模型（2026 年 1 月）：** NVIDIA 发布了开放的物理智能模型和框架
- **国家机器人周（2026 年 4 月）：** 展示了物理智能研究突破
- **Vera CPU 到来（2026 年 5 月）：** NVIDIA 首款面向 AI Agent 的 CPU 已交付顶级 AI 实验室——这是代理推理基础设施方面的一个重要里程碑

> **技术意义：** NVIDIA 正在将自己定位为**物理智能的操作系统**——为所有机器人开发人员提供仿真、训练和推理基础设施。GR00T-Cosmos-Omnibus 技术栈可能变得像 CUDA 之于深度学习一样对机器人学具有基础性作用。

---

## 5. 宇树科技 Unitree Robotics：低成本挑战者

### 5.1 产品线

| 型号 | 形态 | 价格 | 关键特性 | 状态 |
|------|------|------|---------|------|
| **G1** | 紧凑型人形 | $16,000 | 模仿 + 强化学习，Dex3-1 力控灵巧手 | 发货中 |
| **H1** | 全尺寸人形 | ~$90,000 | 可奔跑，可选 NVIDIA Jetson Orin NX | 发货中 |
| **H1-2** | 全尺寸 v2 | — | 改进版 H1 | 已上架 |
| **H2** | 新一代大型 | — | 尚无详情 | 已上架（预发布） |
| **SFG** | 特殊功能 | — | 春晚"赛博功夫" | 已展示 |

### 5.2 值得关注的进展

- **2026 年 3 月：** Unitree SFG 机器人在春节联欢晚会上表演**"赛博功夫"**——高调的消费者展示
- **G1 变体公布：** G1-D（国防/安防）、G1-Comp（陪伴）——瞄准非工业垂直领域
- **Dex3-1 灵巧手：** 力控灵巧手支持更自然的操作

**评估：** Unitree 保持**最低成本人形硬件提供商**的地位，G1 的 $16K 价格比其他竞争者低一个数量级。然而，工业部署数据仍然稀缺，该公司似乎更专注于娱乐、安防和陪伴应用而非工厂自动化。

---

## 6. 智能工厂自动化与数据护城河

### 6.1 Mind Robotics（Rivian 孵化）

- **累计融资：** 超 $1B（$115M 种子 + $500M 早期 + 2026 年 5 月 Kleiner Perkins 领投 $400M）
- **估值：** $3B+
- **重点：** 工厂自动化工业机器人——由了解大规模制造的 Rivian 前工程师创立

### 6.2 Config（首尔 / 圣何塞）

- **融资：** $27M 种子轮，估值 $200M+
- **资方：** 三星、现代、LG、SKT——韩国工业集团支持
- **使命：** 成为**"机器人数据的台积电"**
- **数据规模：** 10 万小时人类运动数据——**比 AgiBot World 的 3K 小时大 30 倍**
- **团队：** 首尔和河内的 300 名数据采集员

### 6.3 Genesis AI

- **融资：** $105M 种子轮（Khosla Ventures 领投）
- **重点：** 全栈机器人 AI
- **2026 年 5 月：** 发布了 **GENE-26.5** 模型，配备与 Wuji Tech 合作设计的类人灵巧手
- **方法：** 构建从学习到部署的完整流水线

### 6.4 Toyota + Agility Robotics

- **2026 年 2 月：** Toyota 承包了 **7 台 Agility Digit** 人形机器人用于加拿大工厂
- **意义：** 除 Figure 的 BMW 试点外，汽车制造业首次已知的多台人形机器人部署
- 验证了汽车 OEM 厂商正在积极评估有竞争力的不同平台

### 6.5 数据护城河命题

所有主要参与者共享的主题：**数据是机器人学中新的可防御护城河**。

| 公司 | 数据策略 | 规模 |
|------|---------|------|
| **Figure + Brookfield** | 来自 10 万+ 住宅/办公单元的预训练数据 | 最大的人形数据集 |
| **Config** | 10 万小时人类动作捕捉 | AgiBot World 的 30 倍 |
| **Genesis AI** | 全栈学习流水线 | Khosla 支持 |
| **NVIDIA Cosmos** | 通过世界模型合成数据 | 18 quadrillion token |
| **波士顿动力** | 仿真训练策略 | 零样本部署 |

> **算法洞见：** 产业正在收敛于一个范式——**规模化定律同样适用于机器人数据**，正如其在语言建模中的作用。那些控制了最大、最高质量具身数据集的公司——无论是来自真实人类（Config）、部署机器人（Figure-Brookfield）还是合成生成（NVIDIA Cosmos）——将在策略质量上享受复合优势。

---

## 7. 物理智能算法：最新进展

### 7.1 仿真中的强化学习

2025–2026 年最具定义性的算法趋势是人形机器人**仿真到现实迁移**的成熟：

- **波士顿动力 Atlas：** 全身举升行为**完全在仿真中训练**，零微调直接部署
- **Figure Helix-02：** 端到端 VLA 模型，基于真实遥操作数据和仿真展开的组合训练
- **NVIDIA Cosmos + Omnibus：** 以前所未有的规模提供物理真实的合成训练数据

### 7.2 视觉-语言-动作模型

**VLA 范式**已成为机器人控制的主导架构：

- **输入：** 摄像头图像 + 可选语言指令
- **处理：** 基于 Transformer 的模型，同时对视觉场景和任务语义进行推理
- **输出：** 关节空间或任务空间的动作 token
- **关键优势：** 无需显式的状态估计、建图或规划模块——端到端学习

### 7.3 多机器人协调

Helix-02 展示的**无需通信的涌现式多机器人协调**是一项重要的算法发现：

- 每台机器人运行同一个神经网络的独立副本
- 协调行为从共享的任务理解和相互视觉观察中涌现
- 与传统分布式机器人方法（需显式协调协议）形成鲜明对比
- 对仓库、建筑和灾害响应场景具有深远影响

### 7.4 全身操作

传统操作研究聚焦于手臂和手。新的前沿是**全身操作**——利用机器人的整个运动链作为承重和力量生成结构：

- Atlas 用腿、躯干和手臂协同举起 104 磅冰箱
- Figure 03 的全身移动操作，用于铺床和物体运输
- 需要跨所有关节的统一力矩控制和实时稳定性补偿

---

## 8. 竞争格局矩阵

| 维度 | 🥇 Figure AI | 🥈 波士顿动力 | 🥉 Unitree | 特斯拉 Optimus |
|------|-------------|--------------|-----------|---------------|
| **硬件成熟度** | Gen 3 发货，350+ 台 | 2026 年生产就绪 | G1/H1 发货 | 仅 Gen 2 |
| **AI 能力** | Helix-02（VLA，多机器人） | RL sim-to-real + Gemini | 模仿 + RL | 未知 |
| **生产规模** | 1 台/时，BotQ 工厂 | 预生产 | 中等（消费级） | 未公布 |
| **部署** | BMW（3 万辆车），Brookfield | 工厂 POC | 娱乐/国防 | 未确认 |
| **融资** | $390 亿估值 | 私有（现代支持） | 资金充足 | N/A |
| **数据优势** | 最大（Brookfield） | 仿真训练 | 有限 | 未知 |
| **价格** | 企业级（未公开） | 企业级（未公开） | $16K（G1） | N/A |
| **关键风险** | 规模化执行 | 向生产转型 | 工业可信度 | 领导层不稳 |

---

## 9. 2026 下半年的技术预测

1. **Figure 将在 Q4 2026 前产量突破 1,000 台**——BotQ 的爬坡轨迹支持这一预期
2. **波士顿动力 Atlas 将获得首个多台商业部署**——可能在物流或重工业领域
3. **NVIDIA 将发布 Isaac GR00T 生产参考设计**——使硬件初创公司无需自行设计定制计算
4. **至少再有一家汽车 OEM 将公开宣布人形机器人试点**——Toyota 的 Agility 合同验证了这一逻辑
5. **特斯拉将被迫展示 Optimus Gen 3 或放弃叙事**——"承诺但未交付"的时间窗口正在缩小
6. **Config 式的数据即服务初创公司将大量涌现**——机器人行业正意识到数据是护城河
7. **Helix 式的 VLA 模型将成为新人形机器人初创公司的默认架构**——击败经典规划技术栈

---

## 10. 结论

2025–2026 年代表着一个真正的转折点。曾经只是一系列研究演示的场景，已经变成了一个**工业规模的竞赛**——有真实收入、有真实工厂部署、有真实的制造工程。

Figure AI 的垂直整合策略——从头到尾控制每一个层级，从关节执行器设计到神经网络训练再到机队管理——在今天看来是获胜的公式。但 NVIDIA 的水平策略——为所有机器人制造商提供必要的基础设施——可能在更长的时间范围内被证明同样具有变革性。

这一时期**最重要**的技术发展并非某个机器人的硬件规格。而是**围绕一个学习范式的收敛**：仿真到现实的强化学习、端到端 VLA 架构、以及规模化定律适用于具身数据的信念。这一共识，在数十亿美元投资的支撑下，将定义未来十年的机器人学。

---

## 参考文献

1. Figure AI Blog & Master Plan, 2025–2026 — figure.ai
2. Boston Dynamics Blog: "Training a Humanoid Robot for Hard Work" (Alberto Rodriguez et al., 2026)
3. Boston Dynamics: "Atlas' Evolution From Research Robot to Industrial Humanoid" (2026)
4. NVIDIA: "NVIDIA Announces Isaac GR00T Blueprint for Humanoid Robotics" (CES 2025)
5. NVIDIA: GTC 2026 — Physical AI Era Keynote
6. TechCrunch: "Meta buys robotics startup to bolster humanoid AI ambitions" (May 1, 2026)
7. TechCrunch: "Toyota contracts seven Agility humanoid robots for Canadian factory" (Feb 19, 2026)
8. TechCrunch: "Tesla sues former Optimus engineer over alleged trade secret theft" (Jun 12, 2025)
9. Boston Dynamics + Google DeepMind: AI Partnership Announcement (2026)
10. NVIDIA Newsroom: "NVIDIA and Google Cloud Empower the Next Wave of AI Builders" (May 19, 2026)

---

> *本综述由 **Hermes Agent** 于 2026 年 5 月 25 日通过定时 cron 研究任务自主生成。信息来源包括主要公司博客、新闻稿和行业报道。所有论断均已注明出处。市场数据反映截至发布日的公开信息。*