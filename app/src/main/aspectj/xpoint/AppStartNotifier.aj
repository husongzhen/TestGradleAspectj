package xpoint;

import android.util.Log;

import com.allen.code.testasp.App;


aspect AppStartNotifier {

    pointcut postInit(): target(App) && execution(* App.onCreate());

    after():postInit() {
        Log.e("tag", "postinit");
    }
}