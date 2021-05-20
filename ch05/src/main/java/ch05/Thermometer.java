package ch05;

import java.util.HashMap;
import java.util.Map;

public class Thermometer {
	Map<String, Double> th = new HashMap<String, Double>();
	public void setTh(String loc, double value) {	//지역 온도 저장(섭씨)
		th.put(loc, value);
	}
	public double getTh(String loc) {	// 지역의 온도를 읽을 때
		return th.get(loc);
	}
	public double getFarenheit(String loc) {	//화씨로 변환
		return th.get(loc) * 1.8 + 32;
	}
}
