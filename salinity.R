salinity = function(T_0, T_in, q, v, dt, steps){
  time=0
  T_store = c(0)
  Time_store = c(0)
  for (i in 1:steps){
    T <-T + dt*(1/v) * (q*T_in - q*T) 
    T_store[i] = T
    time = time + dt
    Time_store[i]=  time
  }
return(list('time' = Time_store, 'concentration' =T_store))
tf <- salinity(1,10,0.024,0.5,0.1,1000)
plot(s$time, s$concentration)


