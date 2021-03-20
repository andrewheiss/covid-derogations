---
title: "Derogations and Democratic Backsliding: Exploring the Pandemic's Effects on Civic Spaces"
author:
- name: Suparna Chaudhry
  affiliation: Lewis & Clark College
  email: schaudhry@lclark.edu
  url: http://www.suparnachaudhry.com/
- name: Andrew Heiss
  affiliation: Georgia State University
  email: aheiss@gsu.edu
  url: https://www.andrewheiss.com/
date: March 21, 2021
published: This is an early draft of a working paper.
git-repo: https://github.com/andrewheiss/covid-derogations
abstract: >-
  In an effort to combat the COVID-19 pandemic, most governments have imposed restrictions on civic freedoms in the interest of public health. In many cases, these emergency measures have been temporary and proportional in terms of controling the pandemic. In many other instances, however, governments have used these restrictions to suppress opposition and more permanently restrict civic space. Systematically measuring the consequences of COVID restrictions, however, is a difficult task. We will examine two possible quantitative measures of the relationship between of COVID restrictions and civil society space. First, we will use the Variety of Democracy project's newly released Pandemic Violations of Democratic Standards Index to explore if and how civil society restrictions predict pandemic backsliding. Second, while many countries sign international human rights treaties that ostensibly bind states to respect rights, several treaties allow for emergency derogations from these obligations. We will tabulate formal human rights treaty derogations due to the pandemic and explore whether these emergency measures led to lasting declines in associational and human rights. We hope that our exploration of these two measures will provide rich data-based descriptions of the relationship between COVID restrictions and civic space that will allow for more causal work in the future.
reference-section-title: References
output:
  bookdown::html_document2: default
editor_options: 
  chunk_output_type: console
---





<!-- manuscript.md is generated from manuscript.Rmd. Only edit the .Rmd file, *not* the .md file. -->

See Figure \@ref(fig:cars-plot).

<img src="figure/cars-plot-1.png" title="The cars data." alt="The cars data." width="85%" style="display: block; margin: auto;" />

Combating a deadly virus like SARS-CoV-2 requires extraordinary public health measures that often conflict with personal rights and freedoms. In an effort to fight the COVID-19 pandemic, governments across the world have imposed restrictions on the freedom of movement, association, assembly, and other civic freedoms in the interest of public health. While countries are ostensibly free to make these emergency domestic policy decisions within their own borders, many states are also bound by international human rights treaties. Throughout the COVID-19 pandemic, many countries have declared states of emergency and formally derogated (i.e. temporarily suspended) their international treaty obligations. However, far more countries have adopted emergency measures and restricted individual liberties than have derogated from human rights treaties. While some states that have formally derogated with temporary and proportionate emergency responses, as advised by the United Nations Office of the High Commissioner of Human Rights [@ohchr:2020], others have used these emergency measures to suppress opposition and more permanently restrict civic space. During the COVID-19 pandemic, how many countries have formally derogated from their human rights treaty obligations and how has the nature of measures implemented during this period differed across countries? In the long-term, we aim to use our rich data-based description of the relationship between pandemic restrictions and civic space to examine whether these emergency measures led to lasting declines in associational and human rights, furthering the phenomenon of closing civic space.



Studying state compliance with the international human rights treaty obligations as well as the (unintended) effects of derogations is important, especially given the ongoing prior phenomenon of closing civic space. Even prior to the pandemic, since 2013, 91 countries had proposed or enacted 244 measures restricting civil society [@icnl:2021]. In Human Rights Watch's 2016 World Report, Executive Director Kenneth Roth argued that civil society was under more aggressive attack than at any time in recent memory, and over the past decade, the majority of the world has seen a substantial narrowing of allowable civic space. By the end of 2020, only 21% of countries had open and unrestricted civil societies [@civicusmonitor; @ChaudhryHeiss:2021].

<img src="figure/civicus-map-1.png" title="plot of chunk civicus-map" alt="plot of chunk civicus-map" width="85%" style="display: block; margin: auto;" />

According to the International Center for Not-for-Profit Law (ICNL), since the beginning of the pandemic in March 2020, 107 countries have declared official states of emergency, with 56 implementing measures affecting freedom of expression and an astonishing 139 imposing measures affecting freedom of assembly [@icnl-covid]. Many other countries have erected new barriers to public information, limited media access, engaged in government-sponsored disinformation campaigns, and penalized dissent. Some countries have prevented NGOs from delivering services and banned civil society organizations from carrying out their missions. Others have used pandemic restrictions as an excuse for delaying elections [@ifes:2020] or to denying arrested individuals adequate legal representation in judicial proceedings [@unodc]. The pandemic has led to a marked increase in human rights violations around the world.

States that are signatories to international human rights treaties are arguably bound to uphold them and limit potential violations of human rights. While many countries have been able to implement emergency public health measures without (1) requesting formal derogations from international treaties or (2) violating mass human rights, many others have essentially violated their treaty commitments. While issuing derogations is not necessarily a sign of impending human rights violations, several countries have already renewed their initial derogations, leading to concerns of a rise in serial derogators and a potential for emergency measures that are neither proportional nor temporary.

We explore the relationship between emergency pandemic responses, treaty derogations, human rights, democratiziation, and the space for civil society using original data on derogations from the International Covenant on Civil and Political Rights (ICCPR) during the pandemic as well as new data collected by the Varieties of Democracy (V-Dem) project on emergency measures implemented during the COVID-19 pandemic. After looking at at some of the predictors of the adoption of emergency measures, the violation of human rights, and the choice to derogate, we develop a typology of pandemic responses and find that most countries failed to request formal ICCPR derogations despite the adoption of strict publich health measures. Only 23 countries submitted formal derogations as part of their pandemic response, and of these, five adopted policies that were not temporary, proportional, or necessary. We then provide short case studies of Guatemala, Armenia, Egypt, and India to illustrate different types of choices to derogate and declare emergencies. We conclude with brief thoughts about the potential of using this data for future work.


# International treaty derogations

Derogations in international law authorize states to temporarily suspend their international treaty commitments during times of crises, providing them with flexibility in responding to national crises. However, because derogations are only triggered during extraordinary times of war, disease, and other extenuating circumstances, these suspensions of obligations occur when individual liberties are under serious threat [@HBderogations, 674, 677]. By declaring a state of public emergency and formally derogating, states acknowledge that these measures are temporary, necessary, and proportional to the interest at stake, with an aim to restore normalcy as soon as possible. 

Derogations—especially through the use of formal notifications by the state—provide vital information to both international and domestic monitoring bodies, interest groups, and advocates about which rights are suspended, for how long, and the reasoning behind these suspensions. This information allows these actors—at least in principle—to challenge measures that are excessive, vague, or outlast the intended time frame of their implementation [@Helfer:2021]. Derogations also provide an important temporary escape hatch—without the ability to derogate, countries facing emergencies may outrightly violate their treaty commitments under international law. Further, they may also illegally violate non-derogable rights such as right to life, freedom from torture, and slavery.

Derogations in international law authorize states to temporarily suspend their international treaty commitments during times of crises, providing them with flexibility in responding to national crises. However, because derogations are only triggered during extraordinary times of war, disease, and other extenuating circumstances, these suspensions of obligations occur when individual liberties are under serious threat [@HBderogations, 674, 677]. By declaring a state of public emergency and formally derogating, states acknowledge that these measures are temporary, necessary, and proportional to the interest at stake, with an aim to restore normalcy as soon as possible. Derogations provide an important temporary escape hatch—without the ability to derogate, countries facing emergencies may outrightly violate their treaty commitments under international law. Further, they may also illegally violate non-derogable rights such as right to life, freedom from torture, and slavery.

While the most frequent derogators are stable democracies and countries where domestic courts can exercise strong oversight of the executive and hold them responsible for breaches of human rights agreements, derogations—especially in the context of a long-lasting event such like a pandemic—are more concerning because of the tendency of some countries to turn into "serial derogators." These countries generally derogate "without providing information about rights restrictions and in multiple consecutive years" [@HBderogations, 675]. These patterns are typically encountered in countries where the judiciary is weak and voters cannot easily remove leaders from office.

## Derogations during the pandemic

The exceptional circumstances brought on by the global pandemic have led to numerous extensive derogations. International human rights treaties typically lay out circumstances during which derogations may take place. For signatories of the European Convention on Human Rights (ECHR), for instance, derogations can be made "in time of war or other public emergency threatening the life of the nation" [@ohchr:2003, 815]; for the American Convention on Human Rights, derogations are allowed in "time of war, public danger, or other emergency that threatens the independence or security of a state" [@ohchr:2003, 859]. In the current version of this paper, however, we focus on derogations from—and violations of—the International Covenant on Civil and Political Rights (ICCPR), arguably the most significant and extensive treaties in the international human rights regime.

The ICCPR was adopted by the UN General Assembly on December 19, 1966 and came into force on March 23, 1976. It was designed to recognize "the inherent dignity and of the equal and inalienable rights of all members of the human family" and it outlined dozens of articles aimed at creating conditions where everyone can enjoy their civil, political, economic, social, and cultural rights. Like other human rights treaties, the ICCPR allows the suspension or derogation of certain civil and political rights only under specific situations "public emergency which threatens the life of the nation" [@iccpr].

Recognizing that public health exigencies would require states to curb civil and political rights, the UN Human Rights Office of the High Commissioner (OHCHR) published guidance on emergency measures on April 27 2020, stating that any emergency measures must meet specific criteria of legality, necessity, proportionality, and non-discrimination. Further, the OHCHR reminded countries that states of emergency are specifically regulated under human rights law and that "states should take measures to prevent human rights violations and abuses associated with the state of emergency perpetrated by state and non-state actors" [@ohchr:2020]. The OHCHR concluded with a reminder of the necessity of maintaining democratic norms and practices, including transparency, the right to information, media freedom, respect for rule of law, and allowing dissent. It is worth noting, however, that no international court or monitoring body has assessed whether or not individual countries' measures are necessary, temporary, proportionate.

However, given the ongoing trend of limiting civic space, many of these democratic freedoms have been under assault for years. Additionally, trends in democratic backsliding more generally raise concerns that many states may be using emergency measures intended to deal with the pandemic as a way to permanently suppress civic space and limit human rights. How many countries have formally derogated from their treaty obligations? How many have imposed official states of emergency? How have democratic norms, respect for human rights, and the environment for civil society fared under these emergency measures? Does formal derogation provide some protection against human rights abuses? Most importantly, will these emergency measures lead to prolonged abuses and reduced civic space?


# Derogations, emergencies, human rights, and civil society

We explore these questions with both quantitative and qualitative data. In 2020, the Varieties of Democracy (V-Dem) project published "PanDem," a new dataset on pandemic-era democratic backsliding [@vdem-pandem]. This PanDem data tracks several important measures of democratization and human rights abuses, including data on national emergency measures, violations of non-derogable rights, limitations on the media and journalists, and military involvement in public health enforcement. PanDem also provides two indices measuring general violations of democratic standards and democratic backsliding. PanDem's data reveals fascinating relationships between pandemic emergency measures, democratization, and human rights.



## Emergency measures, human rights, and civil society

A majority of countries made some sort of official public health response to the pandemic, and most used legal avenues for their responses: 81% of countries used legal instruments to declare public emergencies at some point during 2020, while 16% used extralegal avenues. Only a handful had no official national emergency response throughout 2020: Canada, China, Germany, Nicaragua, and North Korea.

<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Emergency response </th>
   <th style="text-align:right;"> N </th>
   <th style="text-align:left;"> % </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Declaration in existing legal framework </td>
   <td style="text-align:right;"> 49 </td>
   <td style="text-align:left;"> 34.0% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Declaration in existing legal framework, distinguishes public health emergency </td>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:left;"> 10.4% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Declaration of disaster where different from emergency </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:left;"> 5.6% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Declaration using other legislation </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:left;"> 30.6% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Emergency response without legal instruments </td>
   <td style="text-align:right;"> 23 </td>
   <td style="text-align:left;"> 16.0% </td>
  </tr>
  <tr>
   <td style="text-align:left;"> No emergency response </td>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:left;"> 3.5% </td>
  </tr>
</tbody>
</table>

There are distinct patterns that help predict which kind of response a country made. There is a uniform distribution of adherence to democratic values within countries that used legal methods for declaring emergencies. For instance, both Denmark and Tajikistan used legal instruments to declare their respective emergencies. However, among countries that declared emergencies without any legal instruments, there are no countries that score above 0.5 on V-Dem's liberal democracy index. All countries that used extralegal methods for handling the pandemic have weak democratic norms. This is also true when looking specifically at regime type. Only one democracy—Sri Lanka—declared an emergency extralegally.

<img src="figure/democracy-regime-declaration-1.png" title="plot of chunk democracy-regime-declaration" alt="plot of chunk democracy-regime-declaration" width="100%" style="display: block; margin: auto;" />

An overarching fear as countries declared emergency pandemic measures is that these policies would serve as an excuse to violate human rights, limit the space for civil society, and lead to democratic backsliding. PanDem includes data on the intensity of various human rights violations, including discriminatory actions (measured on a 0–3 scale), violations of non-derogable rights like the right to life, freedom from torture, and freedom of thought, conscience, and religion, and physical violence by the police or military (measured on a 0–3 scale). The variety of pandemic-justified human rights violations differs by countries' formal responses. 

<img src="figure/violation-plots-1.png" title="plot of chunk violation-plots" alt="plot of chunk violation-plots" width="100%" style="display: block; margin: auto;" />

Countries that implemented emergency measures without a formal legal process were more likely to engage in discriminatory measures and violate non-derogable rights. Surprisingly, countries that used formal legal instruments were more likely to enforce these measures harshly and have a higher average abusive enforcement score. This is possibly due the the fact that these countries' states of emergency were formalized and thus had official enforcement measures—there were administrative and legislative teeth to these regulations, so to speak. Countries that used extralegal measures for their emergencies had fewer legal avenues to abuse when enforcing.

The level of democracy in a country is a fairly strong predictor of the severity of its pandemic response. As seen in Figure X, stronger democracies have substantially lower pandemic violations scores than countries with no democracy. Democracy is also a predictor of backsliding, though it has a curvilinear relationship due to the nature of backsliding. Strong democracies and non-democracies are at the lowest risk of backsliding already—strong consolidated democracies are ostensibly more resilient to authoritarian movements, while non-democracies have little democracy to undo. Countries with midrange democracy scores are at the highest risk of backsliding as a result of their emergency pandemic measures.

<img src="figure/libdem-pandem-1.png" title="plot of chunk libdem-pandem" alt="plot of chunk libdem-pandem" width="100%" style="display: block; margin: auto;" />


## Derogations, emergency measures, and human rights

Countries differ in how they have aligned and justified their emergency pandemic measures with their international treaty obligations. V-Dem's PanDem project does not include data on whether countries formally derogated from treaties. Accordingly, we collected our own original dataset listing all formal derogations from the ICCPR, which we will later expand to other treaties like the ECHR, ACHR, and the International Covenant on Economic, Social and Cultural Rights (CESCR). 

Of the 173 countries that have ratified the ICCPR, 23 submitted formal derogations at some point during the pandemic. We combine our list of derogations with the PanDem data to determine how these derogations have respected human rights and resulted in measures that are temporary, proportional, or necessary. For the sake of this paper, we identify measures that are not temporary, proportional, or necessary based on whether (1) a declared emergency has an end date and is not repeated or renewed excessively, (2) discriminatory violations have been de jure minor, de jure major, or de facto major, (3) non-derogable rights have been violated, and (4) abusive enforcement has occurred often or is widespread. Identifying both "proper" and "improper" responses like this allows us to create a typology of derogations and emergency measures, summarized in Table X.[^typology-note] Table Y lists all countries that formally derogated from ICCPR obligations, categorized by whether their emergency measures were temporary, proportional or necessary. In the appendix we include a list of countries that did not formally derogate.

[^typology-note]: PanDem only includes data for 144 countries, so the total here does not equal the ICCPR's 173 ratifying states.

<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Type of response </th>
   <th style="text-align:right;"> N </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Derogated as intended </td>
   <td style="text-align:right;"> 13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Derogated; measures not temporary, proportional, or necessary </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Emergency declared; no formal derogation </td>
   <td style="text-align:right;"> 74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> No emergency; no formal derogation </td>
   <td style="text-align:right;"> 28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Has not ratified ICCPR </td>
   <td style="text-align:right;"> 8 </td>
  </tr>
</tbody>
</table>

<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> Derogation start </th>
   <th style="text-align:left;"> Derogation end </th>
  </tr>
 </thead>
<tbody>
  <tr grouplength="13"><td colspan="3" style="border-bottom: 1px solid;"><strong>A: Derogated as intended</strong></td></tr>
<tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Azerbaijan </td>
   <td style="text-align:left;"> 9/27/2020 </td>
   <td style="text-align:left;"> 12/12/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Dominican Republic </td>
   <td style="text-align:left;"> 3/19/2020 </td>
   <td style="text-align:left;"> 3/2/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Ecuador </td>
   <td style="text-align:left;"> 3/16/2020 </td>
   <td style="text-align:left;"> 11/9/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Ethiopia </td>
   <td style="text-align:left;"> 4/8/2020 </td>
   <td style="text-align:left;"> 9/8/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Georgia </td>
   <td style="text-align:left;"> 3/21/2020 </td>
   <td style="text-align:left;"> 7/1/2021 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Guatemala </td>
   <td style="text-align:left;"> 3/5/2020 </td>
   <td style="text-align:left;"> 9/21/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Kyrgyzstan </td>
   <td style="text-align:left;"> 3/25/2020 </td>
   <td style="text-align:left;"> 5/10/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Namibia </td>
   <td style="text-align:left;"> 3/18/2020 </td>
   <td style="text-align:left;"> 8/18/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Paraguay </td>
   <td style="text-align:left;"> 3/16/2020 </td>
   <td style="text-align:left;"> 1/31/2021 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Peru </td>
   <td style="text-align:left;"> 3/15/2020 </td>
   <td style="text-align:left;"> 3/31/2021 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Romania </td>
   <td style="text-align:left;"> 3/16/2020 </td>
   <td style="text-align:left;"> 5/14/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Senegal </td>
   <td style="text-align:left;"> 3/23/2020 </td>
   <td style="text-align:left;"> 6/30/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Thailand </td>
   <td style="text-align:left;"> 3/25/2020 </td>
   <td style="text-align:left;"> 6/30/2020 </td>
  </tr>
  <tr grouplength="5"><td colspan="3" style="border-bottom: 1px solid;"><strong>B: Derogated; measures not temporary, proportional, or necessary</strong></td></tr>
<tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Argentina </td>
   <td style="text-align:left;"> 3/12/2020 </td>
   <td style="text-align:left;"> 3/12/2021 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Armenia </td>
   <td style="text-align:left;"> 3/16/2020, 9/27/2020 </td>
   <td style="text-align:left;"> 9/11/2020, N/A </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Chile </td>
   <td style="text-align:left;"> 3/18/2020 </td>
   <td style="text-align:left;"> 3/13/2021 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Colombia </td>
   <td style="text-align:left;"> 3/17/2020, 5/6/2020 </td>
   <td style="text-align:left;"> 4/16/2020, 6/4/2020 </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> El Salvador </td>
   <td style="text-align:left;"> 3/14/2020 </td>
   <td style="text-align:left;"> 5/29/2020 </td>
  </tr>
</tbody>
</table>

The severity of pandemic violations and democratic violations varies across these broader derogation responses. Countries that derogated as intended have the lowest average level of pandemic violations and are the least likely to face pandemic-driven democratic backsliding. This is likely because the countries that are operating as the ICCPR intends—states facing emergency measures formally derogate some rights for a limited, time-bound period—are more likely to respect human rights and democratic norms in general. The average level of pandemic violations increases outside of these rule-followers, and countries that derogate disproportionately, declare formal emergencies without derogation, or declare extralegal emergencies without derogation have higher average levels of violations and backsliding. It thus appears that adhering to the derogation process is a strong indicator of national respect for human rights.

<img src="figure/derogation-pandem-1.png" title="plot of chunk derogation-pandem" alt="plot of chunk derogation-pandem" width="100%" style="display: block; margin: auto;" />

The level of civil society openness also varies substantially across these four categories of emergency responses. Countries that formally derogated have far more open civil society than those that did not derogate. However, civil society openness is not necessarily a strong predictor of whether emergency measures are temporary or proportional. Interestingly, the five derogating countries that ended up abusing their privileges have relatively unrestricted and freely regulated civil societies. Countries that did not official derogate have more restricted space for civil society, and countries that did not issue a formal legal emergency and did not formally derogate tend to have an even lower average civil society index. Not surprisingly, countries that have not ratified the ICCPR have highly restricted civil societies.

<img src="figure/cssi-derogation-1.png" title="plot of chunk cssi-derogation" alt="plot of chunk cssi-derogation" width="85%" style="display: block; margin: auto;" />


# Case studies

As shown above, numerous countries derogated from their ICCPR obligations during the COVID-19 pandemic. However, many of these countries implemented measures that exceeded the recommended legal, necessary, temporary, and proportional standards. The violation of human rights—whether or not a country formally or appropriately derogated—poses important consequences for civic space. To complement our exploratory descriptive quantitative work and highlight the range in national responses, we illustrate the four types of derogation and emergency responses with preliminary case studies of Guatemala, Armenia, Egypt, and India.

<table class="table" style="margin-left: auto; margin-right: auto;border-bottom: 0;">
 <thead>
  <tr>
   <th style="text-align:left;"> Country </th>
   <th style="text-align:left;"> Type </th>
   <th style="text-align:center;"> Pandemic violations index </th>
   <th style="text-align:center;"> Pandemic backsliding index </th>
   <th style="text-align:center;"> Civil society index </th>
   <th style="text-align:left;"> Summary </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Guatemala </td>
   <td style="text-align:left;"> A: Derogated as intended </td>
   <td style="text-align:center;"> 0.2 </td>
   <td style="text-align:center;"> 0.19 </td>
   <td style="text-align:center;"> 0.88 </td>
   <td style="text-align:left;"> Requested derogations early; derogations have been lawful and generally proportionate </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Armenia </td>
   <td style="text-align:left;"> B: Derogated; measures not temporary, proportional, or necessary </td>
   <td style="text-align:center;"> 0.0 </td>
   <td style="text-align:center;"> 0.00 </td>
   <td style="text-align:center;"> 0.92 </td>
   <td style="text-align:left;"> Engaged in serial derogation; has committed some extraordinary human rights abuses </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Egypt </td>
   <td style="text-align:left;"> C: Emergency declared; no formal derogation </td>
   <td style="text-align:center;"> 0.3 </td>
   <td style="text-align:center;"> 0.13 </td>
   <td style="text-align:center;"> 0.19 </td>
   <td style="text-align:left;"> Used pandemic as excuse to continue long-standing state of emergency and further limit civil society </td>
  </tr>
  <tr>
   <td style="text-align:left;"> India </td>
   <td style="text-align:left;"> D: No emergency; no formal derogation </td>
   <td style="text-align:center;"> 0.3 </td>
   <td style="text-align:center;"> 0.28 </td>
   <td style="text-align:center;"> 0.36 </td>
   <td style="text-align:left;"> Constitutionally prohibited from declaring an emergency and unable to formally derogate; has violated treaty agreements </td>
  </tr>
</tbody>
<tfoot>
<tr><td style="padding: 0; " colspan="100%"><span style="font-style: italic;">Note: </span></td></tr>
<tr><td style="padding: 0; " colspan="100%">
<sup></sup> Pandemic violations index ranges from 0 to 0.65; higher values represent worse violations</td></tr>
<tr><td style="padding: 0; " colspan="100%">
<sup></sup> Pandemic backsliding index ranges from 0 to 0.5; higher values represent greater democratic backsliding</td></tr>
<tr><td style="padding: 0; " colspan="100%">
<sup></sup> Civil society index ranges from 0 to 1; higher values represent more open civil society</td></tr>
</tfoot>
</table>

## A: Derogated as intended

During the pandemic, Guatemala has derogated from both the ICCPR and the American Convention on Human Rights (ACHR). Similar to the ICCPR, the ACHR states its intent to reaffirm "their intention to consolidate in this hemisphere, within the framework of democratic institutions, a system of personal liberty and social justice based on respect for the essential rights of man" [@oas-achr]. Guatemala sent official notification of derogation to the Organization of American States (OAS) on March 23, 2020, stating the government's intention to derogate from Articles 15 and 22 of the ACHR.[^nv-gtm-3] Article 15 guarantees the right of peaceful assembly, while Article 22 protects the freedom of movement and residence, including rights for travel to and from Guatemala, as well as for "aliens" who flee persecution in their home country. Counter to trends in many countries across the globe, Guatemala notified the ICCPR before it sent notifications of derogation to the OAS, demonstrating a clear commitment to the treaties and international law. President Alejandro Giammattei formally requested a derogation from Articles 12 and 21 of the ICCPR on March 9, 2020, both of which concern the freedoms of movement, association, assembly and demonstration.

[^nv-gtm-3]: Note verbal Ref. NV-OEA-M4-No.182-2020, March 23, 2020, <http://www.oas.org/es/sla/ddi/docs/tratados_multilaterales_suspencion_garantias_Guatemala_nota_No_182-2020.pdf>

Guatemala was one of the first countries to act when the pandemic was declared in March, closing international borders as early as January [@osac-guatemala]. President Giammattei declared a state of emergency on March 21, instituting a lockdown that eventually ended in October 2020 [@Quixtan:2020]. The OHCHR commended the government on focusing on the role of women in the response to COVID-19 through an empowerment and awareness-raising campaign. Guatemala's displaced population has been severely impacted by the effects of the state of emergency. Cases of COVID-19 were reported among Guatemalan migrants and asylum seekers deported from Mexico and the United States of America. Many of these deportees had to undergo mandatory quarantine upon returning or entering Guatemala. OHCHR received information regarding inadequate infrastructure, food and sanitation at the quarantine shelters, and long waits to receive test results that prolonged the isolation of deportees [@ohchr-guat].

As of January 19, 2021, the Guatemalan government has requested derogations from two additional articles of the ACHR (Articles 13 and 16), and extensions to their previous derogations from Articles 15 and 22. Article 16 of the ACHR—like Article 21 of the ICCPR—protects the freedom of association, while Article 13 protects the freedom of thought and expression. Guatemala's derogation from this particular Article has been seen by some as a concerning attempt to silence media criticisms of the government's handling of the pandemic [@gsod-guat]. There have been concerns about limited transparency within the government during COVID—though the government itself has not targeted any journalists, the media has been shut out of various congressional sessions and have been unable to report accurately on the pandemic. 

Overall, though there are still causes for concern, Guatemala's derogations seem to be lawful and generally proportionate. The Central American nation has been quick to communicate its intentions to its treaty organizations, and has implemented lockdown restrictions that, though they have severely impacted Guatemala’s refugee and indigenous populations, have not been needlessly draconian or exploitative.

## B: Officially derogated but measures not temporary or proportional

Armenia reported its first COVID-19 case on March 1, 2020. As the number of cases rose, the government proclaimed a state of emergency on March 16, citing Article 3 of the Armenian Constitution which requires "the State to take measures for the protection of the life and health of individuals."[^arm-decision] Subsequently, Armenia also officially derogated from Articles 9, 12 and 21 of the ICCPR,[^articles-iccpr] as well as Article 11 of the ECHR[^article11-echr] on March 20, 2020.[^nv-arm-3] For both treaties, Armenia extended its original 30-day state of emergency—expected to end on April 14, 2020—another 30 days to May 14. The country issued five total 30-day extensions to the state of emergency and requested corresponding derogations.[^nv-arm-lots] Armenia's state of emergency finally concluded on September 11, 2020, and it issued a notice of withdrawal of derogation from the ECHR on September 16, 2020.[^nv-arm-9]

[^articles-iccpr]: Article 9 protects against arbitrary arrests and detentions; Article 12 protects the right of individual movement; Article 21 protects the right to assembly.

[^article11-echr]: Article 11 protects the right to assembly and association.

[^arm-decision]: "On declaring a state of emergency in the Republic of Armenia," Decision No. 298-N, March 16, 2020, <https://rm.coe.int/16809cf885>

[^nv-arm-3]: Note verbale No. 3201/C-084/2020, March 20, 2020, <https://rm.coe.int/16809cf885>

[^nv-arm-9]: Note verbale No. 3201/C-288/2020, September 16, 2020, <https://rm.coe.int/16809f97a6>

[^nv-arm-lots]: See Note verbale Nos. 3201/C-084/2020 (March 20, 2020), 3201/C-127/2020 (April 17, 2020), 3201/C-165/2020 (May 14, 2020), 3201/C-191/2020 (June 15, 2020), and 3201/C-223/2020 (July 15, 2020).

Some of Armenia's derogations have had a negative impact on vulnerable populations even though they were intended to be non-discriminatory. Its decision to derogate from Article 9 of ICCPR was neither a necessary nor a proportionate measure to aid them in halting the public health crisis caused by the pandemic as it caused further issues to public health and to the judicial system. Detainees were particularly affected by this derogation, as Article 9 of the ICCPR gives the right to a fair and timely trial. By derogating from this article, the Armenian government disproportionately targeted detainees in comparison to the rest of the population. As the Armenian government grappled with the rapidly spreading pandemic, they tried to slow its spread through the judicial system by halting court proceedings. This resulted in overcrowding of facilities, which subsequently posed a risk to the health of detained individuals and to public health in general [@MamulyanAleksanyan:2020]. This problem was exacerbated by the government's decision to repeatedly prolong its derogations.

Victims of domestic abuse were also unintentionally harmed by the government's decision to proclaim the state of emergency and derogate from both Article 21 of the ICCPR and Article 11 of the ECHR. As these proclamations meant that people could not leave their houses after a certain time and could not congregate with others, many women found themselves trapped in their homes under constant surveillance of their abusers. National police recorded no increase in reports of domestic abuse—however, the Ombudsperson's Office and various NGOs received an influx of reports after some measures had been lifted [@Mkrtchyan:2020].

## C: Emergency declared but no formal derogation

Egypt has been under a constant state of emergency since April 1, 2017, and the country has regularly extended its state of emergency every three months since then, including May 2020, October 2020, and January 2021 [@gsod-egypt]. Prior to March 2020, this continual state of emergency was unrelated to public health and was instead focused on stifling dissent, but in the wake of COVID-19, the government began to use the language of pandemic prevention to justify its ongoing emergency measures. Though the Egyptian government has formally declared a state of emergency domestically, it has not formally filed for derogations from any of its international treaty obligations, including the ICCPR, ratified in 1982 [@ccpr:2020]. Since the beginning of the pandemic, Egypt has implemented numerous measures that violate its ICCPR duties.

A large part of Egypt's pandemic restrictions focus on limiting freedom of movement and freedom of speech. There have been bans of all gatherings and more stringent media regulations in an effort to block false information. These regulations have caused many news websites and social media accounts to be blocked for spreading rumors about the pandemic. Since February 2020, at least ten doctors and six journalists have been arrested for spreading false information or for criticizing the government's response [@ap-egypt-covid:2020]. However, the government has not specified which information is false [@rsf-egypt:2020], creating massive uncertainty for journalists reporting on the pandemic.

In restricting freedom of movement, in addition to closing all shops and flights, the government also instituted a curfew with fines of up to 4,000 Egyptian pounds (\$255 USD) or prison for violators [@MouradLewis:2020]. By September 2020, the government had relaxed some of the restrictions on movement and gatherings, but had not lifted the restrictions on media and information [@icnl-covid]. This is part of a longer trend—since 2018, Egyptian law has allowed authorities to censor "online media outlets, websites, and personal social media accounts with more than 5,000 followers" [@rsf-egypt:2020]. The government's anti-COVID measures align well with its continuing campaign to reduce civic space and limit dissent.

## D: No emergency, no formal derogation

To illustrate the impact of pandemic restrictions and its impact on civic space without a formal declaration of emergency and consequent notice of derogation, we look at the case of India. According to Article 352 of India’s constitution, India is only allowed to declare a state of emergency to when its territory is threatened "by war or external aggression or armed rebellion"[^art352]—*not* in the case of public health crises. Despite having a total of over 11.5 million cases since the start of the pandemic and the implementation of measures to protect a sixth of the world’s population, India has not derogated from any of their treaties and instead has simply violated them. Without officially derogating, there is an absence of sunset clauses that typically ensure that there is an end to the measures a country implements during an emergency. Many of the measures against COVID-19 that have been implemented seem to disregard many fundamental human rights that should have been protected even in a state of emergency. This is vital because India is a party to both the International Covenant on Economic, Social and Cultural Rights (CESCR) and the ICCPR.

[^art352]: Part XVIII—Emergency Provisions—Article 352, <https://www.mea.gov.in/Images/pdf1/Part18.pdf>

When India went into lockdown in March 2020 the government only provided a four-hour notice, leaving many scrambling in confusion and desperation. This four-hour notice violates Article 19 of the ICCPR, which guarantees the right to seek and receive information, including early warnings of national measures like the lockdown. Not only is this a violation of the ICCPR, the CESCR General Comment No. 14 says that "access to information concerning the main health problems in the community, including methods of preventing and controlling them" is also a guaranteed right [@amnesty-covid:2020]. The lack of notice stranded a large numbers of migrant workers in cities, far from their homes in rural areas, with no transportation. Many of these workers died while trying to walk hundreds of miles back to their villages [@ChaudhryPrasad:2020].

Other measures have disproportionately impacted journalists' ability to work. For example, the Maharashtra government "prohibits organizations or individuals from publicizing information about the coronavirus without ascertaining prior clearance from relevant government health authorities" [@icnl-covid]. While these kinds of measures may have been intended to prevent the spread of misinformation, they have been used to suppress journalists and activists. The government has also used pandemic restrictions to arbitrarily arrest and detain opponents to the regime—including those protesting the government and its Hindu nationalist policies [@YasirSchultz:2020]. Subsequent to their arrest, detainees have had limited access to legal counsel, which has delayed their bails and led to their continued detention [@hrw:2020].

Many measures have also violated the right to privacy, which is not only protected by both the ICCPR and the CESCR[^iccpr17], it is even recognized as a fundamental right under Article 21 of the Indian Constitution. Concerns over enhanced surveillance techniques have also risen also due to a lack of security measures in sensitive information pertaining to the pandemic. There have been multiple leaks of personal information of infected peoples which has led to discrimination and even assault. These measures have led to some cases of Muslims being assaulted, harassed and denied medical attention or spikes in caste-based discrimination and violence during the pandemic [@Ayyub:2020].

[^iccpr17]: Article 17 of the ICCPR states that "No one shall be subjected to arbitrary or unlawful interference with his privacy, family, home or correspondence, nor to unlawful attacks on his honour and reputation."

Overall, India cannot declare a state of emergency due to the fact that its constitution only allows for a state of emergency to be declared under a physical threat to their territory. Since it can not declare a state of emergency, the government can not officially submit to the UN their intent to derogate from their treaties. Because the state can not derogate, it simply violates its treaty commitments. In putting its entire population under lockdown with little warning, many women suffered disproportionately and other minority groups such as Muslims received backlash and discrimination, both of which are non-derogable violations of Article 4 of the ICCPR. The lockdown also violated rights such as the right to information, the right to free movement, the right to privacy, and personal safety and integrity.


# Next steps

It is too early to tell if derogations, emergency measures, and pandemic-era human rights violations will causally lead to reduced civic space—that data has yet to be collected, and sufficient time still has not passed. At the time of this writing, the majority of the world remains in the throes of combatting the pandemic and only a handful are successfully rolling out vaccines at a large scale. However, preliminary data shows that civil society space and pandemic measures are closely linked, and case study evidence shows that many countries have—and will likely continue to—used emergency powers to directly limit civic space and curtail associational freedoms specifically. Broader indexes like V-Dem's PanDem and more specific counts of treaty derogations can provide useful avenues for identifying pandemic-excused backsliding and rights violations and will be invaluable for future research.


# Appendix: Countries that did not derogate

<table class="table" style="margin-left: auto; margin-right: auto;">
<tbody>
  <tr grouplength="19"><td colspan="4" style="border-bottom: 1px solid;"><strong>C: Emergency declared; no formal derogation</strong></td></tr>
<tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Albania </td>
   <td style="text-align:left;"> Gabon </td>
   <td style="text-align:left;"> Mexico </td>
   <td style="text-align:left;"> Slovenia </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Algeria </td>
   <td style="text-align:left;"> Ghana </td>
   <td style="text-align:left;"> Mongolia </td>
   <td style="text-align:left;"> South Africa </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Angola </td>
   <td style="text-align:left;"> Greece </td>
   <td style="text-align:left;"> Morocco </td>
   <td style="text-align:left;"> Spain </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Australia </td>
   <td style="text-align:left;"> Guinea </td>
   <td style="text-align:left;"> Mozambique </td>
   <td style="text-align:left;"> Sudan </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Austria </td>
   <td style="text-align:left;"> Honduras </td>
   <td style="text-align:left;"> Nepal </td>
   <td style="text-align:left;"> Sweden </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Belarus </td>
   <td style="text-align:left;"> Hungary </td>
   <td style="text-align:left;"> Netherlands </td>
   <td style="text-align:left;"> Switzerland </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Belgium </td>
   <td style="text-align:left;"> Ireland </td>
   <td style="text-align:left;"> New Zealand </td>
   <td style="text-align:left;"> Tajikistan </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Bolivia </td>
   <td style="text-align:left;"> Israel </td>
   <td style="text-align:left;"> Niger </td>
   <td style="text-align:left;"> Togo </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Botswana </td>
   <td style="text-align:left;"> Italy </td>
   <td style="text-align:left;"> Nigeria </td>
   <td style="text-align:left;"> Tunisia </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Brazil </td>
   <td style="text-align:left;"> Jamaica </td>
   <td style="text-align:left;"> North Macedonia </td>
   <td style="text-align:left;"> Turkey </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Bulgaria </td>
   <td style="text-align:left;"> Jordan </td>
   <td style="text-align:left;"> Norway </td>
   <td style="text-align:left;"> Uganda </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Chad </td>
   <td style="text-align:left;"> Kazakhstan </td>
   <td style="text-align:left;"> Panama </td>
   <td style="text-align:left;"> Ukraine </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Costa Rica </td>
   <td style="text-align:left;"> Kenya </td>
   <td style="text-align:left;"> Papua New Guinea </td>
   <td style="text-align:left;"> United States of America </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Croatia </td>
   <td style="text-align:left;"> Lebanon </td>
   <td style="text-align:left;"> Philippines </td>
   <td style="text-align:left;"> Uruguay </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Czech Republic </td>
   <td style="text-align:left;"> Lesotho </td>
   <td style="text-align:left;"> Poland </td>
   <td style="text-align:left;"> Uzbekistan </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Denmark </td>
   <td style="text-align:left;"> Liberia </td>
   <td style="text-align:left;"> Portugal </td>
   <td style="text-align:left;"> Zambia </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Egypt </td>
   <td style="text-align:left;"> Lithuania </td>
   <td style="text-align:left;"> Serbia </td>
   <td style="text-align:left;"> Zimbabwe </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Finland </td>
   <td style="text-align:left;"> Madagascar </td>
   <td style="text-align:left;"> Sierra Leone </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> France </td>
   <td style="text-align:left;"> Malawi </td>
   <td style="text-align:left;"> Slovakia </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr grouplength="7"><td colspan="4" style="border-bottom: 1px solid;"><strong>D: No emergency; no formal derogation</strong></td></tr>
<tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Afghanistan </td>
   <td style="text-align:left;"> Cameroon </td>
   <td style="text-align:left;"> India </td>
   <td style="text-align:left;"> Nicaragua </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Bangladesh </td>
   <td style="text-align:left;"> Canada </td>
   <td style="text-align:left;"> Indonesia </td>
   <td style="text-align:left;"> Pakistan </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Benin </td>
   <td style="text-align:left;"> Central African Republic </td>
   <td style="text-align:left;"> Iraq </td>
   <td style="text-align:left;"> Qatar </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Bosnia and Herzegovina </td>
   <td style="text-align:left;"> Democratic Republic of the Congo </td>
   <td style="text-align:left;"> Japan </td>
   <td style="text-align:left;"> Rwanda </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Burkina Faso </td>
   <td style="text-align:left;"> Eritrea </td>
   <td style="text-align:left;"> Kuwait </td>
   <td style="text-align:left;"> Somalia </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Burundi </td>
   <td style="text-align:left;"> Germany </td>
   <td style="text-align:left;"> Mali </td>
   <td style="text-align:left;"> Sri Lanka </td>
  </tr>
  <tr>
   <td style="text-align:left; padding-left:  2em;" indentlevel="1"> Cambodia </td>
   <td style="text-align:left;"> Haiti </td>
   <td style="text-align:left;"> Mauritania </td>
   <td style="text-align:left;"> Turkmenistan </td>
  </tr>
</tbody>
</table>
