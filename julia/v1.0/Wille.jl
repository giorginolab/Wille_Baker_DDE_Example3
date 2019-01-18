
Pkg.add("DifferentialEquations")

using DifferentialEquations
using Plots
# http://docs.juliadiffeq.org/latest/tutorials/dde_example.html

const tau1 = 1.0; const tau2=0.2
function bc_model(du,u,h,p,t)
    du[1]=h(p,t-tau1)[1]
    du[2]=h(p,t-tau1)[1]+h(p,t-tau2)[2]
    du[3]=u[2]
end

lags = [tau1, tau2]
h(p,t) = ones(3)
tspan = (0.0,5.0)
u0 = [1.0,1.0,1.0]
prob = DDEProblem(bc_model,u0,h,tspan; constant_lags=lags)


alg = MethodOfSteps(Tsit5())

sol = solve(prob,alg);

plot(sol)

sol(1:5)


