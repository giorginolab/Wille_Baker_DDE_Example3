
using DifferentialEquations
using Plots
# http://docs.juliadiffeq.org/latest/tutorials/dde_example.html

const tau1 = 1; const tau2=.2
function bc_model(t,u,h,du)
    du[1]=h(t-tau1)[1]
    du[2]=h(t-tau1)[1]+h(t-tau2)[2]
    du[3]=u[2]
end

lags = [tau1, tau2]
h(t) = ones(3)
tspan = (0.0,5.0)
u0 = [1.0,1.0,1.0]
prob = DDEProblem(bc_model,h,u0,tspan,lags)


alg = MethodOfSteps(BS3())

sol = solve(prob,alg)

 plot(sol)

sol(1:5)
