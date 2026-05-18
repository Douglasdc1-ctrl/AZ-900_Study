<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Plano de Estudos AZ-900 · Microsoft Azure Fundamentals</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500&family=Instrument+Serif&display=swap" rel="stylesheet">
<style>
/* ============ RESET & BASE ============ */
* { margin: 0; padding: 0; box-sizing: border-box; }
html { scroll-behavior: smooth; }
body {
  font-family: 'Space Grotesk', system-ui, sans-serif;
  background: #0a0e1a;
  color: #e8eaf0;
  line-height: 1.6;
  overflow-x: hidden;
  min-height: 100vh;
}

/* Atmospheric backdrop */
body::before {
  content: '';
  position: fixed;
  inset: 0;
  background:
    radial-gradient(ellipse 80% 50% at 20% 0%, rgba(0, 120, 215, 0.18), transparent 60%),
    radial-gradient(ellipse 60% 40% at 80% 100%, rgba(95, 45, 200, 0.15), transparent 60%),
    radial-gradient(ellipse 40% 30% at 100% 0%, rgba(0, 188, 242, 0.08), transparent 60%);
  pointer-events: none;
  z-index: -2;
}
body::after {
  content: '';
  position: fixed;
  inset: 0;
  background-image:
    linear-gradient(rgba(255,255,255,0.02) 1px, transparent 1px),
    linear-gradient(90deg, rgba(255,255,255,0.02) 1px, transparent 1px);
  background-size: 60px 60px;
  pointer-events: none;
  z-index: -1;
}

/* ============ LAYOUT ============ */
.wrap { max-width: 1240px; margin: 0 auto; padding: 0 32px; }

/* ============ HERO ============ */
.hero {
  padding: 80px 0 56px;
  position: relative;
  border-bottom: 1px solid rgba(255,255,255,0.08);
}

.hero-badge {
  display: inline-flex; align-items: center; gap: 8px;
  padding: 6px 14px;
  background: rgba(0, 120, 215, 0.12);
  border: 1px solid rgba(0, 120, 215, 0.35);
  border-radius: 100px;
  font-size: 12px;
  font-weight: 500;
  color: #5cb3ff;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  margin-bottom: 24px;
}
.hero-badge::before {
  content: '';
  width: 6px; height: 6px; border-radius: 50%;
  background: #5cb3ff;
  box-shadow: 0 0 12px #5cb3ff;
  animation: pulse 2s ease infinite;
}
@keyframes pulse { 0%,100%{opacity:1} 50%{opacity:0.4} }

.hero h1 {
  font-size: clamp(42px, 7vw, 78px);
  font-weight: 600;
  line-height: 0.98;
  letter-spacing: -0.03em;
  margin-bottom: 16px;
}
.hero h1 .accent {
  font-family: 'Instrument Serif', serif;
  font-weight: 400;
  font-style: italic;
  color: #5cb3ff;
}
.hero-sub {
  font-size: 18px;
  color: #a0a8bc;
  max-width: 580px;
  margin-bottom: 40px;
}

/* Stats grid */
.hero-stats {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 1px;
  background: rgba(255,255,255,0.08);
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 16px;
  overflow: hidden;
  margin-bottom: 32px;
}
.stat {
  background: #0d1220;
  padding: 24px 20px;
  transition: background 0.3s;
}
.stat:hover { background: #121830; }
.stat-num {
  font-size: 38px;
  font-weight: 600;
  letter-spacing: -0.02em;
  color: #fff;
  font-family: 'JetBrains Mono', monospace;
}
.stat-label {
  font-size: 12px;
  color: #7d849b;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  margin-top: 4px;
}

/* Progress */
.progress-wrap {
  background: #0d1220;
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 16px;
  padding: 20px 24px;
  display: flex;
  align-items: center;
  gap: 20px;
  flex-wrap: wrap;
}
.progress-info { flex: 1; min-width: 200px; }
.progress-info-title { font-size: 13px; color: #a0a8bc; margin-bottom: 6px; }
.progress-info-num { font-size: 22px; font-weight: 600; font-family: 'JetBrains Mono', monospace; }
.progress-bar-outer {
  flex: 2;
  min-width: 240px;
  height: 10px;
  background: rgba(255,255,255,0.06);
  border-radius: 100px;
  overflow: hidden;
  position: relative;
}
.progress-bar-inner {
  height: 100%;
  background: linear-gradient(90deg, #0078d7, #5cb3ff, #00bcf2);
  border-radius: 100px;
  width: 0%;
  transition: width 0.6s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 0 20px rgba(0, 188, 242, 0.4);
}
.progress-pct {
  font-size: 32px;
  font-weight: 600;
  font-family: 'JetBrains Mono', monospace;
  color: #5cb3ff;
}

/* ============ ROADMAP NAV ============ */
.roadmap {
  padding: 56px 0 40px;
  border-bottom: 1px solid rgba(255,255,255,0.08);
}
.section-title-small {
  font-size: 11px;
  text-transform: uppercase;
  letter-spacing: 0.15em;
  color: #5cb3ff;
  margin-bottom: 12px;
  font-weight: 500;
}
.section-title-big {
  font-size: 36px;
  font-weight: 600;
  letter-spacing: -0.02em;
  margin-bottom: 8px;
}
.section-title-big .serif {
  font-family: 'Instrument Serif', serif;
  font-weight: 400;
  font-style: italic;
  color: #a0a8bc;
}
.section-desc { color: #a0a8bc; margin-bottom: 40px; font-size: 16px; max-width: 720px; }

.roadmap-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 16px;
}
.rm-card {
  background: #0d1220;
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 12px;
  padding: 20px;
  cursor: pointer;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  position: relative;
  overflow: hidden;
  text-decoration: none;
  color: inherit;
  display: block;
}
.rm-card::before {
  content: '';
  position: absolute;
  top: 0; left: 0; right: 0;
  height: 3px;
  background: var(--card-color);
  transform: translateY(-100%);
  transition: transform 0.3s;
}
.rm-card:hover { transform: translateY(-4px); border-color: rgba(255,255,255,0.2); }
.rm-card:hover::before { transform: translateY(0); }
.rm-num {
  font-family: 'JetBrains Mono', monospace;
  font-size: 11px;
  color: var(--card-color);
  margin-bottom: 8px;
  letter-spacing: 0.1em;
}
.rm-title {
  font-size: 15px;
  font-weight: 500;
  margin-bottom: 8px;
  line-height: 1.3;
}
.rm-meta { font-size: 12px; color: #7d849b; }

/* ============ SECTIONS ============ */
.content { padding: 56px 0 80px; }

.section {
  margin-bottom: 32px;
  scroll-margin-top: 24px;
}

.section-header {
  background: #0d1220;
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 16px 16px 0 0;
  padding: 28px 32px;
  cursor: pointer;
  display: flex;
  align-items: center;
  gap: 20px;
  transition: background 0.2s;
  position: relative;
  overflow: hidden;
}
.section-header:hover { background: #121830; }
.section-header::before {
  content: '';
  position: absolute;
  left: 0; top: 0; bottom: 0;
  width: 4px;
  background: var(--sec-color);
}
.section-number {
  font-family: 'JetBrains Mono', monospace;
  font-size: 13px;
  color: var(--sec-color);
  font-weight: 500;
  letter-spacing: 0.1em;
  min-width: 50px;
}
.section-info { flex: 1; min-width: 0; }
.section-info h2 {
  font-size: 22px;
  font-weight: 600;
  letter-spacing: -0.01em;
  margin-bottom: 6px;
}
.section-info p { font-size: 14px; color: #a0a8bc; }
.section-tags { display: flex; gap: 8px; flex-wrap: wrap; }
.tag {
  padding: 4px 10px;
  background: rgba(255,255,255,0.05);
  border: 1px solid rgba(255,255,255,0.1);
  border-radius: 6px;
  font-size: 11px;
  color: #c0c6d8;
  font-family: 'JetBrains Mono', monospace;
}
.chevron {
  font-size: 12px;
  color: #7d849b;
  transition: transform 0.3s;
  margin-left: auto;
}
.section.open .chevron { transform: rotate(180deg); }

.section-body {
  display: none;
  background: #080c18;
  border: 1px solid rgba(255,255,255,0.08);
  border-top: none;
  border-radius: 0 0 16px 16px;
  padding: 32px;
}
.section.open .section-body { display: block; animation: fadeIn 0.4s ease; }
@keyframes fadeIn { from { opacity: 0; transform: translateY(-8px); } to { opacity: 1; transform: translateY(0); } }

/* ============ TOPICS ============ */
.topics-intro {
  background: rgba(0, 120, 215, 0.06);
  border-left: 2px solid #5cb3ff;
  padding: 16px 20px;
  border-radius: 0 8px 8px 0;
  margin-bottom: 28px;
  font-size: 14px;
  color: #c0c6d8;
}
.topics-intro strong { color: #5cb3ff; }

.topics-list { display: flex; flex-direction: column; gap: 12px; margin-bottom: 32px; }
.topic {
  background: #0d1220;
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 10px;
  overflow: hidden;
  transition: border-color 0.2s;
}
.topic:hover { border-color: rgba(255,255,255,0.15); }
.topic.checked { border-color: rgba(34, 197, 94, 0.3); background: rgba(34, 197, 94, 0.03); }

.topic-head {
  padding: 16px 20px;
  display: flex;
  align-items: flex-start;
  gap: 14px;
  cursor: pointer;
}
.topic-check {
  width: 22px; height: 22px;
  border: 1.5px solid rgba(255,255,255,0.25);
  border-radius: 6px;
  flex-shrink: 0;
  margin-top: 2px;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.2s;
  background: transparent;
}
.topic-check:hover { border-color: #5cb3ff; }
.topic.checked .topic-check {
  background: #22c55e;
  border-color: #22c55e;
}
.topic.checked .topic-check::after {
  content: '✓';
  color: white;
  font-size: 13px;
  font-weight: 700;
}

.topic-body { flex: 1; min-width: 0; }
.topic-title {
  font-size: 15px;
  font-weight: 500;
  margin-bottom: 4px;
}
.topic-short {
  font-size: 13px;
  color: #a0a8bc;
  line-height: 1.5;
}
.topic-time {
  display: inline-flex;
  align-items: center;
  gap: 4px;
  background: rgba(95, 45, 200, 0.15);
  color: #b89eff;
  padding: 3px 10px;
  border-radius: 100px;
  font-size: 11px;
  font-family: 'JetBrains Mono', monospace;
  white-space: nowrap;
  margin-top: 8px;
}
.topic-expand {
  font-size: 11px;
  color: #5cb3ff;
  background: none;
  border: none;
  cursor: pointer;
  padding: 0;
  margin-top: 8px;
  margin-left: 12px;
  font-family: inherit;
}
.topic-expand:hover { text-decoration: underline; }

.topic-detail {
  display: none;
  padding: 0 20px 20px 56px;
  border-top: 1px dashed rgba(255,255,255,0.08);
  margin-top: 0;
  padding-top: 16px;
  font-size: 14px;
  color: #c0c6d8;
  line-height: 1.7;
}
.topic.expanded .topic-detail { display: block; animation: fadeIn 0.3s ease; }

.topic-detail h4 {
  font-size: 13px;
  color: #5cb3ff;
  margin: 16px 0 8px;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-weight: 500;
}
.topic-detail h4:first-child { margin-top: 0; }
.topic-detail ul { margin-left: 20px; margin-bottom: 12px; }
.topic-detail li { margin-bottom: 6px; }
.topic-detail code {
  background: rgba(255,255,255,0.06);
  padding: 2px 6px;
  border-radius: 4px;
  font-family: 'JetBrains Mono', monospace;
  font-size: 12px;
  color: #5cb3ff;
}
.topic-detail .key-point {
  background: rgba(255, 193, 7, 0.08);
  border-left: 2px solid #ffc107;
  padding: 10px 14px;
  border-radius: 0 6px 6px 0;
  margin: 12px 0;
  font-size: 13px;
}
.topic-detail .key-point strong { color: #ffc107; }

/* ============ QUIZ ============ */
.quiz-trigger {
  background: linear-gradient(135deg, var(--sec-color), var(--sec-color2, var(--sec-color)));
  border: none;
  color: white;
  padding: 14px 24px;
  border-radius: 10px;
  font-size: 14px;
  font-weight: 500;
  cursor: pointer;
  font-family: inherit;
  display: inline-flex;
  align-items: center;
  gap: 10px;
  transition: transform 0.2s, box-shadow 0.2s;
  box-shadow: 0 4px 16px rgba(0, 120, 215, 0.25);
}
.quiz-trigger:hover { transform: translateY(-2px); box-shadow: 0 6px 24px rgba(0, 120, 215, 0.4); }
.quiz-trigger::after { content: '→'; transition: transform 0.2s; }
.quiz-trigger:hover::after { transform: translateX(4px); }

.quiz-panel {
  display: none;
  background: #0d1220;
  border: 1px solid rgba(92, 179, 255, 0.3);
  border-radius: 12px;
  padding: 28px;
  margin-top: 20px;
  animation: fadeIn 0.4s ease;
}
.quiz-panel.active { display: block; }

.quiz-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 24px;
  padding-bottom: 16px;
  border-bottom: 1px solid rgba(255,255,255,0.08);
}
.quiz-header-title { font-size: 16px; font-weight: 500; }
.quiz-counter {
  font-family: 'JetBrains Mono', monospace;
  font-size: 13px;
  color: #7d849b;
}
.quiz-progress {
  height: 4px;
  background: rgba(255,255,255,0.06);
  border-radius: 100px;
  margin-bottom: 24px;
  overflow: hidden;
}
.quiz-progress-inner {
  height: 100%;
  background: #5cb3ff;
  width: 0%;
  transition: width 0.4s ease;
}

.q-text {
  font-size: 17px;
  font-weight: 500;
  line-height: 1.5;
  margin-bottom: 20px;
  color: #fff;
}

.q-options { display: flex; flex-direction: column; gap: 10px; }
.q-opt {
  background: #080c18;
  border: 1.5px solid rgba(255,255,255,0.08);
  border-radius: 10px;
  padding: 14px 18px;
  cursor: pointer;
  display: flex;
  align-items: center;
  gap: 14px;
  transition: all 0.2s;
  font-family: inherit;
  font-size: 14px;
  text-align: left;
  color: #e8eaf0;
  width: 100%;
}
.q-opt:hover:not(.disabled) {
  border-color: #5cb3ff;
  background: rgba(92, 179, 255, 0.05);
}
.q-opt-letter {
  width: 28px; height: 28px;
  border-radius: 50%;
  background: rgba(255,255,255,0.06);
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: 'JetBrains Mono', monospace;
  font-size: 12px;
  font-weight: 500;
  flex-shrink: 0;
}
.q-opt.correct {
  border-color: #22c55e;
  background: rgba(34, 197, 94, 0.08);
}
.q-opt.correct .q-opt-letter { background: #22c55e; color: white; }
.q-opt.wrong {
  border-color: #ef4444;
  background: rgba(239, 68, 68, 0.08);
}
.q-opt.wrong .q-opt-letter { background: #ef4444; color: white; }
.q-opt.disabled { cursor: default; }

.q-feedback {
  display: none;
  margin-top: 20px;
  padding: 16px 20px;
  border-radius: 10px;
  font-size: 14px;
  line-height: 1.6;
}
.q-feedback.show { display: block; animation: fadeIn 0.3s ease; }
.q-feedback.ok { background: rgba(34, 197, 94, 0.08); border: 1px solid rgba(34, 197, 94, 0.3); color: #86efac; }
.q-feedback.fail { background: rgba(239, 68, 68, 0.08); border: 1px solid rgba(239, 68, 68, 0.3); color: #fca5a5; }
.q-feedback-title { font-weight: 600; margin-bottom: 6px; display: flex; align-items: center; gap: 6px; }

.q-nav { display: flex; justify-content: space-between; align-items: center; margin-top: 24px; }
.q-btn {
  background: rgba(255,255,255,0.05);
  border: 1px solid rgba(255,255,255,0.1);
  color: #e8eaf0;
  padding: 10px 20px;
  border-radius: 8px;
  font-size: 13px;
  cursor: pointer;
  font-family: inherit;
  transition: all 0.2s;
}
.q-btn:hover:not(:disabled) { background: rgba(255,255,255,0.08); border-color: rgba(255,255,255,0.2); }
.q-btn:disabled { opacity: 0.3; cursor: not-allowed; }
.q-btn.primary {
  background: #5cb3ff;
  color: #0a0e1a;
  border-color: #5cb3ff;
  font-weight: 500;
}
.q-btn.primary:hover { background: #7ac1ff; }

.q-score {
  text-align: center;
  padding: 32px 20px;
}
.q-score-icon { font-size: 48px; margin-bottom: 12px; }
.q-score-num {
  font-size: 48px;
  font-weight: 600;
  font-family: 'JetBrains Mono', monospace;
  margin-bottom: 4px;
}
.q-score-num.pass { color: #22c55e; }
.q-score-num.fail { color: #ef4444; }
.q-score-msg { color: #a0a8bc; margin-bottom: 24px; font-size: 14px; }

/* ============ FOOTER TIPS ============ */
.tips {
  padding: 56px 0 80px;
  border-top: 1px solid rgba(255,255,255,0.08);
  background: linear-gradient(180deg, transparent, rgba(0, 120, 215, 0.04));
}
.tips-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 16px;
  margin-top: 32px;
}
.tip-card {
  background: #0d1220;
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 12px;
  padding: 24px;
  transition: all 0.3s;
}
.tip-card:hover { transform: translateY(-4px); border-color: rgba(92, 179, 255, 0.3); }
.tip-icon {
  width: 40px; height: 40px;
  border-radius: 10px;
  background: rgba(92, 179, 255, 0.12);
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 16px;
  font-size: 18px;
}
.tip-card h3 { font-size: 16px; font-weight: 500; margin-bottom: 8px; }
.tip-card p { font-size: 13px; color: #a0a8bc; line-height: 1.6; }

footer {
  padding: 40px 0;
  text-align: center;
  border-top: 1px solid rgba(255,255,255,0.08);
  color: #7d849b;
  font-size: 13px;
}
footer strong { color: #e8eaf0; }

/* ============ RESPONSIVE ============ */
@media (max-width: 768px) {
  .wrap { padding: 0 20px; }
  .hero { padding: 56px 0 40px; }
  .hero-stats { grid-template-columns: repeat(2, 1fr); }
  .section-header { padding: 20px; flex-wrap: wrap; }
  .section-body { padding: 20px; }
  .topic-detail { padding-left: 20px; }
  .q-nav { flex-wrap: wrap; gap: 12px; }
}
</style>
</head>
<body>

<!-- ========== HERO ========== -->
<section class="hero">
  <div class="wrap">
    <div class="hero-badge">Microsoft Certified · Fundamentals</div>
    <h1>AZ-900<br><span class="accent">Azure Fundamentals</span></h1>
    <p class="hero-sub">Plano de estudos completo e interativo para sua certificação. 42 tópicos organizados em 5 seções, com explicações detalhadas, tempo estimado e quiz em cada módulo.</p>

    <div class="hero-stats">
      <div class="stat">
        <div class="stat-num">42</div>
        <div class="stat-label">Tópicos</div>
      </div>
      <div class="stat">
        <div class="stat-num">~26h</div>
        <div class="stat-label">De estudo</div>
      </div>
      <div class="stat">
        <div class="stat-num">25</div>
        <div class="stat-label">Questões quiz</div>
      </div>
      <div class="stat">
        <div class="stat-num">700</div>
        <div class="stat-label">Pontos p/ passar</div>
      </div>
    </div>

    <div class="progress-wrap">
      <div class="progress-info">
        <div class="progress-info-title">Seu progresso geral</div>
        <div class="progress-info-num" id="progressText">0 de 42 tópicos</div>
      </div>
      <div class="progress-bar-outer"><div class="progress-bar-inner" id="progressBar"></div></div>
      <div class="progress-pct" id="progressPct">0%</div>
    </div>
  </div>
</section>

<!-- ========== ROADMAP ========== -->
<section class="roadmap">
  <div class="wrap">
    <div class="section-title-small">Roteiro</div>
    <h2 class="section-title-big">5 seções, <span class="serif">do zero ao certificado</span></h2>
    <p class="section-desc">Clique em qualquer módulo abaixo para ir direto ao conteúdo. A ordem sugerida segue o peso do exame oficial da Microsoft.</p>

    <div class="roadmap-grid">
      <a href="#s1" class="rm-card" style="--card-color:#22c55e">
        <div class="rm-num">SEÇÃO 01</div>
        <div class="rm-title">Conceitos de nuvem</div>
        <div class="rm-meta">8 tópicos · ~5h · 20-25%</div>
      </a>
      <a href="#s2" class="rm-card" style="--card-color:#5cb3ff">
        <div class="rm-num">SEÇÃO 02</div>
        <div class="rm-title">Arquitetura e serviços Azure</div>
        <div class="rm-meta">10 tópicos · ~10h · 35-40%</div>
      </a>
      <a href="#s3" class="rm-card" style="--card-color:#f59e0b">
        <div class="rm-num">SEÇÃO 03</div>
        <div class="rm-title">Gerenciamento e governança</div>
        <div class="rm-meta">10 tópicos · ~7h · 30-35%</div>
      </a>
      <a href="#s4" class="rm-card" style="--card-color:#ec4899">
        <div class="rm-num">SEÇÃO 04</div>
        <div class="rm-title">Segurança no Azure</div>
        <div class="rm-meta">6 tópicos · ~4h · 10-15%</div>
      </a>
      <a href="#s5" class="rm-card" style="--card-color:#a78bfa">
        <div class="rm-num">SEÇÃO 05</div>
        <div class="rm-title">SLA e ciclo de vida</div>
        <div class="rm-meta">6 tópicos · ~2.5h · ~10%</div>
      </a>
    </div>
  </div>
</section>

<!-- ========== SECTIONS CONTENT ========== -->
<section class="content">
  <div class="wrap">
    <div id="sectionsContainer"></div>
  </div>
</section>

<!-- ========== TIPS ========== -->
<section class="tips">
  <div class="wrap">
    <div class="section-title-small">Dicas finais</div>
    <h2 class="section-title-big">Para o dia <span class="serif">da prova</span></h2>

    <div class="tips-grid">
      <div class="tip-card">
        <div class="tip-icon">⏱</div>
        <h3>Gerencie o tempo</h3>
        <p>São 45 minutos para 40-60 questões. Não gaste mais de 1 minuto em cada uma; marque as difíceis para revisar ao final.</p>
      </div>
      <div class="tip-card">
        <div class="tip-icon">🧩</div>
        <h3>Leia com atenção</h3>
        <p>Palavras-chave como "menor custo", "alta disponibilidade" ou "multi-região" geralmente direcionam para a resposta correta.</p>
      </div>
      <div class="tip-card">
        <div class="tip-icon">🎯</div>
        <h3>Use Microsoft Learn</h3>
        <p>O Microsoft Learn possui trilhas gratuitas oficiais para AZ-900 com laboratórios práticos. Complete-as antes da prova.</p>
      </div>
      <div class="tip-card">
        <div class="tip-icon">💡</div>
        <h3>Foque na seção 2</h3>
        <p>Arquitetura e serviços representam 35-40% do exame. Conheça os principais serviços e quando usar cada um.</p>
      </div>
      <div class="tip-card">
        <div class="tip-icon">🔄</div>
        <h3>Faça simulados</h3>
        <p>Resolva pelo menos 3 simulados completos antes da prova. Revise as questões que errou e entenda o motivo.</p>
      </div>
      <div class="tip-card">
        <div class="tip-icon">🎓</div>
        <h3>Pontuação mínima</h3>
        <p>Você precisa de 700/1000 para passar. Busque pelo menos 80% de acerto nos simulados para ir tranquilo na prova.</p>
      </div>
    </div>
  </div>
</section>

<footer>
  <div class="wrap">
    Plano de estudos AZ-900 · <strong>Microsoft Azure Fundamentals</strong><br>
    Seu progresso é salvo automaticamente no navegador
  </div>
</footer>

<script>
// ============ DATA ============
const SECTIONS = [
  {
    id: 's1',
    num: '01',
    title: 'Conceitos fundamentais de nuvem',
    subtitle: 'A base de tudo: entenda o que é computação em nuvem',
    color: '#22c55e',
    color2: '#16a34a',
    time: '~5 horas',
    pct: '20-25% do exame',
    intro: 'Esta é a seção <strong>conceitual</strong> da prova. Não trata de serviços específicos do Azure, mas sim dos princípios que definem o que é computação em nuvem, seus modelos e benefícios. Domine bem aqui — muitas questões são puramente conceituais.',
    topics: [
      {
        id: 't1',
        title: 'O que é computação em nuvem',
        short: 'Definição, evolução e comparação com infraestrutura local.',
        time: '30 min',
        detail: `
          <h4>Definição</h4>
          <p>Computação em nuvem é a entrega de <strong>serviços de TI pela internet</strong> (servidores, armazenamento, bancos de dados, rede, software, análise, inteligência) sob demanda, pagando apenas pelo que usa.</p>

          <h4>Comparação com on-premises</h4>
          <ul>
            <li><strong>On-premises:</strong> você compra, mantém e atualiza tudo — hardware, licenças, energia, refrigeração, segurança física.</li>
            <li><strong>Nuvem:</strong> o provedor cuida da infraestrutura; você consome como serviço e escala conforme necessário.</li>
          </ul>

          <div class="key-point"><strong>Ponto-chave:</strong> a nuvem é autosserviço sob demanda. Você provisiona recursos em minutos sem precisar ligar para ninguém.</div>
        `
      },
      {
        id: 't2',
        title: 'Modelo de responsabilidade compartilhada',
        short: 'Quem cuida do quê entre você e a Microsoft.',
        time: '20 min',
        detail: `
          <h4>O conceito</h4>
          <p>Na nuvem, a responsabilidade pela segurança e operação é <strong>dividida</strong> entre o provedor (Microsoft) e o cliente (você). O que cada um gerencia depende do modelo de serviço (IaaS, PaaS ou SaaS).</p>

          <h4>Sempre é do cliente</h4>
          <ul>
            <li>Seus <strong>dados</strong></li>
            <li>Seus <strong>endpoints</strong> (dispositivos que acessam)</li>
            <li>Suas <strong>contas e identidades</strong></li>
            <li>Gerenciamento de <strong>acesso</strong></li>
          </ul>

          <h4>Sempre é do provedor</h4>
          <ul>
            <li>Datacenters físicos</li>
            <li>Rede física</li>
            <li>Hosts físicos</li>
          </ul>

          <div class="key-point"><strong>Regra de ouro:</strong> quanto mais "serviço" o modelo oferecer (IaaS → PaaS → SaaS), mais a Microsoft gerencia e menos você precisa se preocupar.</div>
        `
      },
      {
        id: 't3',
        title: 'Nuvem pública, privada e híbrida',
        short: 'Os três modelos de implantação e quando usar cada um.',
        time: '40 min',
        detail: `
          <h4>Pública</h4>
          <p>Recursos compartilhados por múltiplos clientes (tenants) via internet. Ex.: Azure, AWS. <strong>Menor custo</strong>, escalabilidade máxima, sem manutenção.</p>

          <h4>Privada</h4>
          <p>Infraestrutura dedicada a uma única organização, geralmente on-premises ou em um datacenter de terceiros. <strong>Maior controle</strong>, ideal para conformidade rigorosa, mas com custos mais altos.</p>

          <h4>Híbrida</h4>
          <p>Combina nuvem pública e privada, com <strong>comunicação entre elas</strong>. Permite rodar cargas sensíveis no privado e aproveitar a escala do público para o restante.</p>

          <h4>Multi-cloud</h4>
          <p>Uso simultâneo de <strong>dois ou mais provedores públicos</strong> (ex.: Azure + AWS). Evita dependência única de fornecedor (vendor lock-in).</p>

          <div class="key-point"><strong>Dica de prova:</strong> se a questão menciona "integrar com datacenter existente" ou "migração gradual" → <code>híbrida</code>.</div>
        `
      },
      {
        id: 't4',
        title: 'Modelo baseado em consumo (CapEx vs OpEx)',
        short: 'A transformação financeira que a nuvem trouxe para a TI.',
        time: '25 min',
        detail: `
          <h4>CapEx (Capital Expenditure)</h4>
          <p><strong>Despesa de capital</strong>: investimento inicial alto em ativos físicos (servidores, datacenter). Valor depreciado ao longo de anos.</p>

          <h4>OpEx (Operational Expenditure)</h4>
          <p><strong>Despesa operacional</strong>: pagamento recorrente por serviços consumidos (mensalmente). Sem investimento inicial.</p>

          <h4>Modelo baseado em consumo</h4>
          <ul>
            <li>Pay-as-you-go: paga pelo uso real</li>
            <li>Sem compromisso de longo prazo</li>
            <li>Escala para cima e para baixo conforme necessidade</li>
            <li>Previsibilidade maior de custos operacionais</li>
          </ul>

          <div class="key-point"><strong>Para a prova:</strong> nuvem transforma <code>CapEx → OpEx</code>. Essa conversão é um dos principais drivers de adoção de cloud.</div>
        `
      },
      {
        id: 't5',
        title: 'Alta disponibilidade e escalabilidade',
        short: 'Os pilares de um serviço sempre disponível.',
        time: '35 min',
        detail: `
          <h4>Alta disponibilidade (HA)</h4>
          <p>Capacidade do sistema permanecer <strong>operacional</strong> mesmo em caso de falhas. Medida em "noves" (99,9% = três noves).</p>

          <h4>Escalabilidade</h4>
          <ul>
            <li><strong>Vertical (scale up):</strong> aumenta recursos de uma máquina (CPU, RAM). Limite físico.</li>
            <li><strong>Horizontal (scale out):</strong> adiciona mais instâncias. Escala quase infinita.</li>
          </ul>

          <h4>Elasticidade</h4>
          <p>Escalabilidade <strong>automática</strong> baseada em demanda. Aumenta recursos no pico, reduz quando cai — tudo sem intervenção manual.</p>

          <div class="key-point"><strong>Lembre:</strong> HA = sempre disponível. Escalabilidade = capacidade de crescer. Elasticidade = crescer automaticamente.</div>
        `
      },
      {
        id: 't6',
        title: 'Confiabilidade, previsibilidade e segurança',
        short: 'Os pilares que tornam a nuvem pronta para produção.',
        time: '35 min',
        detail: `
          <h4>Confiabilidade</h4>
          <p>Capacidade de se <strong>recuperar de falhas</strong>. Inclui backup automático, replicação geográfica e failover. A natureza descentralizada da nuvem facilita a DR (Disaster Recovery).</p>

          <h4>Previsibilidade</h4>
          <ul>
            <li><strong>De desempenho:</strong> escalabilidade automática mantém qualidade do serviço.</li>
            <li><strong>De custo:</strong> ferramentas como Cost Management e TCO calculator ajudam a prever gastos.</li>
          </ul>

          <h4>Segurança e governança</h4>
          <p>Controles granulares de acesso (RBAC), políticas (Azure Policy), criptografia em trânsito e repouso, certificações de conformidade (ISO, SOC, HIPAA, GDPR).</p>

          <div class="key-point"><strong>Atenção:</strong> na prova, "confiabilidade" geralmente se refere a <code>tolerância a falhas e recuperação</code>, não a desempenho.</div>
        `
      },
      {
        id: 't7',
        title: 'Gerenciabilidade e agilidade',
        short: 'Como a nuvem acelera a entrega de valor.',
        time: '30 min',
        detail: `
          <h4>Gerenciabilidade na nuvem</h4>
          <ul>
            <li><strong>Pelo provedor:</strong> escalonamento automático, monitoramento, autoheal.</li>
            <li><strong>Pelo usuário:</strong> gerenciar por portal web, CLI, PowerShell, APIs REST ou templates (ARM, Bicep).</li>
          </ul>

          <h4>Agilidade</h4>
          <p>Provisionar uma VM que levaria semanas leva <strong>minutos</strong> na nuvem. Deploy de ambientes completos via código em horas. Isso acelera time-to-market de produtos e ideias.</p>

          <div class="key-point"><strong>Benefício-chave:</strong> agilidade é um dos principais motivadores estratégicos de migração, não apenas custo.</div>
        `
      },
      {
        id: 't8',
        title: 'IaaS, PaaS e SaaS',
        short: 'Os três modelos de serviço — o coração da prova.',
        time: '45 min',
        detail: `
          <h4>IaaS — Infrastructure as a Service</h4>
          <p>Provedor entrega infraestrutura virtualizada (VMs, redes, storage). Você gerencia <strong>SO, middleware, runtime, apps, dados</strong>.</p>
          <ul><li>Exemplo Azure: <code>Azure Virtual Machines</code>, <code>Azure Virtual Network</code></li></ul>

          <h4>PaaS — Platform as a Service</h4>
          <p>Provedor entrega plataforma pronta. Você cuida apenas de <strong>apps e dados</strong>. Ideal para desenvolvedores.</p>
          <ul><li>Exemplo Azure: <code>Azure App Service</code>, <code>Azure SQL Database</code>, <code>Azure Functions</code></li></ul>

          <h4>SaaS — Software as a Service</h4>
          <p>Software pronto, acessado por navegador. Você só usa — <strong>não gerencia nada</strong>.</p>
          <ul><li>Exemplo: <code>Microsoft 365</code>, <code>Outlook Online</code>, <code>Dynamics 365</code></li></ul>

          <div class="key-point"><strong>Regra prática para a prova:</strong><br>
          • Precisa de controle total do SO? → <code>IaaS</code><br>
          • Quer focar em código? → <code>PaaS</code><br>
          • Só quer usar? → <code>SaaS</code></div>
        `
      }
    ],
    quiz: [
      { q: 'Qual modelo de serviço transfere a maior parte da responsabilidade de gerenciamento para o provedor?', opts: ['IaaS', 'PaaS', 'SaaS', 'On-premises'], ans: 2, exp: 'Em SaaS, o provedor gerencia toda a pilha — infraestrutura, plataforma e aplicação. O cliente apenas usa o software pronto.' },
      { q: 'Uma empresa quer eliminar o investimento inicial em hardware. Qual conceito da nuvem atende a isso?', opts: ['Alta disponibilidade', 'Escalabilidade', 'Modelo baseado em consumo (OpEx)', 'Elasticidade'], ans: 2, exp: 'O modelo baseado em consumo (pay-as-you-go) transforma custos de capital (CapEx) em custos operacionais (OpEx), eliminando o investimento inicial em infraestrutura.' },
      { q: 'Qual modelo de nuvem permite rodar cargas sensíveis em datacenter próprio e cargas gerais na nuvem pública?', opts: ['Pública', 'Privada', 'Híbrida', 'Comunitária'], ans: 2, exp: 'A nuvem híbrida combina ambientes on-premises/privados com nuvem pública, permitindo escolher onde cada carga roda conforme requisitos de negócio e conformidade.' },
      { q: 'O que é elasticidade na nuvem?', opts: ['Capacidade de recuperação após falhas', 'Escalabilidade automática baseada em demanda', 'Facilidade de mover dados entre regiões', 'Garantia de disponibilidade em SLA'], ans: 1, exp: 'Elasticidade é a capacidade de aumentar ou reduzir recursos automaticamente de acordo com a demanda em tempo real, sem intervenção manual.' },
      { q: 'No modelo de responsabilidade compartilhada, quem é sempre responsável pelos dados do cliente?', opts: ['O provedor de nuvem', 'O cliente', 'Ambos, em partes iguais', 'Depende do modelo (IaaS/PaaS/SaaS)'], ans: 1, exp: 'Independentemente do modelo (IaaS, PaaS ou SaaS), o cliente é sempre responsável pelos seus dados, identidades, contas e endpoints. Isso nunca muda.' }
    ]
  },
  {
    id: 's2',
    num: '02',
    title: 'Arquitetura e serviços do Azure',
    subtitle: 'A seção mais pesada: conheça os serviços essenciais',
    color: '#5cb3ff',
    color2: '#0078d7',
    time: '~10 horas',
    pct: '35-40% do exame',
    intro: 'Esta é a <strong>maior seção da prova</strong>. Foque em entender a hierarquia de recursos, regiões, os principais serviços de compute/rede/storage e quando usar cada um. Muitas perguntas são do tipo "qual serviço resolve este cenário?".',
    topics: [
      {
        id: 't9',
        title: 'Regiões, pares de regiões e regiões soberanas',
        short: 'Como o Azure distribui seus datacenters pelo mundo.',
        time: '40 min',
        detail: `
          <h4>Região</h4>
          <p>Conjunto de datacenters conectados por rede dedicada de baixa latência em uma <strong>área geográfica</strong> (ex.: Brazil South, East US, West Europe).</p>

          <h4>Pares de regiões</h4>
          <ul>
            <li>Duas regiões dentro da mesma <strong>geografia</strong> (país ou continente).</li>
            <li>Separadas por no mínimo <strong>300 milhas</strong>.</li>
            <li>Replicação automática de alguns serviços entre elas (ex.: GRS storage).</li>
            <li>Atualizações aplicadas em <strong>sequência</strong> (nunca simultâneas) para evitar downtime.</li>
          </ul>

          <h4>Regiões soberanas</h4>
          <p>Isoladas fisicamente da nuvem Azure global, voltadas a requisitos legais específicos:</p>
          <ul>
            <li><strong>Azure Government</strong> (EUA)</li>
            <li><strong>Azure China</strong> (operado pela 21Vianet)</li>
          </ul>

          <div class="key-point"><strong>Para a prova:</strong> pares de regiões = recuperação de desastre e soberania de dados mantida na geografia.</div>
        `
      },
      {
        id: 't10',
        title: 'Zonas de disponibilidade e datacenters',
        short: 'Isolamento físico dentro de uma mesma região.',
        time: '35 min',
        detail: `
          <h4>Zona de Disponibilidade (Availability Zone)</h4>
          <p>Datacenter <strong>fisicamente separado</strong> dentro de uma região, com sua própria energia, refrigeração e rede. Cada região com suporte tem ao menos 3 zonas.</p>

          <h4>Para que servem</h4>
          <ul>
            <li>Proteger contra falhas de um datacenter inteiro.</li>
            <li>Aplicações que usam múltiplas zonas atingem SLA de <strong>99,99%</strong>.</li>
            <li>Ideal para HA dentro de uma mesma região.</li>
          </ul>

          <h4>Diferença: Zona × Região × Par de regiões</h4>
          <ul>
            <li><strong>Zona:</strong> protege contra falha de datacenter (dentro de uma região).</li>
            <li><strong>Região:</strong> protege contra problemas locais (natural disaster de uma cidade).</li>
            <li><strong>Par de regiões:</strong> protege contra desastre regional completo.</li>
          </ul>

          <div class="key-point"><strong>Lembre:</strong> zonas são para HA dentro da região; pares de regiões são para DR entre regiões.</div>
        `
      },
      {
        id: 't11',
        title: 'Recursos, grupos de recursos e assinaturas',
        short: 'A hierarquia de organização do Azure.',
        time: '45 min',
        detail: `
          <h4>Hierarquia completa (de baixo para cima)</h4>
          <ol style="margin-left:20px;">
            <li><strong>Recursos</strong> — itens individuais (VM, banco, storage)</li>
            <li><strong>Grupos de recursos</strong> — agrupam recursos relacionados</li>
            <li><strong>Assinaturas</strong> — unidade de faturamento e limites</li>
            <li><strong>Grupos de gerenciamento</strong> — agrupam múltiplas assinaturas</li>
            <li><strong>Tenant (Microsoft Entra ID)</strong> — topo da hierarquia</li>
          </ol>

          <h4>Regras importantes</h4>
          <ul>
            <li>Todo recurso <strong>deve</strong> estar em um grupo de recursos.</li>
            <li>Um recurso pertence a <strong>apenas um</strong> grupo de recursos.</li>
            <li>Grupos de recursos <strong>não podem</strong> ser aninhados.</li>
            <li>Ao excluir um grupo de recursos, <strong>todos os recursos dentro são excluídos</strong>.</li>
            <li>Políticas e RBAC aplicados a um nível são <strong>herdados</strong> pelos níveis inferiores.</li>
          </ul>

          <div class="key-point"><strong>Dica:</strong> grupos de gerenciamento são úteis para aplicar políticas globais em dezenas de assinaturas de uma só vez.</div>
        `
      },
      {
        id: 't12',
        title: 'Máquinas Virtuais (Azure VMs)',
        short: 'O serviço IaaS mais clássico do Azure.',
        time: '50 min',
        detail: `
          <h4>O que são</h4>
          <p>Máquinas virtuais Windows ou Linux hospedadas no Azure. Você controla SO, patches, apps — é <strong>IaaS puro</strong>.</p>

          <h4>Opções de disponibilidade</h4>
          <ul>
            <li><strong>Availability Set:</strong> distribui VMs em domínios de falha/atualização <em>dentro de um datacenter</em>. SLA 99,95%.</li>
            <li><strong>Availability Zone:</strong> distribui em datacenters distintos da região. SLA 99,99%.</li>
            <li><strong>Scale Sets (VMSS):</strong> grupo de VMs idênticas com autoscale.</li>
          </ul>

          <h4>Azure Spot VMs</h4>
          <p>VMs com até <strong>90% de desconto</strong>, mas que podem ser desalocadas a qualquer momento. Ideais para cargas interruptíveis (batch, dev/test).</p>

          <h4>Quando escolher VM</h4>
          <ul>
            <li>Precisa de controle total do SO</li>
            <li>Software legado que não roda em PaaS</li>
            <li>Migração lift-and-shift</li>
          </ul>

          <div class="key-point"><strong>Cenário típico:</strong> migrar um servidor on-premises para o Azure sem refatorar → <code>Azure VM</code>.</div>
        `
      },
      {
        id: 't13',
        title: 'App Service, Container Instances e AKS',
        short: 'PaaS para web, APIs e containers.',
        time: '45 min',
        detail: `
          <h4>Azure App Service</h4>
          <p>PaaS totalmente gerenciado para <strong>apps web, APIs REST e backends mobile</strong>. Suporta .NET, Java, Node, Python, PHP. Autoescala, SSL grátis, deploy via Git/GitHub Actions.</p>

          <h4>Azure Container Instances (ACI)</h4>
          <p>Roda um <strong>container avulso</strong> sem orquestrador. Rápido, simples, pay-per-second. Ideal para jobs pontuais ou prototipagem.</p>

          <h4>Azure Kubernetes Service (AKS)</h4>
          <p>Kubernetes gerenciado pelo Azure. Orquestra containers em escala, com autoscale, rollout, service mesh. Para <strong>arquiteturas de microsserviços</strong> complexas.</p>

          <h4>Azure Functions</h4>
          <p>Serverless: <strong>código executado em resposta a eventos</strong> (HTTP, timer, mensagem em fila). Paga por execução e tempo. Modelo mais puro de serverless.</p>

          <div class="key-point"><strong>Resumo de escolha:</strong> App web? → <code>App Service</code>. Um container rápido? → <code>ACI</code>. Microsserviços em escala? → <code>AKS</code>. Código event-driven? → <code>Functions</code>.</div>
        `
      },
      {
        id: 't14',
        title: 'Azure Virtual Network (VNet)',
        short: 'A rede privada do seu ambiente Azure.',
        time: '55 min',
        detail: `
          <h4>VNet</h4>
          <p>Rede virtual isolada onde seus recursos se comunicam com segurança. Definida por um <strong>espaço de endereçamento CIDR</strong> (ex.: 10.0.0.0/16) dividido em sub-redes.</p>

          <h4>Conectividade entre redes</h4>
          <ul>
            <li><strong>VNet Peering:</strong> conecta duas VNets (mesma ou regiões diferentes) via backbone Microsoft, baixa latência.</li>
            <li><strong>VPN Gateway:</strong> conecta VNet a datacenter on-premises via VPN IPSec (pela internet).</li>
            <li><strong>ExpressRoute:</strong> conexão <strong>privada e dedicada</strong> com o Azure, sem passar pela internet. Alta performance e segurança.</li>
          </ul>

          <h4>Azure DNS</h4>
          <p>Hospeda domínios públicos no Azure, integra com autenticação Azure AD.</p>

          <div class="key-point"><strong>Escolha rápida:</strong> VNet-VNet → <code>Peering</code>. On-prem via internet → <code>VPN Gateway</code>. On-prem dedicado → <code>ExpressRoute</code>.</div>
        `
      },
      {
        id: 't15',
        title: 'Azure Storage: Blob, Files, Queue, Table e Disk',
        short: 'Os cinco serviços de armazenamento.',
        time: '60 min',
        detail: `
          <h4>Tipos de Storage</h4>
          <ul>
            <li><strong>Blob Storage:</strong> objetos não estruturados (imagens, vídeos, backups, logs).</li>
            <li><strong>File Storage:</strong> compartilhamento SMB/NFS, substituto direto de file servers.</li>
            <li><strong>Queue Storage:</strong> fila de mensagens entre componentes de uma aplicação.</li>
            <li><strong>Table Storage:</strong> NoSQL simples key-value (substituído em grande parte pelo Cosmos DB).</li>
            <li><strong>Disk Storage:</strong> discos virtuais usados por VMs.</li>
          </ul>

          <h4>Camadas de acesso para Blob</h4>
          <ul>
            <li><strong>Hot:</strong> acesso frequente, custo de armazenamento maior, acesso mais barato.</li>
            <li><strong>Cool:</strong> acesso ocasional (≥ 30 dias).</li>
            <li><strong>Cold:</strong> acesso raro (≥ 90 dias).</li>
            <li><strong>Archive:</strong> longuíssimo prazo, recuperação leva horas.</li>
          </ul>

          <h4>Redundância</h4>
          <ul>
            <li><strong>LRS:</strong> 3 cópias no mesmo datacenter.</li>
            <li><strong>ZRS:</strong> cópias em 3 zonas da região.</li>
            <li><strong>GRS:</strong> LRS + réplica em região emparelhada.</li>
            <li><strong>GZRS:</strong> ZRS + réplica em região emparelhada (máxima durabilidade).</li>
          </ul>

          <div class="key-point"><strong>Regra:</strong> durabilidade mais alta = mais caro. Para backups raros use <code>Archive</code> + <code>GRS</code>.</div>
        `
      },
      {
        id: 't16',
        title: 'Azure SQL Database e Cosmos DB',
        short: 'Bancos de dados gerenciados.',
        time: '45 min',
        detail: `
          <h4>Azure SQL Database</h4>
          <p>Banco relacional PaaS baseado no SQL Server. Patches automáticos, backup, alta disponibilidade incluída. Perfeito para apps <strong>transacionais relacionais</strong>.</p>

          <h4>Azure Cosmos DB</h4>
          <p>Banco NoSQL <strong>globalmente distribuído</strong>, latência de milissegundos, 5 APIs (SQL, MongoDB, Cassandra, Gremlin, Table). Ideal para apps globais com baixa latência.</p>

          <h4>Outras opções</h4>
          <ul>
            <li><strong>Azure Database for MySQL/PostgreSQL/MariaDB:</strong> open source gerenciado.</li>
            <li><strong>Azure SQL Managed Instance:</strong> quase 100% compatível com SQL Server on-prem.</li>
            <li><strong>Azure Synapse Analytics:</strong> data warehouse para big data e analytics.</li>
          </ul>

          <div class="key-point"><strong>Escolha:</strong> SQL Server existente? → <code>SQL Database</code>. App global com baixa latência? → <code>Cosmos DB</code>.</div>
        `
      },
      {
        id: 't17',
        title: 'Azure Marketplace',
        short: 'Catálogo de soluções de terceiros.',
        time: '20 min',
        detail: `
          <h4>O que é</h4>
          <p>Loja online dentro do portal Azure com <strong>milhares de soluções</strong> prontas: VMs pré-configuradas, apps SaaS, imagens Docker, templates Terraform, serviços de parceiros.</p>

          <h4>Benefícios</h4>
          <ul>
            <li>Deploy em minutos, muitas soluções com 1-click.</li>
            <li>Faturamento unificado na sua conta Azure.</li>
            <li>Soluções certificadas pela Microsoft.</li>
            <li>Versões avaliação (trial) disponíveis.</li>
          </ul>

          <div class="key-point"><strong>Exemplo:</strong> precisa de uma VM pronta com WordPress + MySQL → procure no Marketplace.</div>
        `
      },
      {
        id: 't18',
        title: 'Microsoft Entra ID (antigo Azure AD)',
        short: 'Identidade e acesso na nuvem.',
        time: '50 min',
        detail: `
          <h4>O que é</h4>
          <p>Serviço de <strong>identidade baseado em nuvem</strong> da Microsoft. Autenticação e autorização para apps Microsoft (365, Azure) e de terceiros via SAML/OAuth.</p>

          <h4>AD on-premises vs Entra ID</h4>
          <ul>
            <li><strong>AD on-prem:</strong> protocolo Kerberos, estrutura de OU/floresta, gerencia dispositivos Windows.</li>
            <li><strong>Entra ID:</strong> protocolos web modernos (OAuth, SAML), gerencia usuários/apps na nuvem, SSO federado.</li>
            <li>Podem ser sincronizados via <strong>Entra Connect</strong>.</li>
          </ul>

          <h4>Recursos principais</h4>
          <ul>
            <li><strong>SSO (Single Sign-On):</strong> uma credencial para vários apps.</li>
            <li><strong>MFA:</strong> autenticação multifator.</li>
            <li><strong>Conditional Access:</strong> políticas que avaliam contexto (IP, dispositivo) para permitir/bloquear acesso.</li>
            <li><strong>Entra ID B2B/B2C:</strong> colaboração externa e identidade para clientes.</li>
          </ul>

          <div class="key-point"><strong>Importante:</strong> Entra ID é o <code>plano de controle de identidade</code> de TODOS os serviços Azure. Sem ele, nada funciona.</div>
        `
      }
    ],
    quiz: [
      { q: 'Qual serviço do Azure oferece SLA de 99,99% para VMs distribuídas em datacenters distintos da mesma região?', opts: ['Availability Set', 'Availability Zone', 'Scale Set', 'Region Pair'], ans: 1, exp: 'Availability Zones distribuem VMs em datacenters fisicamente separados dentro de uma região, atingindo SLA de 99,99%. Availability Sets ficam em um único datacenter (SLA 99,95%).' },
      { q: 'Uma empresa quer conectar sua rede on-premises ao Azure com uma conexão privada e dedicada, sem usar a internet pública. Qual serviço usar?', opts: ['VNet Peering', 'VPN Gateway', 'ExpressRoute', 'Azure Firewall'], ans: 2, exp: 'ExpressRoute fornece conexão privada e dedicada entre o datacenter on-premises e o Azure, sem passar pela internet pública. VPN Gateway usa a internet com criptografia IPSec.' },
      { q: 'Qual serviço é a melhor escolha para hospedar uma API REST com deploy via Git, sem gerenciar infraestrutura?', opts: ['Azure VM', 'Azure App Service', 'Azure Container Instances', 'Azure Kubernetes Service'], ans: 1, exp: 'Azure App Service é um PaaS totalmente gerenciado perfeito para APIs REST e aplicações web, com suporte nativo a deploy via Git, GitHub Actions, e autoescala.' },
      { q: 'Qual camada de acesso do Blob Storage tem o menor custo de armazenamento, mas maior custo de recuperação e latência?', opts: ['Hot', 'Cool', 'Cold', 'Archive'], ans: 3, exp: 'A camada Archive tem o menor custo de armazenamento, mas recuperação pode levar horas e tem maior custo. Ideal para dados de longuíssimo prazo raramente acessados.' },
      { q: 'Qual opção de redundância do Storage oferece a maior durabilidade combinando zonas + geo-replicação?', opts: ['LRS', 'ZRS', 'GRS', 'GZRS'], ans: 3, exp: 'GZRS (Geo-Zone-Redundant Storage) combina ZRS (replicação em 3 zonas da região primária) com replicação assíncrona para região emparelhada, oferecendo a máxima durabilidade.' }
    ]
  },
  {
    id: 's3',
    num: '03',
    title: 'Gerenciamento e governança',
    subtitle: 'Controle de custos, políticas e organização',
    color: '#f59e0b',
    color2: '#d97706',
    time: '~7 horas',
    pct: '30-35% do exame',
    intro: 'Segunda maior seção da prova. Foca em como você <strong>controla, organiza e paga</strong> pelos recursos no Azure. Domine Cost Management, Azure Policy, RBAC e as ferramentas de gerenciamento.',
    topics: [
      {
        id: 't19',
        title: 'Microsoft Cost Management e calculadoras',
        short: 'Como estimar e controlar gastos.',
        time: '45 min',
        detail: `
          <h4>Pricing Calculator</h4>
          <p>Ferramenta online para <strong>estimar custos</strong> antes de criar recursos. Adicione serviços, escolha região e SKU, veja o custo mensal previsto.</p>

          <h4>TCO Calculator (Total Cost of Ownership)</h4>
          <p>Compara custos de operar <strong>on-premises × migrar para Azure</strong>. Leva em conta hardware, licenças, energia, pessoal, imóveis.</p>

          <h4>Cost Management + Billing</h4>
          <ul>
            <li>Visualiza gastos reais vs. orçamento em dashboards.</li>
            <li>Cria <strong>orçamentos</strong> com alertas por email quando X% é atingido.</li>
            <li>Recomendações de otimização (VMs subutilizadas, reservas).</li>
          </ul>

          <div class="key-point"><strong>Prova:</strong> comparar on-prem vs Azure → <code>TCO Calculator</code>. Estimar custo de uma nova solução → <code>Pricing Calculator</code>.</div>
        `
      },
      {
        id: 't20',
        title: 'Fatores que afetam o custo no Azure',
        short: 'O que encarece ou barateia sua conta.',
        time: '40 min',
        detail: `
          <h4>Principais fatores</h4>
          <ul>
            <li><strong>Tipo de recurso e SKU:</strong> VM Premium custa mais que Standard.</li>
            <li><strong>Região:</strong> mesma VM custa diferente entre regiões. US East geralmente é mais barato.</li>
            <li><strong>Largura de banda:</strong> <strong>entrada (ingress) é grátis</strong>; saída (egress) é cobrada acima da cota.</li>
            <li><strong>Uso do recurso:</strong> VMs são cobradas por segundo em execução.</li>
          </ul>

          <h4>Formas de economizar</h4>
          <ul>
            <li><strong>Reserved Instances:</strong> até 72% de desconto ao se comprometer por 1 ou 3 anos.</li>
            <li><strong>Azure Hybrid Benefit:</strong> reutiliza licenças Windows/SQL on-prem no Azure (desconto de até 55%).</li>
            <li><strong>Spot VMs:</strong> até 90% de desconto para cargas interruptíveis.</li>
            <li><strong>Desligar recursos não usados</strong> (VMs de dev/test fora do horário).</li>
          </ul>

          <div class="key-point"><strong>Dica:</strong> dados <strong>entrando</strong> no Azure são grátis. Dados <strong>saindo</strong> para internet são cobrados — esse é um custo comum negligenciado.</div>
        `
      },
      {
        id: 't21',
        title: 'Azure Policy',
        short: 'Impor regras de conformidade em escala.',
        time: '50 min',
        detail: `
          <h4>O que é</h4>
          <p>Serviço que cria e aplica <strong>regras (policies)</strong> aos recursos Azure para garantir conformidade. Ex.: "proibir criação de VMs fora do Brasil" ou "exigir tag 'Costcenter' em todos os recursos".</p>

          <h4>Efeitos possíveis</h4>
          <ul>
            <li><strong>Deny:</strong> bloqueia a criação/modificação que violar a regra.</li>
            <li><strong>Audit:</strong> só registra a violação (não bloqueia).</li>
            <li><strong>Append:</strong> adiciona campos aos recursos.</li>
            <li><strong>DeployIfNotExists:</strong> cria automaticamente um recurso complementar (ex.: habilitar backup).</li>
            <li><strong>Modify:</strong> altera propriedades (ex.: adicionar tags).</li>
          </ul>

          <h4>Iniciativas (Initiatives)</h4>
          <p>Conjunto de políticas agrupadas. Ex.: iniciativa "ISO 27001" contém dezenas de políticas relacionadas.</p>

          <div class="key-point"><strong>Azure Policy ≠ RBAC:</strong><br>
          • <code>RBAC</code>: controla <strong>quem pode fazer o quê</strong>.<br>
          • <code>Policy</code>: controla <strong>o que pode ser feito</strong> (independentemente de quem).</div>
        `
      },
      {
        id: 't22',
        title: 'RBAC — Controle de acesso baseado em funções',
        short: 'Quem pode fazer o quê em cada recurso.',
        time: '50 min',
        detail: `
          <h4>Conceito</h4>
          <p>RBAC = <strong>Role-Based Access Control</strong>. Você atribui <strong>funções (roles)</strong> a usuários, grupos ou aplicações em um determinado <strong>escopo</strong>.</p>

          <h4>Funções internas comuns</h4>
          <ul>
            <li><strong>Owner:</strong> controle total + pode delegar acesso.</li>
            <li><strong>Contributor:</strong> controle total, mas NÃO delega acesso.</li>
            <li><strong>Reader:</strong> só visualiza recursos.</li>
            <li><strong>User Access Administrator:</strong> gerencia acessos.</li>
          </ul>

          <h4>Escopos (do mais amplo ao mais específico)</h4>
          <ol style="margin-left:20px;">
            <li>Grupo de gerenciamento</li>
            <li>Assinatura</li>
            <li>Grupo de recursos</li>
            <li>Recurso individual</li>
          </ol>
          <p>Permissões atribuídas em um escopo são <strong>herdadas</strong> pelos escopos abaixo.</p>

          <h4>Princípio do menor privilégio</h4>
          <p>Conceda <strong>apenas o necessário</strong> para a pessoa realizar seu trabalho — nem mais.</p>

          <div class="key-point"><strong>Prova:</strong> "permite gerenciar recursos mas não dar acesso a outros" → <code>Contributor</code>.</div>
        `
      },
      {
        id: 't23',
        title: 'Bloqueios de recursos (Resource Locks)',
        short: 'Prevenção contra exclusão ou modificação acidental.',
        time: '25 min',
        detail: `
          <h4>Tipos de bloqueio</h4>
          <ul>
            <li><strong>CanNotDelete (Delete):</strong> autoriza leitura e modificação, mas bloqueia <strong>exclusão</strong>.</li>
            <li><strong>ReadOnly:</strong> autoriza apenas leitura; bloqueia modificação E exclusão.</li>
          </ul>

          <h4>Características importantes</h4>
          <ul>
            <li>Aplicáveis em <strong>assinatura, grupo de recursos ou recurso individual</strong>.</li>
            <li>Herdados pelos níveis inferiores.</li>
            <li>Sobrepõem as permissões RBAC — mesmo um Owner é bloqueado.</li>
            <li>Só Owner ou User Access Administrator podem aplicar/remover bloqueios.</li>
          </ul>

          <div class="key-point"><strong>Cenário clássico:</strong> proteger um banco de produção contra exclusão acidental → bloqueio <code>Delete</code> no recurso.</div>
        `
      },
      {
        id: 't24',
        title: 'Service Trust Portal e Microsoft Purview',
        short: 'Conformidade e governança de dados.',
        time: '35 min',
        detail: `
          <h4>Service Trust Portal (STP)</h4>
          <p>Portal público da Microsoft onde você baixa:</p>
          <ul>
            <li>Relatórios de auditoria (SOC 1, SOC 2, SOC 3)</li>
            <li>Certificações ISO, FedRAMP, HIPAA</li>
            <li>Documentos de conformidade GDPR, LGPD</li>
            <li>Guias de segurança e compliance</li>
          </ul>

          <h4>Microsoft Purview</h4>
          <p>Serviço de <strong>governança de dados</strong> unificada. Descobre, classifica e gerencia dados sensíveis em toda a organização (nuvem, on-prem, SaaS).</p>
          <ul>
            <li>Mapa de dados (data map)</li>
            <li>Catálogo de dados</li>
            <li>Classificação automática de dados sensíveis (PII, cartão de crédito)</li>
            <li>Linhagem de dados (data lineage)</li>
          </ul>

          <div class="key-point"><strong>Prova:</strong> baixar relatório de conformidade → <code>STP</code>. Classificar dados sensíveis → <code>Purview</code>.</div>
        `
      },
      {
        id: 't25',
        title: 'Azure Resource Manager (ARM) e IaC',
        short: 'A camada de orquestração de tudo no Azure.',
        time: '55 min',
        detail: `
          <h4>Azure Resource Manager (ARM)</h4>
          <p><strong>Todas</strong> as requisições de gerenciamento no Azure passam pelo ARM, seja via portal, CLI, PowerShell ou API. Ele autentica, autoriza e aplica as mudanças.</p>

          <h4>Templates ARM (JSON)</h4>
          <p>Arquivo JSON que descreve recursos e sua configuração. Implantação declarativa, idempotente, versionável.</p>

          <h4>Bicep</h4>
          <p>Linguagem moderna e simplificada que substitui templates ARM. <strong>Muito mais legível</strong>, compila para ARM JSON.</p>
          <pre style="background:rgba(255,255,255,0.05);padding:12px;border-radius:6px;font-family:'JetBrains Mono',monospace;font-size:12px;margin:8px 0;overflow-x:auto;">resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'minhaconta'
  location: 'brazilsouth'
  sku: { name: 'Standard_LRS' }
  kind: 'StorageV2'
}</pre>

          <h4>Azure Blueprints</h4>
          <p>Pacotes reutilizáveis com templates ARM + políticas + RBAC + grupos de recursos. Ideal para <strong>padronizar ambientes</strong> em várias assinaturas.</p>

          <div class="key-point"><strong>Infrastructure as Code (IaC):</strong> descrever infra em arquivos de texto versionados → reproducibilidade, revisão, automação.</div>
        `
      },
      {
        id: 't26',
        title: 'Ferramentas de gerenciamento',
        short: 'Portal, CLI, PowerShell e Cloud Shell.',
        time: '35 min',
        detail: `
          <h4>Portal do Azure</h4>
          <p>Interface gráfica web. Ideal para exploração, aprendizado, tarefas pontuais.</p>

          <h4>Azure CLI</h4>
          <p>Linha de comando multi-plataforma (Windows, Linux, macOS). Sintaxe: <code>az vm create...</code>. Excelente para scripts bash.</p>

          <h4>Azure PowerShell</h4>
          <p>Módulos PowerShell para Azure. Sintaxe: <code>New-AzVM...</code>. Nativo no Windows, multi-plataforma via PowerShell Core.</p>

          <h4>Azure Cloud Shell</h4>
          <p>Terminal dentro do navegador, pré-autenticado, com CLI e PowerShell disponíveis. <strong>Sem instalar nada localmente</strong>.</p>

          <h4>Azure Mobile App</h4>
          <p>App iOS/Android para monitorar recursos, ver alertas e executar comandos básicos.</p>

          <div class="key-point"><strong>Importante:</strong> todas as ferramentas usam o ARM por baixo — o que você faz no portal pode ser feito via CLI/PowerShell.</div>
        `
      },
      {
        id: 't27',
        title: 'Azure Arc',
        short: 'Gerenciamento unificado entre clouds e on-prem.',
        time: '30 min',
        detail: `
          <h4>O que é</h4>
          <p>Azure Arc <strong>estende</strong> o plano de gerenciamento do Azure para recursos <strong>fora do Azure</strong>: servidores on-prem, outras clouds (AWS, GCP), dispositivos de borda, clusters Kubernetes.</p>

          <h4>O que você ganha</h4>
          <ul>
            <li>Ver todos os recursos em um único portal.</li>
            <li>Aplicar Azure Policy em servidores não-Azure.</li>
            <li>Proteger com Defender for Cloud.</li>
            <li>Usar Azure Monitor em qualquer servidor.</li>
            <li>Rodar serviços de dados Azure (SQL Managed Instance, PostgreSQL) em qualquer infra.</li>
          </ul>

          <div class="key-point"><strong>Ideia central:</strong> "Azure em qualquer lugar". Centraliza governança para ambientes híbridos e multi-cloud.</div>
        `
      },
      {
        id: 't28',
        title: 'Azure Monitor e Service Health',
        short: 'Monitoramento de aplicações e saúde dos serviços.',
        time: '45 min',
        detail: `
          <h4>Azure Monitor</h4>
          <p>Plataforma completa de observabilidade. Coleta <strong>métricas</strong> (numéricas, em tempo real) e <strong>logs</strong> (eventos detalhados) de todos os recursos.</p>

          <h4>Componentes</h4>
          <ul>
            <li><strong>Log Analytics:</strong> consulta logs usando linguagem KQL.</li>
            <li><strong>Application Insights:</strong> APM para aplicações — performance, falhas, jornada do usuário.</li>
            <li><strong>Alertas:</strong> acionam ações (email, SMS, webhook, Logic Apps) quando métricas ultrapassam limites.</li>
            <li><strong>Workbooks:</strong> dashboards interativos customizáveis.</li>
          </ul>

          <h4>Azure Service Health</h4>
          <p>Mostra a saúde dos <strong>serviços Azure que VOCÊ usa</strong>:</p>
          <ul>
            <li>Service Issues (incidentes ativos)</li>
            <li>Planned Maintenance (manutenções programadas)</li>
            <li>Health Advisories (avisos)</li>
            <li>Security Advisories</li>
          </ul>

          <div class="key-point"><strong>Diferença:</strong> <code>Monitor</code> = saúde dos <strong>seus recursos</strong>. <code>Service Health</code> = saúde dos <strong>serviços Azure</strong> que você consome.</div>
        `
      }
    ],
    quiz: [
      { q: 'Qual ferramenta impede que novos recursos sejam criados em regiões fora das aprovadas pela empresa?', opts: ['RBAC', 'Azure Policy', 'Resource Lock', 'Azure Blueprints'], ans: 1, exp: 'Azure Policy permite criar regras que negam (Deny) a criação de recursos fora das regiões permitidas. RBAC controla quem pode agir; Policy controla o que pode ser feito.' },
      { q: 'Qual tipo de bloqueio permite leitura e modificação, mas impede exclusão?', opts: ['ReadOnly', 'CanNotDelete (Delete)', 'Deny', 'Audit'], ans: 1, exp: 'O bloqueio CanNotDelete (mostrado como "Delete") bloqueia apenas exclusão. ReadOnly bloqueia tanto exclusão quanto modificação.' },
      { q: 'Qual calculadora compara o custo de operar on-premises versus migrar para o Azure?', opts: ['Pricing Calculator', 'TCO Calculator', 'Cost Management', 'Azure Advisor'], ans: 1, exp: 'A TCO (Total Cost of Ownership) Calculator compara o custo total de infraestrutura on-prem (hardware, energia, licenças, pessoal) com o custo equivalente no Azure.' },
      { q: 'Qual função RBAC permite gerenciar recursos, mas NÃO permite conceder acesso a outros usuários?', opts: ['Owner', 'Contributor', 'Reader', 'User Access Administrator'], ans: 1, exp: 'Contributor tem controle total sobre os recursos (criar, modificar, excluir), mas NÃO pode delegar acessos. Apenas Owner e User Access Administrator podem gerenciar permissões.' },
      { q: 'Qual serviço mostra incidentes ativos que afetam os serviços Azure que você está usando?', opts: ['Azure Monitor', 'Azure Advisor', 'Azure Service Health', 'Microsoft Defender for Cloud'], ans: 2, exp: 'Azure Service Health oferece informações personalizadas sobre a saúde dos serviços Azure que você consome, incluindo incidentes, manutenções planejadas e avisos de segurança.' }
    ]
  },
  {
    id: 's4',
    num: '04',
    title: 'Segurança no Azure',
    subtitle: 'Proteção de identidades, dados e rede',
    color: '#ec4899',
    color2: '#db2777',
    time: '~4 horas',
    pct: '10-15% do exame',
    intro: 'Seção menor, mas muito importante. Foca em <strong>serviços de segurança</strong>, modelo Zero Trust, gerenciamento de segredos e proteção de rede. Entenda a diferença entre os serviços similares (ex.: Firewall × NSG).',
    topics: [
      {
        id: 't29',
        title: 'Microsoft Defender for Cloud',
        short: 'Postura de segurança e proteção contra ameaças.',
        time: '40 min',
        detail: `
          <h4>O que faz</h4>
          <p>Unifica gestão de segurança em <strong>CSPM</strong> (Cloud Security Posture Management) e <strong>CWP</strong> (Cloud Workload Protection) para Azure, AWS, GCP e on-prem (via Arc).</p>

          <h4>Principais recursos</h4>
          <ul>
            <li><strong>Secure Score:</strong> pontuação 0-100% que mede a postura de segurança; mostra recomendações para melhorar.</li>
            <li><strong>Recomendações:</strong> "ative MFA", "habilite criptografia em disco", etc.</li>
            <li><strong>Detecção de ameaças:</strong> alertas baseados em IA sobre ataques em andamento (brute force, malware, acesso anômalo).</li>
            <li><strong>JIT VM Access:</strong> abre portas RDP/SSH apenas quando necessário.</li>
            <li><strong>Regulatory Compliance:</strong> mapeia seu ambiente contra padrões (ISO, PCI-DSS, NIST).</li>
          </ul>

          <div class="key-point"><strong>Estratégia:</strong> Secure Score mais alto = menor risco. Siga as recomendações priorizando as de maior impacto.</div>
        `
      },
      {
        id: 't30',
        title: 'Autenticação e autorização',
        short: 'A diferença fundamental entre os dois conceitos.',
        time: '45 min',
        detail: `
          <h4>Autenticação (AuthN)</h4>
          <p><strong>Quem é você?</strong> Processo de verificar a identidade. Ex.: senha, biometria, token.</p>

          <h4>Autorização (AuthZ)</h4>
          <p><strong>O que você pode fazer?</strong> Processo de determinar permissões depois de autenticado. Ex.: RBAC.</p>

          <h4>Recursos de segurança Entra ID</h4>
          <ul>
            <li><strong>MFA (Multi-Factor Authentication):</strong> algo que você sabe + algo que você tem + algo que você é.</li>
            <li><strong>SSO (Single Sign-On):</strong> autentica uma vez, acessa vários apps.</li>
            <li><strong>Passwordless:</strong> Windows Hello, FIDO2, Microsoft Authenticator.</li>
            <li><strong>Conditional Access:</strong> políticas que avaliam contexto antes de permitir acesso.</li>
            <li><strong>Identidades gerenciadas (Managed Identities):</strong> apps Azure se autenticam em outros serviços sem armazenar credenciais.</li>
          </ul>

          <div class="key-point"><strong>Frase-mnemônica:</strong> "Autenticação = ID; Autorização = Permissão."</div>
        `
      },
      {
        id: 't31',
        title: 'Azure Key Vault',
        short: 'Cofre para segredos, chaves e certificados.',
        time: '35 min',
        detail: `
          <h4>O que armazena</h4>
          <ul>
            <li><strong>Secrets:</strong> strings (senhas, tokens, connection strings).</li>
            <li><strong>Keys:</strong> chaves criptográficas (RSA, EC) usadas para criptografia.</li>
            <li><strong>Certificates:</strong> certificados TLS/SSL com renovação automática.</li>
          </ul>

          <h4>Tipos de vault</h4>
          <ul>
            <li><strong>Standard:</strong> chaves armazenadas em software.</li>
            <li><strong>Premium:</strong> chaves em <strong>HSM</strong> (Hardware Security Module), certificado FIPS 140-2 nível 2.</li>
          </ul>

          <h4>Integrações</h4>
          <ul>
            <li>App Service, Functions, AKS, Data Factory usam Key Vault nativamente.</li>
            <li>Acesso via <strong>Managed Identity</strong> evita ter segredos no código.</li>
            <li>Auditoria completa de quem acessou o quê e quando.</li>
          </ul>

          <div class="key-point"><strong>Regra de ouro:</strong> <code>NUNCA</code> coloque senhas em código, configs ou repositórios Git. Sempre Key Vault.</div>
        `
      },
      {
        id: 't32',
        title: 'Modelo Zero Trust',
        short: 'A filosofia moderna de segurança.',
        time: '30 min',
        detail: `
          <h4>Princípios do Zero Trust</h4>
          <ol style="margin-left:20px;">
            <li><strong>Verifique explicitamente:</strong> sempre autentique e autorize com base em <strong>todos os dados disponíveis</strong> (identidade, localização, dispositivo, dados, serviço).</li>
            <li><strong>Use acesso com privilégio mínimo:</strong> limite acesso com Just-In-Time e Just-Enough-Access (JIT/JEA).</li>
            <li><strong>Assuma violação:</strong> segmente o acesso, use criptografia end-to-end e analytics para detectar ameaças.</li>
          </ol>

          <h4>Mudança de mindset</h4>
          <ul>
            <li><strong>Antes:</strong> "confie em quem está dentro da rede". Modelo castelo-e-fosso.</li>
            <li><strong>Agora (Zero Trust):</strong> "nunca confie, sempre verifique" — independente da rede.</li>
          </ul>

          <h4>Como o Azure implementa</h4>
          <p>Conditional Access, MFA, Identidades gerenciadas, Key Vault, Microsoft Sentinel, Defender for Cloud — todos juntos formam a base Zero Trust.</p>

          <div class="key-point"><strong>Memória:</strong> "nunca confie, sempre verifique — <em>never trust, always verify</em>".</div>
        `
      },
      {
        id: 't33',
        title: 'Azure Firewall e NSG',
        short: 'Proteção de rede: quando usar cada um.',
        time: '40 min',
        detail: `
          <h4>Network Security Group (NSG)</h4>
          <p>Lista de <strong>regras</strong> (allow/deny) que filtram tráfego em sub-redes ou NICs individuais. Opera na <strong>camada 4</strong> (IP, porta, protocolo). <strong>Gratuito</strong>.</p>

          <h4>Azure Firewall</h4>
          <p>Firewall <strong>gerenciado, stateful</strong>, com inspeção na <strong>camada 7</strong>. Suporta filtragem por FQDN, threat intelligence, inspeção TLS. Pago por hora + por GB processado.</p>

          <h4>Quando usar cada um</h4>
          <ul>
            <li><strong>NSG:</strong> controle básico de acesso entre sub-redes/VMs. Sempre usado.</li>
            <li><strong>Azure Firewall:</strong> perímetro da VNet, inspeção profunda, proteção centralizada.</li>
            <li>Frequentemente usados <strong>em conjunto</strong>.</li>
          </ul>

          <h4>Outros serviços de rede de segurança</h4>
          <ul>
            <li><strong>Application Gateway + WAF:</strong> balanceador L7 com proteção de apps web (OWASP Top 10).</li>
            <li><strong>Azure Bastion:</strong> acesso RDP/SSH via navegador sem expor IP público.</li>
          </ul>

          <div class="key-point"><strong>Lembrete:</strong> <code>NSG = L4</code>, <code>Firewall = L7</code>. WAF protege <strong>apps web</strong> (L7 + OWASP).</div>
        `
      },
      {
        id: 't34',
        title: 'Microsoft Sentinel e Azure DDoS',
        short: 'SIEM na nuvem e proteção contra ataques volumétricos.',
        time: '30 min',
        detail: `
          <h4>Microsoft Sentinel</h4>
          <p>Plataforma <strong>SIEM</strong> (Security Information and Event Management) e <strong>SOAR</strong> (Security Orchestration, Automation and Response) nativa na nuvem.</p>
          <ul>
            <li>Coleta logs de <strong>qualquer fonte</strong> (Azure, AWS, apps, firewalls).</li>
            <li>Usa IA para detectar ameaças.</li>
            <li>Automatiza respostas a incidentes com playbooks.</li>
            <li>Investigação e caça a ameaças (threat hunting).</li>
          </ul>

          <h4>Azure DDoS Protection</h4>
          <ul>
            <li><strong>Basic:</strong> grátis, embutido, proteção automática de camada de rede.</li>
            <li><strong>Standard:</strong> pago, proteção adaptativa com ML, SLA, relatórios de ataque, mitigação L3-L7 (com WAF), suporte de emergência.</li>
          </ul>

          <div class="key-point"><strong>Dica:</strong> Sentinel = olhos e reflexos do SOC. DDoS Standard = escudo contra ataques volumétricos com SLA formal.</div>
        `
      }
    ],
    quiz: [
      { q: 'Qual serviço do Azure deve ser usado para armazenar senhas e strings de conexão que apps consumem?', opts: ['Azure Storage', 'Azure Key Vault', 'Microsoft Entra ID', 'Azure Policy'], ans: 1, exp: 'Azure Key Vault é o serviço gerenciado para armazenar e controlar acesso a secrets, chaves criptográficas e certificados, integrando-se nativamente com outros serviços Azure via Managed Identity.' },
      { q: 'Qual é a diferença principal entre Network Security Group (NSG) e Azure Firewall?', opts: ['NSG é pago e Firewall é grátis', 'NSG opera na camada 4 (porta/IP); Firewall opera na camada 7 (aplicação, FQDN)', 'São o mesmo serviço com nomes diferentes', 'Firewall só filtra entrada; NSG filtra saída'], ans: 1, exp: 'NSG é um filtro de rede básico na camada 4 (L4) baseado em IPs, portas e protocolos. Azure Firewall é um serviço gerenciado stateful com inspeção na camada 7 (L7), suportando filtragem por FQDN e threat intelligence.' },
      { q: 'O modelo Zero Trust é baseado em qual premissa fundamental?', opts: ['Todos dentro da rede corporativa são confiáveis', 'Nunca confie, sempre verifique — independentemente da origem', 'Só usuários autenticados devem ter acesso', 'Firewalls são suficientes para proteger a rede'], ans: 1, exp: 'O Zero Trust parte do princípio de que nenhuma entidade (usuário, dispositivo, rede) é confiável por padrão, mesmo dentro do perímetro. Toda requisição deve ser verificada explicitamente.' },
      { q: 'O que representa o Secure Score no Microsoft Defender for Cloud?', opts: ['Número de VMs protegidas', 'Pontuação que mede a postura de segurança do ambiente', 'Custo mensal de segurança', 'Quantidade de alertas ativos'], ans: 1, exp: 'O Secure Score é uma pontuação (0-100%) que indica a postura atual de segurança do ambiente. Ele recomenda ações específicas para aumentar a pontuação e reduzir riscos.' },
      { q: 'Qual a diferença entre autenticação e autorização?', opts: ['São sinônimos', 'Autenticação verifica QUEM é você; autorização define O QUE você pode fazer', 'Autenticação é para apps; autorização é para usuários', 'Autenticação é opcional; autorização é obrigatória'], ans: 1, exp: 'Autenticação (AuthN) verifica a identidade ("quem é você?"), enquanto autorização (AuthZ) determina as permissões ("o que você pode fazer?") após a identidade ser confirmada.' }
    ]
  },
  {
    id: 's5',
    num: '05',
    title: 'SLA, conformidade e ciclo de vida',
    subtitle: 'Os detalhes finais antes da prova',
    color: '#a78bfa',
    color2: '#8b5cf6',
    time: '~2.5 horas',
    pct: '~10% do exame',
    intro: 'Seção mais curta mas essencial. Aprenda a <strong>calcular SLA composto</strong>, entender ciclo de vida (Preview × GA), conformidade e usar o Azure Advisor. Finalize com simulados.',
    topics: [
      {
        id: 't35',
        title: 'SLA — Service Level Agreement',
        short: 'Como calcular o SLA composto de uma solução.',
        time: '35 min',
        detail: `
          <h4>O que é SLA</h4>
          <p>Acordo formal da Microsoft que garante <strong>nível de disponibilidade</strong> de um serviço. Ex.: 99,95% de uptime mensal. Se quebrado, gera créditos na conta.</p>

          <h4>SLA composto (serviços em série)</h4>
          <p>Quando vários serviços dependem um do outro, <strong>multiplique os SLAs</strong>:</p>
          <pre style="background:rgba(255,255,255,0.05);padding:12px;border-radius:6px;font-family:'JetBrains Mono',monospace;font-size:12px;margin:8px 0;">VM (99.95%) × SQL DB (99.99%) = 99.94%</pre>

          <h4>SLA em paralelo (redundância)</h4>
          <p>Componentes paralelos <strong>aumentam</strong> o SLA (só falha se todos falharem):</p>
          <pre style="background:rgba(255,255,255,0.05);padding:12px;border-radius:6px;font-family:'JetBrains Mono',monospace;font-size:12px;margin:8px 0;">1 - (1-0.999) × (1-0.999) = 99.9999%</pre>

          <h4>SLA comum por serviço</h4>
          <ul>
            <li>VM single instance Premium SSD: 99,9%</li>
            <li>VM em Availability Set: 99,95%</li>
            <li>VM em Availability Zones: 99,99%</li>
            <li>App Service: 99,95%</li>
            <li>Azure SQL Database: 99,99%</li>
          </ul>

          <div class="key-point"><strong>Regra da prova:</strong> <code>mais serviços em série = menor SLA</code>. <code>Mais redundância = maior SLA</code>.</div>
        `
      },
      {
        id: 't36',
        title: 'Ciclo de vida dos serviços: Preview × GA',
        short: 'Entenda quando um serviço tem SLA formal.',
        time: '25 min',
        detail: `
          <h4>Private Preview</h4>
          <p>Acesso restrito por convite. Serviço em desenvolvimento inicial. <strong>Sem SLA</strong>, sem suporte formal.</p>

          <h4>Public Preview</h4>
          <p>Aberto a todos, mas ainda em testes. <strong>Sem SLA completo</strong>, pode ter bugs, não recomendado para produção. Acesso normalmente sem custo ou com desconto.</p>

          <h4>General Availability (GA)</h4>
          <p>Serviço <strong>maduro, com SLA oficial</strong>, suporte completo, faturamento normal. Pronto para produção.</p>

          <h4>Deprecated / Retired</h4>
          <p>Serviço descontinuado. Microsoft dá aviso de 12+ meses antes de encerrar.</p>

          <div class="key-point"><strong>Prova:</strong> "serviço em Preview" → <code>sem SLA garantido</code> e <code>não recomendado para produção</code>.</div>
        `
      },
      {
        id: 't37',
        title: 'Conformidade e privacidade',
        short: 'GDPR, ISO, HIPAA e frameworks relevantes.',
        time: '30 min',
        detail: `
          <h4>Principais certificações Azure</h4>
          <ul>
            <li><strong>ISO/IEC 27001, 27017, 27018:</strong> gestão de segurança da informação e proteção de PII na nuvem.</li>
            <li><strong>SOC 1, 2, 3:</strong> controles de processos e segurança auditados por terceiros.</li>
            <li><strong>PCI-DSS:</strong> processamento de cartão de crédito.</li>
            <li><strong>HIPAA:</strong> dados de saúde (EUA).</li>
            <li><strong>FedRAMP:</strong> governo EUA.</li>
            <li><strong>GDPR:</strong> lei de privacidade da UE.</li>
            <li><strong>LGPD:</strong> lei de privacidade do Brasil.</li>
          </ul>

          <h4>Documentos relevantes</h4>
          <ul>
            <li><strong>Microsoft Privacy Statement:</strong> como a MS coleta e usa dados pessoais.</li>
            <li><strong>Online Services Terms (OST):</strong> termos contratuais específicos dos serviços.</li>
            <li><strong>Data Protection Addendum (DPA):</strong> compromissos específicos com privacidade de dados.</li>
          </ul>

          <h4>Onde consultar</h4>
          <p><strong>Service Trust Portal</strong> — todos os relatórios de conformidade e documentos oficiais.</p>

          <div class="key-point"><strong>Dica:</strong> a Microsoft usa <code>Compliance Manager</code> para ajudar clientes a gerenciar sua jornada de conformidade.</div>
        `
      },
      {
        id: 't38',
        title: 'Azure Advisor',
        short: 'Recomendações personalizadas em 5 categorias.',
        time: '20 min',
        detail: `
          <h4>O que é</h4>
          <p>Serviço gratuito que analisa seus recursos e fornece <strong>recomendações personalizadas</strong> em 5 pilares:</p>

          <h4>5 Categorias</h4>
          <ol style="margin-left:20px;">
            <li><strong>Reliability (Confiabilidade):</strong> melhorias de HA e recuperação.</li>
            <li><strong>Security:</strong> redireciona para Defender for Cloud.</li>
            <li><strong>Performance:</strong> melhorias de latência/throughput.</li>
            <li><strong>Cost:</strong> reservas, VMs subutilizadas, recursos ociosos.</li>
            <li><strong>Operational Excellence:</strong> processos, automação, políticas.</li>
          </ol>

          <h4>Como usa</h4>
          <ul>
            <li>Acesse via portal → menu Advisor.</li>
            <li>Cada recomendação tem: problema, impacto, ação sugerida, links.</li>
            <li>Pode criar alertas quando novas recomendações aparecem.</li>
          </ul>

          <div class="key-point"><strong>Memorize:</strong> 5 categorias → <em>Segurança, Confiabilidade, Performance, Custo e Excelência Operacional</em>.</div>
        `
      },
      {
        id: 't39',
        title: 'Revisão: Well-Architected Framework',
        short: 'Como tudo se encaixa nos 5 pilares.',
        time: '40 min',
        detail: `
          <h4>Azure Well-Architected Framework</h4>
          <p>Diretrizes oficiais da Microsoft baseadas em <strong>5 pilares</strong> (os mesmos do Azure Advisor):</p>

          <ol style="margin-left:20px;">
            <li><strong>Reliability:</strong> serviços resilientes e recuperáveis.</li>
            <li><strong>Security:</strong> proteger dados, apps, infra.</li>
            <li><strong>Cost Optimization:</strong> maximizar valor entregue pelo dinheiro investido.</li>
            <li><strong>Operational Excellence:</strong> operações, monitoring, automation.</li>
            <li><strong>Performance Efficiency:</strong> adaptar recursos à demanda.</li>
          </ol>

          <h4>Ferramenta de avaliação</h4>
          <p>Microsoft fornece o <strong>Well-Architected Review</strong>, um questionário online que avalia seu ambiente e gera relatório de maturidade por pilar.</p>

          <h4>Conexão com a prova</h4>
          <p>Vários serviços da AZ-900 se mapeiam diretamente nos pilares:</p>
          <ul>
            <li>Advisor → 5 pilares</li>
            <li>Defender for Cloud → Security</li>
            <li>Cost Management → Cost Optimization</li>
            <li>Monitor → Operational Excellence</li>
          </ul>

          <div class="key-point"><strong>Visão holística:</strong> AZ-900 não é só sobre serviços isolados, mas sobre como <strong>arquitetar soluções bem-construídas</strong> na nuvem.</div>
        `
      },
      {
        id: 't40',
        title: 'Simulados e estudo final',
        short: 'Sua última semana antes da prova.',
        time: '60 min',
        detail: `
          <h4>Recursos oficiais gratuitos</h4>
          <ul>
            <li><strong>Microsoft Learn:</strong> trilhas AZ-900 oficiais com laboratórios interativos.</li>
            <li><strong>Practice Assessment Microsoft:</strong> simulado oficial gratuito.</li>
            <li><strong>YouTube:</strong> John Savill's Technical Training (canal excelente).</li>
          </ul>

          <h4>Simulados externos recomendados</h4>
          <ul>
            <li>MeasureUp (oficial pago)</li>
            <li>Whizlabs, ExamTopics (revisar com cuidado)</li>
            <li>Udemy — cursos + simulados em português</li>
          </ul>

          <h4>Estratégia nos últimos 7 dias</h4>
          <ol style="margin-left:20px;">
            <li>Faça 1 simulado completo para diagnosticar pontos fracos.</li>
            <li>Revise os tópicos em que errou mais.</li>
            <li>Faça mais 2 simulados, buscando 80%+ de acerto.</li>
            <li>Na véspera: descanse, nada de estudo novo.</li>
            <li>No dia: leve documento com foto, durma bem, beba água.</li>
          </ol>

          <h4>Detalhes da prova</h4>
          <ul>
            <li>45 minutos de duração</li>
            <li>40-60 questões (múltipla escolha, arrastar-e-soltar, múltiplas respostas)</li>
            <li>Nota mínima: <strong>700 de 1000</strong></li>
            <li>Disponível em português</li>
            <li>Pode ser feita online (OnVUE) ou presencial</li>
          </ul>

          <div class="key-point"><strong>Você está pronto quando:</strong> acerta 85%+ em 3 simulados diferentes seguidos. Boa prova! 🎓</div>
        `
      }
    ],
    quiz: [
      { q: 'Se o Serviço A tem SLA 99.9% e o Serviço B tem SLA 99.95%, e ambos estão em série, qual o SLA composto?', opts: ['99.95%', '99.9%', '99.85%', '99.845%'], ans: 3, exp: 'SLA composto em série = SLA_A × SLA_B = 0,999 × 0,9995 = 0,99850 ≈ 99,85%. Mais serviços em série resultam em menor SLA global.' },
      { q: 'O que é verdade sobre um serviço em "Public Preview" no Azure?', opts: ['Tem SLA completo e suporte integral', 'Está disponível a todos, mas geralmente sem SLA completo — não recomendado para produção', 'Só está acessível para clientes Enterprise', 'Tem o mesmo status que GA'], ans: 1, exp: 'Serviços em Public Preview estão disponíveis para qualquer cliente testar, mas não possuem SLA completo nem suporte formal. Apenas após GA o serviço é considerado pronto para produção.' },
      { q: 'Em quantas categorias o Azure Advisor oferece recomendações?', opts: ['3', '4', '5', '6'], ans: 2, exp: 'Azure Advisor oferece recomendações em 5 categorias: Reliability, Security, Performance, Cost e Operational Excellence — as mesmas do Well-Architected Framework.' },
      { q: 'Onde encontrar relatórios oficiais de conformidade como SOC 2 e ISO 27001?', opts: ['Microsoft Defender for Cloud', 'Service Trust Portal', 'Azure Policy', 'Azure Advisor'], ans: 1, exp: 'O Service Trust Portal (STP) é o repositório oficial da Microsoft com todos os relatórios de auditoria, certificações e documentos de conformidade disponíveis para download.' },
      { q: 'Como a adição de redundância (componentes paralelos) afeta o SLA total de uma solução?', opts: ['Sempre reduz o SLA', 'Não afeta', 'Aumenta o SLA, pois a solução só falha se todos os componentes falharem', 'Depende da região'], ans: 2, exp: 'Adicionar redundância em paralelo (múltiplas VMs, múltiplas zonas) aumenta o SLA efetivo, pois a falha só ocorre se TODOS os componentes redundantes falharem simultaneamente — probabilidade muito menor.' }
    ]
  }
];

// ============ STATE ============
const STORAGE_KEY = 'az900-plan-v1';
let state = { checked: {}, quizAnswers: {} };

function loadState() {
  try {
    const saved = localStorage.getItem(STORAGE_KEY);
    if (saved) state = JSON.parse(saved);
  } catch(e) {}
}
function saveState() {
  try { localStorage.setItem(STORAGE_KEY, JSON.stringify(state)); } catch(e) {}
}

// ============ BUILD SECTIONS ============
function buildSections() {
  const container = document.getElementById('sectionsContainer');
  SECTIONS.forEach(sec => {
    const el = document.createElement('div');
    el.className = 'section';
    el.id = sec.id;
    el.style.setProperty('--sec-color', sec.color);
    el.style.setProperty('--sec-color2', sec.color2);

    el.innerHTML = `
      <div class="section-header" onclick="toggleSection('${sec.id}')">
        <div class="section-number">SEÇÃO ${sec.num}</div>
        <div class="section-info">
          <h2>${sec.title}</h2>
          <p>${sec.subtitle}</p>
        </div>
        <div class="section-tags">
          <span class="tag">${sec.time}</span>
          <span class="tag">${sec.pct}</span>
          <span class="tag" id="prog-${sec.id}">0/${sec.topics.length}</span>
        </div>
        <div class="chevron">▼</div>
      </div>
      <div class="section-body">
        <div class="topics-intro">${sec.intro}</div>
        <div class="topics-list" id="topics-${sec.id}">
          ${sec.topics.map(t => `
            <div class="topic" id="topic-${t.id}">
              <div class="topic-head">
                <div class="topic-check" onclick="event.stopPropagation(); toggleTopic('${t.id}','${sec.id}')"></div>
                <div class="topic-body">
                  <div class="topic-title">${t.title}</div>
                  <div class="topic-short">${t.short}</div>
                  <div style="display:flex;align-items:center;">
                    <span class="topic-time">⏱ ${t.time}</span>
                    <button class="topic-expand" onclick="event.stopPropagation(); toggleDetail('${t.id}')">Ver detalhes completos →</button>
                  </div>
                </div>
              </div>
              <div class="topic-detail">${t.detail}</div>
            </div>
          `).join('')}
        </div>
        <button class="quiz-trigger" onclick="openQuiz('${sec.id}')">Testar conhecimentos desta seção</button>
        <div class="quiz-panel" id="quiz-${sec.id}"></div>
      </div>
    `;
    container.appendChild(el);
  });
}

// ============ INTERACTIONS ============
function toggleSection(sid) {
  document.getElementById(sid).classList.toggle('open');
}
function toggleDetail(tid) {
  document.getElementById('topic-'+tid).classList.toggle('expanded');
}
function toggleTopic(tid, sid) {
  state.checked[tid] = !state.checked[tid];
  const el = document.getElementById('topic-'+tid);
  el.classList.toggle('checked', state.checked[tid]);
  updateAllProgress();
  saveState();
}

function updateAllProgress() {
  let done = 0, total = 0;
  SECTIONS.forEach(sec => {
    let sDone = 0;
    sec.topics.forEach(t => { total++; if (state.checked[t.id]) { done++; sDone++; } });
    const progEl = document.getElementById('prog-'+sec.id);
    if (progEl) progEl.textContent = sDone + '/' + sec.topics.length;
  });
  const pct = total > 0 ? Math.round(done/total*100) : 0;
  document.getElementById('progressBar').style.width = pct + '%';
  document.getElementById('progressText').textContent = done + ' de ' + total + ' tópicos';
  document.getElementById('progressPct').textContent = pct + '%';
}

// ============ QUIZ ============
const quizState = {};
function openQuiz(sid) {
  const panel = document.getElementById('quiz-'+sid);
  panel.classList.toggle('active');
  if (!quizState[sid]) quizState[sid] = { current: 0, answers: {}, finished: false };
  renderQuiz(sid);
}
function renderQuiz(sid) {
  const sec = SECTIONS.find(s => s.id === sid);
  const qs = sec.quiz;
  const st = quizState[sid];
  const panel = document.getElementById('quiz-'+sid);

  if (st.finished) { renderScore(sid); return; }

  const q = qs[st.current];
  const pct = ((st.current) / qs.length) * 100;
  panel.innerHTML = `
    <div class="quiz-header">
      <div class="quiz-header-title">Quiz · ${sec.title}</div>
      <div class="quiz-counter">${st.current+1}/${qs.length}</div>
    </div>
    <div class="quiz-progress"><div class="quiz-progress-inner" style="width:${pct}%"></div></div>
    <div class="q-text">${q.q}</div>
    <div class="q-options">
      ${q.opts.map((o,i) => `
        <button class="q-opt" id="opt-${sid}-${i}" onclick="answerQuiz('${sid}',${i})">
          <span class="q-opt-letter">${String.fromCharCode(65+i)}</span>
          <span>${o}</span>
        </button>
      `).join('')}
    </div>
    <div class="q-feedback" id="fb-${sid}"></div>
    <div class="q-nav">
      <button class="q-btn" onclick="prevQuiz('${sid}')" ${st.current===0?'disabled':''}>← Anterior</button>
      <button class="q-btn primary" id="next-${sid}" onclick="nextQuiz('${sid}')" disabled>Próxima →</button>
    </div>
  `;
  if (st.answers[st.current] !== undefined) restoreAnswer(sid);
}
function answerQuiz(sid, idx) {
  const st = quizState[sid];
  if (st.answers[st.current] !== undefined) return;
  const q = SECTIONS.find(s=>s.id===sid).quiz[st.current];
  st.answers[st.current] = idx;
  for (let i = 0; i < q.opts.length; i++) {
    const el = document.getElementById(`opt-${sid}-${i}`);
    el.classList.add('disabled');
    if (i === q.ans) el.classList.add('correct');
    else if (i === idx && idx !== q.ans) el.classList.add('wrong');
  }
  const fb = document.getElementById('fb-'+sid);
  const ok = idx === q.ans;
  fb.className = 'q-feedback show ' + (ok ? 'ok' : 'fail');
  fb.innerHTML = `<div class="q-feedback-title">${ok ? '✓ Correto!' : '✗ Incorreto'}</div>${q.exp}`;
  const nb = document.getElementById('next-'+sid);
  nb.disabled = false;
  if (st.current === SECTIONS.find(s=>s.id===sid).quiz.length - 1) nb.textContent = 'Ver resultado ✓';
}
function restoreAnswer(sid) {
  const st = quizState[sid];
  const q = SECTIONS.find(s=>s.id===sid).quiz[st.current];
  const idx = st.answers[st.current];
  if (idx === undefined) return;
  for (let i = 0; i < q.opts.length; i++) {
    const el = document.getElementById(`opt-${sid}-${i}`);
    if (!el) continue;
    el.classList.add('disabled');
    if (i === q.ans) el.classList.add('correct');
    else if (i === idx && idx !== q.ans) el.classList.add('wrong');
  }
  const fb = document.getElementById('fb-'+sid);
  const ok = idx === q.ans;
  fb.className = 'q-feedback show ' + (ok ? 'ok' : 'fail');
  fb.innerHTML = `<div class="q-feedback-title">${ok ? '✓ Correto!' : '✗ Incorreto'}</div>${q.exp}`;
  const nb = document.getElementById('next-'+sid);
  if (nb) { nb.disabled = false; if (st.current === SECTIONS.find(s=>s.id===sid).quiz.length - 1) nb.textContent = 'Ver resultado ✓'; }
}
function nextQuiz(sid) {
  const st = quizState[sid];
  const qs = SECTIONS.find(s=>s.id===sid).quiz;
  if (st.current < qs.length-1) { st.current++; renderQuiz(sid); }
  else { st.finished = true; renderScore(sid); }
}
function prevQuiz(sid) {
  const st = quizState[sid];
  if (st.current > 0) { st.current--; renderQuiz(sid); }
}
function renderScore(sid) {
  const sec = SECTIONS.find(s=>s.id===sid);
  const qs = sec.quiz;
  const st = quizState[sid];
  const correct = Object.entries(st.answers).filter(([i,a]) => a === qs[i].ans).length;
  const pct = Math.round(correct/qs.length*100);
  const pass = pct >= 70;
  const panel = document.getElementById('quiz-'+sid);
  panel.innerHTML = `
    <div class="q-score">
      <div class="q-score-icon">${pass?'🎉':'📚'}</div>
      <div class="q-score-num ${pass?'pass':'fail'}">${correct}/${qs.length}</div>
      <div class="q-score-msg">${pass?'Excelente! Você domina esta seção.':'Revise os tópicos acima antes de prosseguir — você consegue!'}</div>
      <button class="q-btn primary" onclick="resetQuiz('${sid}')">Refazer quiz</button>
    </div>
  `;
}
function resetQuiz(sid) {
  quizState[sid] = { current: 0, answers: {}, finished: false };
  renderQuiz(sid);
}

// ============ INIT ============
loadState();
buildSections();
// Restore checked state visually
SECTIONS.forEach(sec => sec.topics.forEach(t => {
  if (state.checked[t.id]) document.getElementById('topic-'+t.id)?.classList.add('checked');
}));
updateAllProgress();

// Abre primeira seção por padrão
document.getElementById('s1')?.classList.add('open');
</script>

</body>
</html>
