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
