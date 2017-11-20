.class public Lcom/google/android/pano/util/ActivityTransitionBitmapHelper;
.super Ljava/lang/Object;
.source "ActivityTransitionBitmapHelper.java"


# static fields
.field private static sGetBinder:Ljava/lang/reflect/Method;

.field private static sPutBinder:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 25
    :try_start_0
    const-class v1, Landroid/os/Bundle;

    const-string v2, "putBinder"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/pano/util/ActivityTransitionBitmapHelper;->sPutBinder:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    const-class v1, Landroid/os/Bundle;

    const-string v2, "getBinder"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/pano/util/ActivityTransitionBitmapHelper;->sGetBinder:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :goto_1
    return-void

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 27
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "ActivityTransitionBitmapHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    const-string v1, "ActivityTransitionBitmapHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getBitmapFromBinderBundle(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const-string v4, "com.google.android.pano.util.extra_binder"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    const/4 v3, 0x0

    .line 40
    .local v3, "provider":Lcom/google/android/pano/util/IActivityTransitionBitmapProvider;
    const/4 v1, 0x0

    .line 41
    .local v1, "binder":Landroid/os/IBinder;
    sget-object v4, Lcom/google/android/pano/util/ActivityTransitionBitmapHelper;->sGetBinder:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 43
    :try_start_0
    sget-object v4, Lcom/google/android/pano/util/ActivityTransitionBitmapHelper;->sGetBinder:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.google.android.pano.util.extra_binder"

    aput-object v7, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/IBinder;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 50
    invoke-static {v1}, Lcom/google/android/pano/util/IActivityTransitionBitmapProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/pano/util/IActivityTransitionBitmapProvider;

    move-result-object v3

    .line 53
    :cond_1
    if-eqz v3, :cond_2

    .line 55
    :try_start_1
    invoke-interface {v3}, Lcom/google/android/pano/util/IActivityTransitionBitmapProvider;->getTransitionBitmap()Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 61
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "provider":Lcom/google/android/pano/util/IActivityTransitionBitmapProvider;
    :goto_1
    return-object v4

    .line 44
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v3    # "provider":Lcom/google/android/pano/util/IActivityTransitionBitmapProvider;
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ActivityTransitionBitmapHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 57
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityTransitionBitmapHelper"

    const-string v5, "The remote process is not accessible, maybe it was killed."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "provider":Lcom/google/android/pano/util/IActivityTransitionBitmapProvider;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
