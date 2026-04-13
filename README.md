# hive_mind

### Developer's note: 

This project is a personal one, born from years of observing the less flattering patterns of human social behavior. It's my attempt to model and understand the mechanisms behind reputation, social pressure, and the quiet cruelties that groups inflict on individuals. The simulation is deliberately reductive — a gross oversimplification on the surface — but the core dynamics it captures are anything but. I intend to refine the mechanics over time. Consider this a work in progress and a thought experiment.


<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a>.

This project aims at dissecting and studying certain negative aspects of society via a modified cellular automaton wherein each student is a cell unit, having two values- repuatation and morale.
Reputation dictates public image and morale dictates self-confidence.
Breif wiorking summary:

- The project is a simulation of a classroom or social group with a reputation system.
- Each unit in the program represents a person with a reputation and morale value.
- Reputation can be affected by pre-determined "events" that can be activated by a unit.
- "Negative" events require a minimum reputation to be activated and have a maximum morale above which a unit cannot activate them.
- "Positive" events require a minimum morale to be activated and are less impactful than negative events.
- High reputation, low morale units can target other units to bring their morale down, temporarily boosting their own reputation.
- Low morale, low reputation units can become unable to engage in positive behaviors if they have been bullied too much.
- There is also a global morale value that is proportional to the whole system's morale.
- The system can have a one-time "nexus event" where targeted bullying of a low morale and reputation unit can cause them to exit the system by committing suicide, leading to a severe 
  drop in the perpetrator's reputation and the system's global morale.
  - In rare cases, a low morale and low reputation unit that was previously high morale may start attacking units nearby, leading to multiple unit deaths in it's immediate vicinity, including itself
 
  ## Event Names & Templates

## Events

### Standard Events

| Event Name Template | Internal Name | Type | Min Morale (Activator) | Max Morale (Activator) | Min Reputation (Activator) | Neighbors Required | No. of Targets | Target Morale Effect | Target Reputation Effect | Activator Morale Effect | Activator Reputation Effect |
|---|---|---|---|---|---|---|---|---|---|---|---|
| [A] praised [B]'s work in front of [C] | Public Praise | Positive | 70 | — | 40 | 2 | 1 | +5 | +15 | -10 | +10 |
| [A] encouraged [B] after a setback | Words of Encouragement | Positive | 60 | — | — | 1 | 1 | +10 | +5 | -5 | +5 |
| [A], [B], and [C] rallied around [D] | Group Rally | Positive | 80 | — | 50 | 3 | All neighbors | +15 | 0 | -20 | +15 |
| [A] quietly checked in on [B] | Peer Support | Positive | 50 | — | — | 1 | 1 | +20 | 0 | -5 | +5 |
| [A] told [C] that [B] said something about them | Rumor Mill | Negative | — | 40 | 60 | 1 | 1 | -5 | -20 | +5 | +10 |
| [A] called out [B] in front of [C] and [D] | Public Humiliation | Negative | — | 30 | 70 | 2 | 1 | -25 | -20 | +10 | +15 |
| [A] convinced [B] and [C] to leave [D] out | Social Exclusion | Negative | — | 35 | 65 | 3 | 1 | -20 | -15 | +5 | +20 |
| [A] wouldn't leave [B] alone | Targeted Harassment | Negative | — | 20 | 75 | 1 | 1 | -30 | -10 | +15 | +10 |

> **Note:** `—` denotes no restriction on that value. All values are subject to tuning. Activator morale cost on positive events represents the emotional effort of uplifting others.

---

### Catastrophic Events

| Event Name Template | Internal Name | Type | Trigger Conditions | Min Ticks in Degraded State | Probability Roll | Deaths Caused | Cause of Activator Death | Min Neighbor Deaths | Survivor Morale Effect | Survivor Reputation Effect | Global Morale Effect | Rarity |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| [A] couldn't take it anymore | Nexus Event | Inward | Activator morale ≤ 10, reputation ≤ 20; targeted by Targeted Harassment ≥ 3 times | 5 | 5% | 1 (activator only) | Self-inflicted | 0 | -30 (witnesses) | -20 (perpetrators) | -40 | Rare |
| [A] snapped and took [B] and [C] with them, before [D] and [E] put a stop to it | Cascade Event | Outward | Activator morale ≤ 10, reputation ≤ 20; peak historical morale ≥ 70; morale drop ≥ 60 | 8 | 2% | 2–4 neighbors + activator | Killed by surviving neigh
