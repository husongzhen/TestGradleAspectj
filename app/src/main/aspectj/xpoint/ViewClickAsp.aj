package xpoint;

import android.util.Log;
import android.view.View;

import com.allen.code.testasp.R;

import java.util.Calendar;

/**
 * Created by husongzhen on 17/10/13.
 */
aspect ViewClickAsp {
    View view;
    static int TIME_TAG = R.id.click_id;
    private static final int MIN_CLICK_DELAY_TIME = 600;//间隔时间600ms

    pointcut clickSigle():
            execution(void *.onClick(View));

    void around(): clickSigle(){
        for (Object arg : thisJoinPoint.getArgs())
            if (arg instanceof View) view = (View) arg;
        if (view != null) {
            Object tag = view.getTag(TIME_TAG);
            long lastClickTime = ((tag != null) ? (long) tag : 0);
            long currentTime = Calendar.getInstance().getTimeInMillis();
            if (currentTime - lastClickTime > MIN_CLICK_DELAY_TIME) {//过滤掉600毫秒内的连续点击
                view.setTag(TIME_TAG, currentTime);
                proceed();//执行原方法
            }
        } else {
            Log.e("ViewClickAsp", "tow click");
        }

    }

}
