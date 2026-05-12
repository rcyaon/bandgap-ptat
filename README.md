![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

## How it works

A Brokaw bandgap reference using SKY130 PNP BJTs. A PTAT current generator feeds a summing amplifier with OTA feedback to produce a stable ~1.2V reference voltage.

## Brokaw topology

A bandgap reference cancels two opposing temperature behaviors: $V_{BE}$ drops with temperature, while $V_T = kT/q$ rises. Summed in the right ratio, they produce a stable ~1.2 V output tied to the silicon bandgap.[^1]

The PTAT correction current is set by two BJTs biased at 8:1, producing $\Delta V_{BE} = V_T \cdot \ln(n)$ across $R_1$. The ratio $R_2/R_1$ scales this to cancel the linear drift of $V_{BE}$ at the output:[^2]

$$V_{REF} = V_{BE} + (R_2/R_1) \cdot \Delta V_{BE}$$

This summation is performed by an OTA-based summing amplifier, which also closes the feedback loop to stabilize the operating point. A PTAT curvature correction current is then injected to flatten the remaining log-term curvature.[^3] 

This topology suits SKY130's imprecise, low-β PNPs (β = 10–20) because accuracy depends on BJT matching rather than absolute device parameters.

[^1]: Brokaw — "A simple three-terminal IC bandgap reference," IEEE JSSC, 1974

[^2]: Razavi — *Design of Analog CMOS Integrated Circuits*, 2nd ed. (2016), Ch. 11

[^3]: Banba et al. — "A CMOS bandgap reference circuit with sub-1-V operation," IEEE JSSC, 1999
