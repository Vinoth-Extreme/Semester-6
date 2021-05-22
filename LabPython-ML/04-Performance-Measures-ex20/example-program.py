from sklearn.metrics import confusion_matrix, accuracy_score, precision_score, recall_score

actual    = [1, 1, 0, 1, 0, 0, 1, 0, 0, 0]
predicted = [1, 0, 0, 1, 0, 0, 1, 1, 1, 0]

cm1 = confusion_matrix(actual, predicted)
print(cm1)

tn, fp, fn, tp = confusion_matrix(actual, predicted).ravel()
print("True Positive ", tp)
print("True Negative ", tn)
print("False Positive ", fp)
print("False Negative ", fn)

print("Accuracy: ", accuracy_score(actual, predicted))
print("Precision: ", precision_score(actual, predicted))
print("Recall: ", recall_score(actual, predicted))

sensitivity = tp / (tp + fn)
print("Sensitivity: ", sensitivity)

specificity = tn / (tn + fp)
print("Specificity: ", specificity)