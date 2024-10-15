from neuron import h
from neuron.units import ms, mV
import csv

soma = h.Section(name="soma")
soma.L = 20
soma.diam = 20

soma.insert("hh")

iclamp = h.IClamp(soma(0.5))
iclamp.delay = 2
iclamp.dur = 0.1
iclamp.amp = 0.9

v = h.Vector().record(soma(0.5)._ref_v)
t = h.Vector().record(h._ref_t)

h.load_file("stdrun.hoc")
h.finitialize(-65 * mV)
h.continuerun(40 * ms)

with open("data.csv", "w") as f:
    csv.writer(f).writerows(zip(t, v))
