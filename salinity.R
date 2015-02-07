# Rachel Rossi 1/6/15
# Kohlan MB 1/6/15

salinity = function(T_0, T_in, q, v, dt, steps){
	# Function: This function produces time and concentration vectors
	# according to Euler Method. It is useful for modeling a conservative 
	# tracer in a continuous reactor
	
	# Argumement
		# T_0, 
		# T_in 
		# q 
		# v 
		# dt 
		# steps
	
	# Outputs
		# List of 2 Vectors
	
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
}


