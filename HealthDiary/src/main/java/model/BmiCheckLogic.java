package model;

// BMI計算を行うモデル

public class BmiCheckLogic {
	
	public void execute (Mutter mutter) {
		
		// BMIを算出して設定
		double weight = mutter.getWeight();
		double height = mutter.getHeight();
		double bmi = weight / (height / 100.0 * height / 100.0);
		mutter.setBmi(bmi);
		
		
		// BMI指数から体型を判定して設定
		String bodyType;
		if (bmi < 18.5) {
			bodyType = "やせ型";
		} else if (bmi < 25) {
			bodyType = "普通";
		} else {
			bodyType = "肥満";
		}
		mutter.setBodyType(bodyType);
	}

}
