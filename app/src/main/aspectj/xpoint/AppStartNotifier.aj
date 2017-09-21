package xpoint;

import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import android.widget.Toast;
import com.allen.code.testasp.App;

import com.allen.code.testasp.R;

aspect AppStartNotifier {

    pointcut postInit(): target(App) && execution(* App.onCreate());

    after():postInit() {
//        Application app = (Application) thisJoinPoint.getTarget();
//        NotificationManager nmng = (NotificationManager) app.getSystemService(Context.NOTIFICATION_SERVICE);
//        nmng.notify(9999, new NotificationCompat.Builder(app)
//                .setTicker("Hello AspectJ")
//                .setContentTitle("Notification from aspectJ")
//                .setContentText("privileged aspect AppAdvice")
//                .setSmallIcon(R.mipmap.ic_launcher)
//                .build());
//        Toast.makeText(app, "toast", Toast.LENGTH_SHORT).show();


        Log.e("tag", "postinit");

    }
}