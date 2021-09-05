feature_names = []
for n in [14, 30, 50, 200]:
    stock_data["ma" + str(n)] = talib.SMA(stock_data["Adj Close"].values, timeperiod=n)
    stock_data["rsi" + str(n)] = talib.RSI(stock_data["Adj Close"].values, timeperiod=n)

    feature_names = feature_names + ["ma" + str(n), "rsi" + str(n)]


stock_data["Volume_1d_change"] = stock_data["Volume"].pct_change()

volume_features = ["Volume_1d_change"]
feature_names.extend(volume_features)
stock_data["5d_future_close"] = stock_data["Adj Close"].shift(-5)
stock_data["5d_close_future_pct"] = stock_data["5d_future_close"].pct_change(5)
stock_data.dropna(inplace=True)

X = stock_data[feature_names]
y = stock_data["5d_close_future_pct"]

train_size = int(0.85 * y.shape[0])
X_train = X[:train_size]
y_train = y[:train_size]
X_test = X[train_size:]
y_test = y[train_size:]
