![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

## How it works

A Brokaw bandgap reference using SKY130 PNP BJTs. A PTAT current generator feeds a summing amplifier with OTA feedback to produce a stable ~1.2V reference voltage.

## How to test

Apply 1.8V VDD and measure ua[5] (Vref). Expected output is ~1.2-1.3V. Sweep temperature from -40°C to 125°C to characterize stability.

## External hardware

None.
