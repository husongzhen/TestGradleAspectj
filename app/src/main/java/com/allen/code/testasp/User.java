package com.allen.code.testasp;

import android.util.Log;

import java.util.logging.Logger;

/**
 * 作者：husongzhen on 17/9/28 18:13
 * 邮箱：husongzhen@musikid.com
 */

public class User {


    public static final User news() {
        return new User();
    }


    public User() {
        Log.e("user", "news");
    }
}
