---
layout: page
permalink: /publications/
title: publications
description: Published and accepted papers, followed by arXiv preprints.
nav: true
nav_order: 4
_styles: |
  .publication-summary { margin: 1rem 0 2.5rem; padding: 1.5rem 0; border-bottom: 1px solid var(--global-divider-color); }
  .publication-summary__total { margin: 0 0 .5rem; font-size: 1.3rem; }
  .publication-summary__total strong { color: var(--global-theme-color); font-size: 2.5rem; font-weight: 600; margin-right: .4rem; }
  .publication-summary__note, .publication-section__note { color: var(--global-text-color-light); font-size: .95rem; }
  .publication-summary__note { margin: 0; }
  .publication-section { margin-bottom: 3rem; }
  .publication-section h2 { font-size: 1.65rem; }
  .publication-section__count { color: var(--global-text-color-light); font-size: 1rem; font-weight: 400; }

# Full-bleed hero banner with a white title (rendered by the page.liquid
# override). When present, the plain page title/description header is hidden.
banner:
  image: assets/img/pku_2024-10-08_s6704ca21aa9e5.jpg
  title: "Publications"
  title_color: "#ffffff"
---

<div class="publication-summary" aria-label="Publication count">
  <p class="publication-summary__total"><strong>{% bibliography_count --query @*[publication_category=published] %}</strong> peer-reviewed publications</p>
  <p class="publication-summary__note">Published or accepted conference and journal papers. arXiv preprints are excluded from this total.</p>
</div>

<div class="publications selected-publications">

<section class="publication-section" aria-labelledby="published-papers">
  <h2 id="published-papers">Published &amp; Accepted Papers <span class="publication-section__count">({% bibliography_count --query @*[publication_category=published] %})</span></h2>

{% bibliography --query @*[publication_category=published] %}

</section>

<section class="publication-section" aria-labelledby="preprints">
  <h2 id="preprints">Preprints (arXiv) <span class="publication-section__count">({% bibliography_count --query @*[publication_category=preprint] %})</span></h2>
  <p class="publication-section__note">Manuscripts not yet accepted for peer-reviewed publication.</p>

{% bibliography --query @*[publication_category=preprint] %}

</section>

</div>
