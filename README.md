# 🇰🇪 Kenya Corruption Watch

A comprehensive, readable public accountability archive of documented corruption cases in Kenya from 1982 to 2025.

## 📊 Archive Stats

- **61 documented cases** spanning **43 years** (1982–2025)
- **~$14B** in cumulative documented losses
- **230 cited sources** (avg 3.8 per case; all cases have ≥3)
- **15 counties** with documented cases

## ✨ Features

- **Warm, editorial UI** — readable serif typography (Fraunces), clean sans-serif (Inter), warm paper-tone palette for comfortable long-form reading
- **Submission form** — users can contribute new cases with required fields: narrative, amount, sources (minimum 3), people involved, prosecution status, consequences, economic impact
- **Multi-dimensional filters** — year range, month, category pills, and full-text search across titles, people, and counties
- **Decade-grouped timeline** — cases organised chronologically for historical context
- **Full case details per case:**
  - Plain-language narrative
  - People involved (as named in sources)
  - Prosecution status with colour-coded badges (Convicted / Acquitted / Ongoing / No Charges)
  - Economic impact
  - 3–5+ cited sources per case with clickable links
- **Accessible** — keyboard navigation, focus indicators, ARIA attributes, readable contrast

## 🎨 Design

- **Typography**: Fraunces (display serif) + Inter (body sans) + JetBrains Mono (numbers/chips)
- **Palette**: warm off-white paper background, deep ink text, earthy accents (red for corruption, amber for financial, teal for convicted, purple for political, gold for land, slate for security)
- **Layout**: single-column, reading-width constrained for comfort; sticky filter bar; modal-based submission form

## 🗂️ Cases Covered

See archive for all 61 cases. Highlights:

**Landmark convictions** — Ferdinand Waititu (Kiambu Sh588M, 12 yrs), Moses Lenolkulal (Samburu, first governor convicted — later acquitted on appeal), KPC Sh550M case, NYS Josephine Kabura Sh791M.

**High-profile unresolved** — Goldenberg ($600M), Anglo Leasing (Sh56B), Arror/Kimwarer Dams (Sh21B), Eurobond (Sh215B), Adani JKIA (cancelled), Social Health Authority Sh11B, Finance Bill 2024 Gen-Z protests.

**Recent cases from X & investigative journalism** — Albert Ojwang custody killing, KPC/EPRA fuel scandal, Nairobi River Sh45B, fake fertiliser scandal, Worldcoin biometric data case.

## 🛠️ Tech Stack

- Vanilla HTML/CSS/JavaScript — zero dependencies, zero build step
- Google Fonts (Fraunces, Inter, JetBrains Mono)
- `localStorage` for saving submissions locally
- `mailto:` for forwarding submissions
- Single-file deployment — works on any static host

## 📝 Submission flow

1. User clicks "Submit a new case"
2. Fills form (title, narrative, year, category, amount, people, prosecution, 3+ sources)
3. Submission saved to `localStorage` as backup
4. User's email client opens pre-filled with the full submission
5. User sends to `submissions@kenya-corruption-watch.org` for review
6. Editor reviews and publishes to the archive if verified

> **Note**: the email address is a placeholder. Replace `submissions@kenya-corruption-watch.org` in the mailto handler with your real address before deploying.

## 📚 Data Sources

- **Kenyan Journalism**: Nation Africa, Standard Media, The Star, Business Daily Africa, Citizen Digital, Tuko, Kenyans.co.ke
- **Government & Oversight**: Controller & Auditor General (OAG), EACC, DPP, DCI, Parliament Hansard, Supreme Court, High Court
- **International**: ICIJ (Pandora Papers), ICC, Human Rights Watch, Amnesty International, BBC, Reuters, The Guardian, Washington Post, CNN, Al Jazeera, NPR, UK SFO, US DoJ, Bloomberg
- **Civil Society**: Transparency International Kenya, AfriCOG, KNCHR, KELIN, Katiba Institute, ICJ Kenya, CIPESA
- **Social Media**: EACC Kenya (X), ODPP (X), public posts and threads

## 🚀 Deployment

Single static HTML file — no build step required.

### Vercel (recommended, free)
1. Connect this repo to [vercel.com](https://vercel.com)
2. Click Deploy — `vercel.json` is included
3. Or use the CLI: `npm i -g vercel && vercel --prod`

### Netlify
Drag-and-drop the folder at `app.netlify.com/drop`.

### GitHub Pages
Settings → Pages → Source: deploy from `main` branch. Live at `https://<user>.github.io/<repo>/`

## ⚖️ Disclaimer

This archive is for **public education and accountability**. All information is sourced from public records and journalism. Not all allegations have resulted in convictions. Cases marked "acquitted" or "no charges" reflect legal outcomes, not factual determinations.

The archive does not allege guilt of any individual not formally convicted; it documents what has been reported by credible sources about each case.

## 🤝 Contributing

Two ways to contribute:

1. **Via the submission form** on the live site (for ordinary users)
2. **Via pull request** to this repo (for technical contributors):
   - Append the case object to the `CASES` array in `index.html`
   - Include ≥3 verifiable sources (mix journalism, official records, international watchdogs)
   - Use a real Kenyan county for the `location.county` field
   - Use honest prosecution status — don't overstate

## 📜 License

Public domain. Use it, fork it, build on it.

---

*Built for transparency. Data is power.*
