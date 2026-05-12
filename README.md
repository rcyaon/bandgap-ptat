![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

## How it works

A Brokaw bandgap reference using SKY130 PNP BJTs. A PTAT current generator feeds a summing amplifier with OTA feedback to produce a stable ~1.2V reference voltage.

## Brokaw Topology

A bandgap reference cancels two opposing temperature behaviors: V_BE drops with temperature, while $V_T = kT/q$ rises. Summed in the right ratio, they produce a stable ~1.2 V output tied to the silicon bandgap.[^1]

The PTAT correction current is set by two BJTs biased at 8:1, producing $\Delta V_{BE} = V_T \cdot \ln(n)$ across R1. The ratio R2/R1 scales this to cancel the linear drift of V_BE at the output:[^2]

$$V_{REF} = V_{BE} + (R2/R1) \cdot \Delta V_{BE}$$

A PTAT curvature correction current is then injected to flatten the remaining log-term curvature.[^3]

Furthermore, the Brokaw topology suits SKY130's imprecise, low-β PNPs (β = 10–20) because accuracy depends on BJT matching rather than absolute device parameters. 

[^1]: Brokaw — "A simple three-terminal IC bandgap reference," IEEE JSSC, 1974

[^2]: Razavi — *Design of Analog CMOS Integrated Circuits*, 2nd ed. (2016), Ch. 11

[^3]: Banba et al. — "A CMOS bandgap reference circuit with sub-1-V operation," IEEE JSSC, 1999
