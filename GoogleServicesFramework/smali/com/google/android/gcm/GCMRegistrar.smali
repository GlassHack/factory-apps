.class public final Lcom/google/android/gcm/GCMRegistrar;
.super Ljava/lang/Object;
.source "GCMRegistrar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sAppPendingIntent:Landroid/app/PendingIntent;

.field private static sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

.field private static sRetryReceiverClassName:Ljava/lang/String;

.field private static sRetryReceiverContext:Landroid/content/Context;


# direct methods
.method static declared-synchronized cancelAppPendingIntent()V
    .locals 2

    .prologue
    .line 289
    const-class v1, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 291
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit v1

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Ljava/lang/Boolean;J)V

    .line 391
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 497
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 499
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 500
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Coult not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getBackoff(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 525
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 526
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "backoff_ms"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static varargs getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 262
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 263
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No senderIds"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 267
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 546
    const-string v0, "com.google.android.gcm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/high16 v6, -0x80000000

    .line 358
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 359
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "regId"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "registrationId":Ljava/lang/String;
    const-string v4, "appVersion"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 363
    .local v1, "oldVersion":I
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 364
    .local v0, "newVersion":I
    if-eq v1, v6, :cond_0

    if-eq v1, v0, :cond_0

    .line 365
    const-string v4, "App version changed from %d to %d;resetting registration id"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v8, v4, v5}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    .line 368
    const-string v3, ""

    .line 370
    :cond_0
    return-object v3
.end method

.method static varargs internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "flatSenderIds":Ljava/lang/String;
    const/4 v2, 0x2

    const-string v3, "Registering app for senders %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p0, v2, v3, v4}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-static {p0, v1}, Lcom/google/android/gcm/GCMRegistrar;->setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 237
    const-string v2, "sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 239
    return-void
.end method

.method static internalUnregister(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const/4 v1, 0x2

    const-string v2, "Unregistering app"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 259
    return-void
.end method

.method public static isRegistered(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "priority"    # I
    .param p2, "template"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 559
    const-string v1, "GCMRegistrar"

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GCMRegistrar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static varargs register(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 227
    invoke-static {p0, p1}, Lcom/google/android/gcm/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method static resetBackoff(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    const/4 v0, 0x2

    const-string v1, "Resetting backoff"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 515
    const/16 v0, 0xbb8

    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setBackoff(Landroid/content/Context;I)V

    .line 516
    return-void
.end method

.method static setBackoff(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backoff"    # I

    .prologue
    .line 539
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 540
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "backoff_ms"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 543
    return-void
.end method

.method private static declared-synchronized setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 297
    const-class v1, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x2

    const-string v2, "Creating pending intent to get package name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    const/4 v0, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    .line 303
    :cond_0
    const-string v0, "app"

    sget-object v2, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit v1

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setRegisteredOnServer(Landroid/content/Context;Ljava/lang/Boolean;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Ljava/lang/Boolean;
    .param p2, "expirationTime"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 424
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 425
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 427
    const-string v2, "onServer"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 428
    const-string v2, "Setting registeredOnServer flag as %b until %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    new-instance v4, Ljava/sql/Timestamp;

    invoke-direct {v4, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v4, v3, v7

    invoke-static {p0, v5, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 436
    :goto_0
    const-string v2, "onServerExpirationTime"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 437
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    return-void

    .line 432
    :cond_0
    const-string v2, "Setting registeredOnServer expiration to %s"

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/sql/Timestamp;

    invoke-direct {v4, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v4, v3, v6

    invoke-static {p0, v5, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 402
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "regId"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "oldRegistrationId":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 404
    .local v0, "appVersion":I
    const/4 v4, 0x2

    const-string v5, "Saving regId on app version %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p0, v4, v5, v6}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 406
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "regId"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    const-string v4, "appVersion"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    return-object v2
.end method

.method static declared-synchronized setRetryBroadcastReceiver(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    const-class v5, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

    if-nez v4, :cond_0

    .line 312
    sget-object v4, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 314
    const/4 v4, 0x6

    const-string v6, "internal error: retry receiver class not set yet"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v6, v7}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 316
    new-instance v4, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-direct {v4}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    sput-object v4, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

    .line 329
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "category":Ljava/lang/String;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 332
    .local v3, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 333
    const/4 v4, 0x2

    const-string v6, "Registering retry receiver"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v6, v7}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    sput-object p0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverContext:Landroid/content/Context;

    .line 335
    sget-object v4, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverContext:Landroid/content/Context;

    sget-object v6, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v0    # "category":Ljava/lang/String;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit v5

    return-void

    .line 320
    :cond_1
    :try_start_1
    sget-object v4, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 321
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gcm/GCMBroadcastReceiver;

    sput-object v4, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x6

    :try_start_2
    const-string v6, "Could not create instance of %s. Using %s directly."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {p0, v4, v6, v7}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 326
    new-instance v4, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-direct {v4}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    sput-object v4, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 311
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized setRetryReceiverClassName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 344
    const-class v1, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    const-string v2, "Setting the name of retry receiver class to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 346
    sput-object p1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit v1

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
