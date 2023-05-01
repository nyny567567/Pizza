package com.pizza.check;

import static com.pizza.view.AppUI.customerMenu;
import static com.pizza.view.AppUI.inputInteger;

import com.pizza.common.AppService;
import com.pizza.custommer.MemberMenu;
import com.pizza.custommer.NonMemMenu;

public class checkMember implements AppService {


	private AppService service;

	@Override
	public void start() {
		customerMenu();
		int sel = inputInteger();
	
		if(sel == 1) {
			service = new MemberMenu();
		} else if(sel == 2) {
			service = new NonMemMenu();
		} else {
			System.out.println("\n잘못된 번호를 입력하셨습니다.");
			System.out.println("메인 화면으로 돌아갑니다.\n");
			return;
		}
	
		service.start();
	}
}
