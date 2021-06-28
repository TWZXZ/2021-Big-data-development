import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn import metrics
import boto3
import pandas as pd

if __name__ == "__main__":

    pd.set_option("display.max_columns", None)

    df = pd.read_csv("./heart.csv")

    # 展示数据
    # print(df.head(10))

    # 读取数据
    y = df.output.values
    x = df.drop(['output'], axis=1)

    # 划分训练集和测试集
    x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2)
    x_test_result = x_test

    # 对变量进行归一化
    standardScale = StandardScaler()
    standardScale.fit(x_train)
    x_train = standardScale.transform(x_train)
    x_test = standardScale.transform(x_test)

    # 定义逻辑回归模型
    log_reg = LogisticRegression()
    log_reg.fit(x_train, y_train)
    LogisticRegression(C=2.0, class_weight=None, dual=False, fit_intercept=True,
                       intercept_scaling=1, max_iter=100, multi_class='ovr', n_jobs=1,
                       penalty='l2', random_state=None, solver='liblinear', tol=0.0001,
                       verbose=0, warm_start=False)

    # 使用训练好的逻辑回归模型进行预测
    y_predict_log = log_reg.predict(x_test)

    # 调用accuracy_score计算分类准确度
    accuracy_score = metrics.accuracy_score(y_test, y_predict_log)
    print("accuracy_score:{}".format(accuracy_score))
    f1_score = metrics.f1_score(y_test, y_predict_log)
    print("f1_score:{}".format(f1_score))
    matrix = metrics.classification_report(y_test, y_predict_log)
    print("Evaluate Matrix：\n{}".format(matrix))

    # 获得预测结果
    y_predict_log = pd.DataFrame(y_predict_log)
    y_predict_log.columns = ['predict']
    x_test_result = x_test_result.reset_index(drop=True)
    result = pd.concat([x_test_result, y_predict_log], axis=1)
    result.to_csv("heart_predict.csv")

    # 将结果上传至S3
    print("Uploading the result to S3 bucket.")
    s3 = boto3.client('s3', aws_access_key_id='55CBCFFE0D417E43659B',
                      aws_secret_access_key='WzE2NUE4OUE5QTAyQTg5QzcwNDdBMTI4RkI2OEUw',
                      endpoint_url='http://scut.depts.bingosoft.net:29997')
    s3.upload_file('./heart_predict.csv', 'tangwei', 'heart_predict.csv')
    print("Upload Successful !")