
# Longevity Classification using XGBoost in R

# Install required packages if not already installed
# install.packages(c("xgboost", "caret", "Matrix", "ggplot2"))

library(xgboost)
library(caret)
library(Matrix)
library(ggplot2)

set.seed(42)

# Simulate gene expression dataset
n_samples <- 200
n_genes <- 1000
X <- matrix(runif(n_samples * n_genes), nrow = n_samples)
y <- factor(c(rep("young", 100), rep("old", 100)))

# Train-test split
train_idx <- createDataPartition(y, p = 0.8, list = FALSE)
X_train <- X[train_idx, ]
y_train <- y[train_idx]
X_test <- X[-train_idx, ]
y_test <- y[-train_idx]

# Convert to DMatrix for XGBoost
dtrain <- xgb.DMatrix(data = X_train, label = as.numeric(y_train) - 1)
dtest <- xgb.DMatrix(data = X_test, label = as.numeric(y_test) - 1)

# Train model
params <- list(
  objective = "binary:logistic",
  eval_metric = "logloss"
)
model <- xgb.train(
  params = params,
  data = dtrain,
  nrounds = 100,
  verbose = 0
)

# Predictions
pred <- predict(model, dtest)
pred_labels <- ifelse(pred > 0.5, "old", "young")

# Confusion Matrix
print(confusionMatrix(factor(pred_labels, levels = c("young", "old")), y_test))

# Feature Importance
importance <- xgb.importance(model = model)
top_10 <- head(importance, 10)
xgb.plot.importance(top_10)
