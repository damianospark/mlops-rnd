#
# Tune
#
grid = {
    "n_estimators": [200],
    "max_depth": [3],
    "max_features": [4, 8],
    "random_state": [42],
}
test_scores = []

rf_model = RandomForestRegressor()

for g in ParameterGrid(grid):
    rf_model.set_params(**g)
    rf_model.fit(X_train, y_train)
    test_scores.append(rf_model.score(X_test, y_test))

best_index = np.argmax(test_scores)
print(test_scores[best_index], ParameterGrid(grid)[best_index])


#
# Train
#
rf_model = RandomForestRegressor(
    n_estimators=200, max_depth=3, max_features=4, random_state=42
)
rf_model.fit(X_train, y_train)
