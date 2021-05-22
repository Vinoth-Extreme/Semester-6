start(AirPassengers)
end(AirPassengers)
# plot(AirPassengers)
# abline(lm(AirPassengers ~ time(AirPassengers)))

# Make variance equal
# plot(log(AirPassengers))
# abline(lm(log(AirPassengers) ~ time(log(AirPassengers))))

# Make mean constant
plot(diff(log(AirPassengers)))
abline(lm(diff(log(AirPassengers)) ~ time(diff(log(AirPassengers)))))

# calculating needed values.
acf(diff(log(AirPassengers))) # value of q = 1
pacf(diff(log(AirPassengers))) # value of p = 0
# d = 1 ( Number of differentiation )

# Constructing Arima model
mdl = arima(log(AirPassengers), c(0, 1, 1), seasonal = list(order = c(0, 1, 1), period = 12)) -> mode
predicted = predict(mdl, 10*12)
print(predicted) # all values are logrithamic

# log values to normal values
newPredicted = 2.718 ^ predicted$pred
ts.plot(AirPassengers, newPredicted, log="y", lty=c(1, 3), col="red")