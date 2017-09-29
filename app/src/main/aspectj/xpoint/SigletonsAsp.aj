package xpoint;


import android.util.Log;

import java.util.Hashtable;

/**
 * 作者：husongzhen on 17/9/28 17:53
 * 邮箱：husongzhen@musikid.com
 */
aspect SigletonsAsp {
    private  final Hashtable sigletons = new Hashtable();

    pointcut singletonNews(): call(* *.news());


    Object around():singletonNews(){
        Class singleton = thisJoinPoint.getSignature().getDeclaringType();
        synchronized (sigletons){
            if (sigletons.get(singleton) == null) {
                sigletons.put(singleton, proceed());
            }
        }
        Log.e("log", sigletons.size() + "");
        return sigletons.get(singleton);
    }
}
