# Does not work

from jitcdde import jitcdde, y, t
import numpy

tau1 = 1.0
tau2 = .2

f = [ y(1,t-tau1),
      y(1,t-tau1)+y(2,t-tau2),
      y(2) ]

DDE=jitcdde(f)
DDE.constant_past([1.,1.,1.])
DDE.set_integration_parameters(max_step=0.0001,first_step=0.0001)
DDE.integrate_blindly(tau2)
#DDE.step_on_discontinuities()

times=numpy.arange(DDE.t, 5.001, .01)

out=numpy.vstack(DDE.integrate(T) for T in times)
out=numpy.c_[times, out]

numpy.savetxt("output.dat",out)
