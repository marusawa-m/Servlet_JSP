package model;

// BMI計算を行うモデル

public class BmiCheckLogic {
	
	public void execute (Health health) {
		
		// BMIを算出して設定
		double weight = health.getWeight();
		double height = health.getHeight();
		double bmi = weight / (height / 100.0 * height / 100.0);
		health.setBmi(bmi);
		
		
		// BMI指数から体型を判定して設定
		String bodyType;
		if (bmi < 18.5) {
			bodyType = "やせ型";
		} else if (bmi < 25) {
			bodyType = "普通";
		} else {
			bodyType = "肥満";
		}
		health.setBodyType(bodyType);
	}


}
