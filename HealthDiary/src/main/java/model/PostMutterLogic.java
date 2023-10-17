package model;

// 投稿に関する処理を行うモデル

import java.util.List;

public class PostMutterLogic {
	
	public void execute (Mutter mutter, List<Mutter> mutterList) {
		
		// 先頭に追加して投稿を保存
		mutterList.add(0, mutter);
		
	}

}
