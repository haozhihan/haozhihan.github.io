---
layout: page
permalink: /awards/
title: awards
nav: true
nav_order: 3
_styles: |
  .awards-list { list-style: none; margin: 1.5rem 0 3rem; padding: 0; }
  .awards-list > li { border-bottom: 1px solid var(--global-divider-color); }
  .awards-list > li:first-child { border-top: 1px solid var(--global-divider-color); }
  .award-row { display: grid; grid-template-columns: 1rem minmax(0, 1fr) auto; gap: 1rem; align-items: baseline; padding: 1.25rem 0; }
  summary.award-row { cursor: pointer; list-style: none; }
  summary.award-row::-webkit-details-marker { display: none; }
  summary.award-row::before { content: "›"; font-size: 1.5rem; line-height: 1; color: var(--global-theme-color); transition: transform 160ms ease; }
  details[open] > summary.award-row::before { transform: rotate(90deg); }
  .award-row--plain::before { content: ""; }
  .award-row:focus-visible { outline: 2px solid var(--global-theme-color); outline-offset: 4px; border-radius: 2px; }
  .award-title { display: block; font-size: 1.05rem; font-weight: 600; line-height: 1.5; }
  summary:hover .award-title { color: var(--global-theme-color); }
  .award-institution { display: block; margin-top: .25rem; font-size: .9rem; color: var(--global-text-color-light); }
  .award-date { color: var(--global-text-color-light); font-size: .95rem; white-space: nowrap; font-variant-numeric: tabular-nums; }
  .award-description { margin: -.25rem 0 1.25rem 2rem; max-width: 42rem; color: var(--global-text-color-light); font-size: .95rem; line-height: 1.7; }
  @media (max-width: 575px) {
    .award-row { grid-template-columns: .75rem minmax(0, 1fr); gap: .75rem; padding: 1rem 0; }
    .award-date { grid-column: 2; font-size: .85rem; }
    .award-title { font-size: 1rem; }
    .award-description { margin-left: 1.5rem; }
  }
---

<ul class="awards-list" aria-label="Honors and awards">
  {% for award in site.data.awards %}
    <li>
      {% if award.description %}
        <details>
          <summary class="award-row">
            <span>
              <span class="award-title">{{ award.title | escape }}</span>
              {% if award.institution %}<span class="award-institution">{{ award.institution | escape }}</span>{% endif %}
            </span>
            <span class="award-date">{{ award.date }}</span>
          </summary>
          <p class="award-description">{{ award.description | escape }}</p>
        </details>
      {% else %}
        <div class="award-row award-row--plain">
          <span>
            <span class="award-title">{{ award.title | escape }}</span>
            {% if award.institution %}<span class="award-institution">{{ award.institution | escape }}</span>{% endif %}
          </span>
          <span class="award-date">{{ award.date }}</span>
        </div>
      {% endif %}
    </li>
  {% endfor %}
</ul>
