.class final Lcom/google/android/gms/update/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/update/SystemUpdateService;

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/update/SystemUpdateService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 593
    iput-object p1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 595
    iput-boolean v0, p0, Lcom/google/android/gms/update/g;->c:Z

    .line 596
    iput-boolean v0, p0, Lcom/google/android/gms/update/g;->d:Z

    .line 1501
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/update/SystemUpdateService;B)V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/gms/update/g;-><init>(Lcom/google/android/gms/update/SystemUpdateService;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1296
    const/4 v1, 0x0

    .line 1300
    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v2}, Lcom/google/android/gms/update/SystemUpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1301
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1303
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    .line 1304
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1305
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1306
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1310
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1316
    :goto_1
    return-object v0

    .line 1304
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/a/a;->d()V

    .line 641
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/a/a;->a()V

    .line 642
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/a/a;->a(J)V

    .line 643
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1184
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->e(Lcom/google/android/gms/update/SystemUpdateService;)V

    .line 1186
    :cond_0
    return-void
.end method

.method private a(JZ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 897
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notify_snooze"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 898
    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    move-wide p1, v0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 904
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->n(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 905
    if-eqz p3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gms/update/SystemUpdateService;->n(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, p1, p2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 906
    const-string v0, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "retry (wakeup: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void

    .line 905
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private a(Z)V
    .locals 14

    .prologue
    const/16 v11, 0x10

    const-wide/16 v12, 0x0

    const v10, 0x7f020170

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1364
    sget-boolean v0, Lcom/google/android/gms/update/SystemUpdateService;->b:Z

    if-eqz v0, :cond_0

    .line 1366
    const-string v0, "SystemUpdateService"

    const-string v1, "skipping notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :goto_0
    return-void

    .line 1369
    :cond_0
    const-string v0, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1370
    if-nez v4, :cond_1

    .line 1371
    const-string v0, "SystemUpdateService"

    const-string v1, "no activity screen to notify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1375
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1376
    if-eqz p1, :cond_9

    const v0, 0x7f100438

    :goto_1
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1381
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_title"

    invoke-static {v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 1384
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1385
    const/16 v7, 0x13

    invoke-static {v7}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v7, 0x6

    if-ne v1, v7, :cond_a

    move v1, v2

    .line 1388
    :goto_2
    if-eqz v1, :cond_3

    .line 1389
    if-eqz p1, :cond_b

    const v0, 0x7f100437

    :goto_3
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1395
    :cond_3
    const-string v7, "SystemUpdateService"

    const-string v8, "showing system update notification"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v7

    .line 1399
    iget-object v8, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v7, v8, v4}, Lcom/google/android/gms/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1402
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1412
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1414
    const v8, 0x673ab7

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1417
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1420
    :cond_5
    invoke-static {v11}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    .line 1421
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const-class v8, Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v0, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1422
    const-string v1, "notify_snooze"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1423
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1425
    const v1, 0x7f0200e1

    const v8, 0x7f100431

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v8, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1429
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notify_repeat"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1430
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1432
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_repeat"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1442
    :cond_6
    :goto_4
    if-eqz p1, :cond_e

    .line 1443
    const v0, 0x7f0200de

    const v1, 0x7f10042f

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1453
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1462
    invoke-static {v11}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1464
    invoke-virtual {v0, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1467
    :cond_8
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v7, v0, v10, v1}, Lcom/google/android/gms/c/a;->a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1376
    :cond_9
    const v0, 0x7f10043b

    goto/16 :goto_1

    :cond_a
    move v1, v3

    .line 1385
    goto/16 :goto_2

    .line 1389
    :cond_b
    const v0, 0x7f10043a

    goto/16 :goto_3

    .line 1434
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notify_snooze"

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_d

    .line 1436
    const/4 v0, -0x2

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_4

    .line 1437
    :cond_d
    cmp-long v0, v0, v12

    if-lez v0, :cond_6

    .line 1438
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_snooze"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    .line 1447
    :cond_e
    const v0, 0x7f0200de

    const v1, 0x7f100430

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_5
.end method

.method private a(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1562
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->f()Lcom/google/android/gms/update/i;

    move-result-object v2

    .line 1563
    if-nez v2, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return v0

    .line 1564
    :cond_1
    iget v3, v2, Lcom/google/android/gms/update/i;->a:I

    iget v4, v2, Lcom/google/android/gms/update/i;->b:I

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 1569
    goto :goto_0

    .line 1572
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1573
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1574
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    .line 1576
    iget v4, v2, Lcom/google/android/gms/update/i;->a:I

    if-gt v4, v3, :cond_3

    iget v4, v2, Lcom/google/android/gms/update/i;->b:I

    if-le v3, v4, :cond_4

    :cond_3
    iget v4, v2, Lcom/google/android/gms/update/i;->a:I

    iget v5, v2, Lcom/google/android/gms/update/i;->b:I

    if-le v4, v5, :cond_0

    iget v4, v2, Lcom/google/android/gms/update/i;->a:I

    if-le v4, v3, :cond_4

    iget v2, v2, Lcom/google/android/gms/update/i;->b:I

    if-gt v3, v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 12

    .prologue
    .line 651
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->b()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 808
    :goto_0
    return v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    const/4 v0, 0x0

    goto :goto_0

    .line 657
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 658
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "provisioned"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 659
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    cmp-long v2, v0, v4

    if-lez v2, :cond_3

    .line 663
    :cond_2
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v1}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/a;->a(Landroid/content/ContentResolver;)I

    move-result v0

    .line 664
    if-nez v0, :cond_5

    const-wide/16 v0, 0x0

    .line 665
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "provisioned"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    move-wide v8, v0

    .line 667
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/update/g;->c:Z

    .line 669
    if-eqz p1, :cond_4

    const-string v0, "boot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_filename"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v1}, Lcom/google/android/gms/update/SystemUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/cache/recovery/last_install"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_7

    const-string v0, "SystemUpdateService"

    const-string v1, "can\'t determine last-installed OTA package name"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_4
    :goto_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/update/g;->b:I

    .line 674
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_url"

    invoke-static {v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 676
    const-string v0, "SystemUpdateService"

    const-string v1, "cancelUpdate (empty URL)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->c(Lcom/google/android/gms/update/SystemUpdateService;Z)V

    .line 678
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->d()V

    .line 679
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->e()V

    .line 680
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    move-wide v0, v4

    .line 664
    goto/16 :goto_1

    .line 667
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 670
    :catch_0
    move-exception v0

    const-string v1, "SystemUpdateService"

    const-string v2, "failed to read last_install"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    const-string v1, "SystemUpdateService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "first boot since "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " install of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_4
    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "success_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_8

    const-string v1, "android.settings.SYSTEM_UPDATE_COMPLETE"

    invoke-direct {p0, v1}, Lcom/google/android/gms/update/g;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/high16 v3, 0x10040000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "message"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending_filename"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3

    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "failure_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 683
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->c(Lcom/google/android/gms/update/SystemUpdateService;Z)V

    .line 685
    if-eqz p1, :cond_c

    const-string v0, "download_now"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 686
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->a()V

    .line 689
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_required_setup"

    invoke-static {v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/update/g;->d:Z

    .line 692
    const-string v0, "SystemUpdateService"

    const-string v1, "update required during setup wizard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "install_time"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v2}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "update_retry_delay_sec"

    const v7, 0x3f480

    invoke-static {v2, v6, v7}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    add-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-gtz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "install_time"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-gez v0, :cond_f

    .line 708
    :cond_e
    const-string v0, "SystemUpdateService"

    const-string v1, "cancelUpdate (willing to retry now)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->d()V

    .line 712
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_urgency"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 714
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "url"

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 716
    const-string v0, "SystemUpdateService"

    const-string v2, "cancelUpdate (update URL has changed)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->d()V

    .line 718
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 719
    const-string v0, "url"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "status"

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->d(Lcom/google/android/gms/update/SystemUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xa

    :goto_6
    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "url_change"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v0, v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "required_setup"

    iget-boolean v7, p0, Lcom/google/android/gms/update/g;->d:Z

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 724
    packed-switch v1, :pswitch_data_0

    .line 737
    :pswitch_0
    const-string v0, "download_approved"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 739
    const/4 v0, 0x2

    .line 742
    :goto_7
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 743
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->a()V

    .line 744
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->e(Lcom/google/android/gms/update/SystemUpdateService;)V

    move v7, v0

    .line 747
    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_provisioning_delay_sec"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 749
    iget-boolean v1, p0, Lcom/google/android/gms/update/g;->d:Z

    if-nez v1, :cond_13

    if-ltz v0, :cond_13

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_10

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v10, v1

    add-long/2addr v10, v8

    cmp-long v1, v4, v10

    if-gez v1, :cond_13

    .line 752
    :cond_10
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-nez v1, :cond_12

    .line 756
    const/16 v1, 0x384

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v4

    .line 765
    :goto_9
    const-string v2, "SystemUpdateService"

    const-string v3, "cancelUpdate (not provisioned)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->d()V

    .line 767
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/update/g;->a(JZ)V

    .line 768
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->e()V

    .line 769
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 719
    :cond_11
    const/4 v0, 0x1

    goto :goto_6

    .line 727
    :pswitch_1
    const-string v0, "download_approved"

    const/4 v6, 0x1

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "install_approved"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 729
    goto :goto_7

    .line 732
    :pswitch_2
    const-string v0, "download_approved"

    const/4 v6, 0x1

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "install_approved"

    const/4 v7, 0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 734
    goto :goto_7

    .line 763
    :cond_12
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v8

    goto :goto_9

    .line 772
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_16

    const/4 v0, 0x4

    if-eq v7, v0, :cond_14

    const/4 v0, 0x3

    if-eq v7, v0, :cond_14

    const/4 v0, 0x6

    if-ne v7, v0, :cond_15

    :cond_14
    const/4 v0, 0x1

    :goto_a
    if-eqz v0, :cond_16

    .line 774
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->k(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/a/a;->a(Lcom/android/a/b;)J

    move-result-wide v0

    .line 775
    cmp-long v0, v4, v0

    if-gez v0, :cond_16

    .line 776
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->e()V

    .line 777
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 772
    :cond_15
    const/4 v0, 0x0

    goto :goto_a

    .line 781
    :cond_16
    const/4 v1, 0x0

    .line 783
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "status"

    const/4 v6, -0x1

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2b

    .line 784
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "download_approved"

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 785
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    const-string v2, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "network: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; metered: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; mobile allowed: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v1, v4, v10

    if-gtz v1, :cond_1a

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v1, v4, v10

    if-lez v1, :cond_1b

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/update/a;->a()I

    move-result v0

    if-eqz v0, :cond_1b

    :cond_17
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/update/a;->cancel(Z)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/a;)Lcom/google/android/gms/update/a;

    :cond_18
    const/4 v0, 0x1

    invoke-direct {p0, v4, v5, v0}, Lcom/google/android/gms/update/g;->a(JZ)V

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_progress"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->e(Lcom/google/android/gms/update/SystemUpdateService;)V

    const/4 v0, 0x0

    .line 806
    :goto_c
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->e()V

    .line 807
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->l(Lcom/google/android/gms/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 808
    if-nez v0, :cond_19

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->m(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/j;

    move-result-object v0

    if-eqz v0, :cond_2c

    :cond_19
    const/4 v0, 0x1

    :goto_d
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 785
    :cond_1a
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->o(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/http/GoogleHttpClient;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    new-instance v2, Lcom/google/android/gms/http/GoogleHttpClient;

    iget-object v4, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "SystemUpdate-"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v5, 0x5d4044

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/1.0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v0, Lcom/google/android/gms/common/security/a;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v4, v5, v6, v0}, Lcom/google/android/gms/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-static {v1, v2}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/SystemUpdateService;Lcom/google/android/gms/http/GoogleHttpClient;)Lcom/google/android/gms/http/GoogleHttpClient;

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_token"

    invoke-static {v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/update/a;

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v5}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "update_download_prefer_data"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v6}, Lcom/google/android/gms/update/SystemUpdateService;->o(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/http/GoogleHttpClient;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/update/a;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/http/GoogleHttpClient;)V

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/a;)Lcom/google/android/gms/update/a;

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/update/a;->a()I

    move-result v0

    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "status is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    invoke-static {v0}, Lcom/google/android/gms/update/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    if-eqz v8, :cond_1d

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1d
    const-string v0, "SystemUpdateService"

    const-string v1, "network down"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/update/SystemUpdateService;->d(Lcom/google/android/gms/update/SystemUpdateService;Z)Z

    :cond_1e
    :goto_e
    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "now status is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    invoke-static {v0}, Lcom/google/android/gms/update/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkDownload unexpected status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/gms/update/g;->b()V

    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_1f
    const-string v0, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "starting download of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->p(Lcom/google/android/gms/update/SystemUpdateService;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/a/a;->d()V

    :cond_20
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/update/a;->l:Z

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    invoke-static {}, Lcom/google/android/gms/c/a;->k()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/c/a;->a(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_progress"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->e(Lcom/google/android/gms/update/SystemUpdateService;)V

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->d(Lcom/google/android/gms/update/SystemUpdateService;Z)Z

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/update/a;->a()I

    move-result v0

    goto/16 :goto_e

    :cond_21
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/update/a;->a()I

    move-result v0

    goto/16 :goto_e

    :pswitch_4
    const/4 v0, 0x1

    goto/16 :goto_c

    :pswitch_5
    const-string v0, "SystemUpdateService"

    const-string v1, "download failed due to space; clearing attempt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/a;)Lcom/google/android/gms/update/a;

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->e(Lcom/google/android/gms/update/SystemUpdateService;)V

    :cond_22
    sget-boolean v0, Lcom/google/android/gms/update/SystemUpdateService;->b:Z

    if-eqz v0, :cond_23

    const-string v0, "SystemUpdateService"

    const-string v1, "skipping notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/update/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_23
    const-string v0, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_24

    const-string v0, "SystemUpdateService"

    const-string v1, "no activity screen to notify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v1}, Lcom/google/android/gms/update/SystemUpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10042d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100439

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020171

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "sys"

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v2

    const v3, 0x7f020171

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/c/a;->a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto/16 :goto_f

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/a/a;->d()V

    invoke-direct {p0}, Lcom/google/android/gms/update/g;->b()V

    const/4 v0, 0x0

    goto/16 :goto_c

    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->b()V

    const/4 v0, 0x0

    goto/16 :goto_c

    :pswitch_8
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    if-nez v1, :cond_26

    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, v0, v7}, Lcom/google/android/gms/update/g;->a(Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_c

    :cond_26
    iget-object v0, v0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 787
    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "update_download_notify_time"

    const-wide/16 v6, 0x0

    invoke-static {v0, v2, v6, v7}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    .line 789
    sub-long v6, v2, v4

    const-wide v8, 0x9a7ec800L

    cmp-long v0, v6, v8

    if-lez v0, :cond_28

    .line 790
    const-string v0, "SystemUpdateService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "download_notify_time too far in future; ignoring ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-wide/16 v2, 0x0

    .line 794
    :cond_28
    cmp-long v0, v4, v2

    if-ltz v0, :cond_2a

    .line 795
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->d(Lcom/google/android/gms/update/SystemUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xa

    :goto_11
    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(I)V

    .line 797
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(Z)V

    .line 798
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v4

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/update/g;->a(JZ)V

    move v0, v1

    goto/16 :goto_c

    .line 795
    :cond_29
    const/4 v0, 0x1

    goto :goto_11

    .line 800
    :cond_2a
    const-string v0, "SystemUpdateService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deferring notification for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v2, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/update/g;->a(JZ)V

    :cond_2b
    move v0, v1

    goto/16 :goto_c

    .line 808
    :cond_2c
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_2d
    move v7, v1

    goto/16 :goto_8

    .line 724
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 785
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 8

    .prologue
    .line 1032
    const-string v0, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processDownloadedFile "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const-string v0, "SystemUpdateService"

    const-string v1, "download completed but no filename available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->b()V

    .line 1037
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/update/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 1038
    const/4 v0, 0x0

    .line 1149
    :goto_0
    return v0

    .line 1041
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "filename"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1042
    const-string v0, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download filename now "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filename"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1047
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->l(Lcom/google/android/gms/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1048
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->m(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1049
    const-string v0, "SystemUpdateService"

    const-string v2, "checkDownload: cancelling verifier"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->m(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/j;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/update/j;->cancel(Z)Z

    .line 1051
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/SystemUpdateService;Lcom/google/android/gms/update/j;)Lcom/google/android/gms/update/j;

    .line 1053
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1058
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1059
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->l(Lcom/google/android/gms/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1060
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/SystemUpdateService;Lcom/google/android/gms/update/j;)Lcom/google/android/gms/update/j;

    .line 1061
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1062
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "verified"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1063
    const-string v0, "SystemUpdateService"

    const-string v1, "file has been verified"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->c()Ljava/lang/String;

    .line 1065
    const/4 v0, 0x6

    if-ne p2, v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->c()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_9

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/update/g;->a(J)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_battery_aware_automatic_timed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->c(Lcom/google/android/gms/update/SystemUpdateService;)I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    const-string v1, "SystemUpdateService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Battery aware automatic timed update. Is battery sufficient? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    if-eqz v0, :cond_a

    .line 1066
    const-string v0, "SystemUpdateService"

    const-string v1, "called install()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/gms/update/g;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "status"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "install_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pending_filename"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v2}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_install_success_message"

    invoke-static {v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "success_message"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v2}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_install_failure_message"

    invoke-static {v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "failure_message"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/google/android/gms/update/g;->e()V

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->e(Lcom/google/android/gms/update/SystemUpdateService;)V

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const-string v2, "SystemUpdateService"

    const-string v3, "calling installPackage()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/google/android/gms/update/h;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/update/h;-><init>(Lcom/google/android/gms/update/g;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/update/h;->start()V

    .line 1067
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1053
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1061
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1065
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "install_approved"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_2

    .line 1069
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->c(Lcom/google/android/gms/update/SystemUpdateService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1070
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(I)V

    .line 1076
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/a/a;->b()V

    .line 1078
    const/4 v0, 0x6

    if-ne p2, v0, :cond_b

    .line 1079
    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/update/g;->a(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1081
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->c()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_f

    .line 1082
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->c()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/update/g;->a(JZ)V

    .line 1117
    :cond_b
    :goto_4
    sget-boolean v0, Lcom/google/android/gms/update/SystemUpdateService;->b:Z

    if-nez v0, :cond_c

    .line 1118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(Z)V

    .line 1132
    :cond_c
    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1071
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->c(Lcom/google/android/gms/update/SystemUpdateService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1072
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(I)V

    goto :goto_3

    .line 1074
    :cond_e
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(I)V

    goto :goto_3

    .line 1088
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->f()Lcom/google/android/gms/update/i;

    move-result-object v0

    if-nez v0, :cond_10

    const-wide v0, 0x7fffffffffffffffL

    .line 1089
    :goto_6
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 1091
    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, v4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/update/g;->a(JZ)V

    goto :goto_4

    .line 1088
    :cond_10
    iget v1, v0, Lcom/google/android/gms/update/i;->a:I

    iget v2, v0, Lcom/google/android/gms/update/i;->b:I

    if-ne v1, v2, :cond_11

    const-wide/16 v0, 0x0

    goto :goto_6

    :cond_11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iget v2, v0, Lcom/google/android/gms/update/i;->b:I

    if-le v1, v2, :cond_12

    iget v2, v0, Lcom/google/android/gms/update/i;->b:I

    add-int/lit16 v2, v2, 0x5a0

    iput v2, v0, Lcom/google/android/gms/update/i;->b:I

    :cond_12
    iget v0, v0, Lcom/google/android/gms/update/i;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_6

    .line 1095
    :cond_13
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->f()Lcom/google/android/gms/update/i;

    move-result-object v0

    if-nez v0, :cond_15

    const-wide v0, 0x7fffffffffffffffL

    :goto_7
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->c()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1097
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 1108
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->f()Lcom/google/android/gms/update/i;

    move-result-object v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    :goto_8
    const/16 v3, 0x41

    if-lt v2, v3, :cond_14

    .line 1109
    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v2}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v6, v7}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1111
    const-wide/32 v6, 0x36ee80

    rem-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 1113
    :cond_14
    add-long/2addr v0, v4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/update/g;->a(JZ)V

    goto/16 :goto_4

    .line 1095
    :cond_15
    iget v1, v0, Lcom/google/android/gms/update/i;->a:I

    iget v2, v0, Lcom/google/android/gms/update/i;->b:I

    if-ne v1, v2, :cond_16

    const-wide/16 v0, 0x0

    goto :goto_7

    :cond_16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iget v2, v0, Lcom/google/android/gms/update/i;->a:I

    if-le v1, v2, :cond_17

    iget v2, v0, Lcom/google/android/gms/update/i;->a:I

    add-int/lit16 v2, v2, 0x5a0

    iput v2, v0, Lcom/google/android/gms/update/i;->a:I

    :cond_17
    iget v0, v0, Lcom/google/android/gms/update/i;->a:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_7

    .line 1108
    :cond_18
    iget v3, v2, Lcom/google/android/gms/update/i;->a:I

    iget v6, v2, Lcom/google/android/gms/update/i;->b:I

    if-ne v3, v6, :cond_19

    const/16 v2, 0x5a0

    goto :goto_8

    :cond_19
    iget v3, v2, Lcom/google/android/gms/update/i;->b:I

    iget v6, v2, Lcom/google/android/gms/update/i;->a:I

    if-le v3, v6, :cond_1a

    iget v3, v2, Lcom/google/android/gms/update/i;->b:I

    iget v2, v2, Lcom/google/android/gms/update/i;->a:I

    sub-int v2, v3, v2

    goto :goto_8

    :cond_1a
    iget v3, v2, Lcom/google/android/gms/update/i;->a:I

    rsub-int v3, v3, 0x5a0

    iget v2, v2, Lcom/google/android/gms/update/i;->b:I

    add-int/2addr v2, v3

    goto :goto_8

    .line 1122
    :cond_1b
    const-string v0, "SystemUpdateService"

    const-string v1, "verification of system update package failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v2}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_verify_redownload_delay_sec"

    const v4, 0xa8c0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1127
    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/a/a;->a(J)V

    .line 1128
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->b()V

    .line 1129
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/update/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 1130
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(I)V

    goto/16 :goto_5

    .line 1135
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->l(Lcom/google/android/gms/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1136
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/update/g;->c()Ljava/lang/String;

    .line 1137
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->m(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/j;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1139
    const-string v0, "SystemUpdateService"

    const-string v2, "verification already in progress"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    .line 1150
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1143
    :cond_1d
    :try_start_3
    const-string v0, "SystemUpdateService"

    const-string v2, "starting package verification"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(I)V

    .line 1145
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    new-instance v2, Lcom/google/android/gms/update/j;

    iget-object v3, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/update/j;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/content/SharedPreferences;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/SystemUpdateService;Lcom/google/android/gms/update/j;)Lcom/google/android/gms/update/j;

    .line 1147
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gms/update/SystemUpdateService;->m(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/j;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    invoke-static {}, Lcom/google/android/gms/c/a;->k()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/c/a;->a(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1149
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 865
    invoke-direct {p0, v5}, Lcom/google/android/gms/update/g;->a(I)V

    .line 866
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/a/a;->c()V

    .line 867
    const-string v0, "SystemUpdateService"

    const-string v1, "download failed; clearing attempt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 869
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/update/a;->j:J

    .line 870
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 871
    const-string v2, "SystemUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "server-suggested retry time is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/a/a;->a(J)V

    .line 875
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/a;)Lcom/google/android/gms/update/a;

    .line 876
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "status"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 878
    const-string v1, "status"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 879
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->e(Lcom/google/android/gms/update/SystemUpdateService;)V

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->j(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->k(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/android/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/a/a;->a(Lcom/android/a/b;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/update/g;->a(JZ)V

    .line 882
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1189
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "filename"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    const-string v1, "SystemUpdateService"

    const-string v2, "OTA package filename empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :goto_0
    return-object v0

    .line 1194
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1196
    const-string v1, "SystemUpdateService"

    const-string v2, "OTA package doesn\'t exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1199
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1200
    const-string v0, "SystemUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OTA package size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1201
    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1250
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1251
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->n(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1253
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->l(Lcom/google/android/gms/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->m(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1255
    const-string v0, "SystemUpdateService"

    const-string v2, "cancelUpdate: cancelling verifier"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->m(Lcom/google/android/gms/update/SystemUpdateService;)Lcom/google/android/gms/update/j;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/update/j;->cancel(Z)Z

    .line 1257
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/SystemUpdateService;Lcom/google/android/gms/update/j;)Lcom/google/android/gms/update/j;

    .line 1259
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1262
    const-string v0, "SystemUpdateService"

    const-string v1, "cancelling current attempt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/update/a;->cancel(Z)Z

    .line 1264
    invoke-static {v4}, Lcom/google/android/gms/update/SystemUpdateService;->a(Lcom/google/android/gms/update/a;)Lcom/google/android/gms/update/a;

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/update/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 1268
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_approved"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url_change"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_mobile"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filename"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "started_download"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending_filename"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "success_message"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failure_message"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verify_progress"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_repeat"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notify_snooze"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1288
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->a(Landroid/content/Context;)V

    .line 1289
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->e(Lcom/google/android/gms/update/SystemUpdateService;)V

    .line 1290
    return-void

    .line 1259
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1473
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1475
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "download_approved"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1476
    or-int/lit8 v0, v0, 0x20

    .line 1479
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "install_approved"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1480
    or-int/lit8 v0, v0, 0x40

    .line 1484
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "verified"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1485
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "verified"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 1488
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/update/g;->c:Z

    if-eqz v1, :cond_3

    .line 1489
    or-int/lit16 v0, v0, 0x200

    .line 1493
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "download_mobile"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1494
    or-int/lit16 v0, v0, 0x400

    .line 1496
    :cond_4
    const v1, 0x31129

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    iget v0, p0, Lcom/google/android/gms/update/g;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "url"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1499
    return-void

    :cond_5
    move v1, v3

    .line 1485
    goto :goto_0
.end method

.method private f()Lcom/google/android/gms/update/i;
    .locals 9

    .prologue
    const/16 v8, 0x3b

    const/16 v7, 0x17

    const/4 v0, 0x0

    .line 1507
    iget-object v1, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v1}, Lcom/google/android/gms/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_maintenance_window"

    invoke-static {v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1508
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return-object v0

    .line 1515
    :cond_1
    sget-object v2, Lcom/google/android/gms/update/SystemUpdateService;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1516
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1517
    const-string v2, "SystemUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "malformed maintenance window \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1522
    :cond_2
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1523
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1524
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1525
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1531
    if-gt v3, v7, :cond_3

    if-gt v4, v8, :cond_3

    if-gt v5, v7, :cond_3

    if-le v2, v8, :cond_4

    .line 1532
    :cond_3
    const-string v2, "SystemUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "malformed maintenance window \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v0

    .line 1528
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1535
    :cond_4
    new-instance v0, Lcom/google/android/gms/update/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/update/i;-><init>(Lcom/google/android/gms/update/g;B)V

    .line 1536
    mul-int/lit8 v1, v3, 0x3c

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/update/i;->a:I

    .line 1537
    mul-int/lit8 v1, v5, 0x3c

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/update/i;->b:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    check-cast p1, [Landroid/content/Intent;

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/update/g;->a(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 593
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->f(Lcom/google/android/gms/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->g(Lcom/google/android/gms/update/SystemUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gms/update/SystemUpdateService;->h(Lcom/google/android/gms/update/SystemUpdateService;)Z

    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;Z)Z

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/update/g;

    iget-object v3, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v2, v3}, Lcom/google/android/gms/update/g;-><init>(Lcom/google/android/gms/update/SystemUpdateService;)V

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    invoke-static {}, Lcom/google/android/gms/c/a;->k()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Intent;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v6}, Lcom/google/android/gms/update/SystemUpdateService;->i(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/c/a;->a(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gms/update/SystemUpdateService;->stopSelf()V

    :cond_3
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->a()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->a()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->a()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
