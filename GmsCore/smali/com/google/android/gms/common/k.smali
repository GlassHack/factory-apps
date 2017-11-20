.class public final Lcom/google/android/gms/common/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x5d4044

.field public static b:Z

.field public static c:Z

.field private static d:I

.field private static final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    sput-boolean v0, Lcom/google/android/gms/common/k;->b:Z

    .line 140
    sput-boolean v0, Lcom/google/android/gms/common/k;->c:Z

    .line 146
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/k;->d:I

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/k;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x9

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 230
    :try_start_0
    const-string v0, "com.google.android.gms"

    const/16 v6, 0x40

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 240
    iget v0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Lcom/google/android/gms/common/util/h;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-static {}, Lcom/google/android/gms/common/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 248
    :goto_0
    new-array v7, v4, [[B

    sget-object v8, Lcom/google/android/gms/common/d;->a:[[B

    aget-object v8, v8, v0

    aput-object v8, v7, v1

    sget-object v8, Lcom/google/android/gms/common/d;->f:[[B

    aget-object v0, v8, v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageInfo;[[B)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 252
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play Services signature invalid on Glass."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 333
    :goto_1
    return v2

    .line 233
    :catch_0
    move-exception v0

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move v0, v2

    .line 246
    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 259
    const/16 v7, 0x40

    :try_start_1
    invoke-virtual {v5, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 261
    invoke-static {v5, v7}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 262
    const-string v1, "GooglePlayServicesUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Calling package "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " signature invalid on Glass."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 264
    goto :goto_1

    .line 267
    :catch_1
    move-exception v1

    const-string v1, "GooglePlayServicesUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Could not get info for calling package: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 268
    goto :goto_1

    .line 270
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/common/util/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    sget-object v0, Lcom/google/android/gms/common/d;->a:[[B

    invoke-static {v6, v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageInfo;[[B)[B

    move-result-object v0

    if-nez v0, :cond_5

    .line 275
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 276
    goto :goto_1

    .line 284
    :cond_3
    :try_start_2
    const-string v0, "com.android.vending"

    const/16 v7, 0x40

    invoke-virtual {v5, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 294
    sget-object v7, Lcom/google/android/gms/common/d;->a:[[B

    invoke-static {v0, v7}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageInfo;[[B)[B

    move-result-object v0

    .line 296
    if-nez v0, :cond_4

    .line 297
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play Store signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 298
    goto :goto_1

    .line 287
    :catch_2
    move-exception v0

    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play Store is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 290
    goto/16 :goto_1

    .line 302
    :cond_4
    new-array v7, v2, [[B

    aput-object v0, v7, v1

    invoke-static {v6, v7}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageInfo;[[B)[B

    move-result-object v0

    if-nez v0, :cond_5

    .line 303
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 304
    goto/16 :goto_1

    .line 309
    :cond_5
    const v0, 0x5d4044

    invoke-static {v0}, Lcom/google/android/gms/common/util/h;->a(I)I

    move-result v0

    .line 310
    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Lcom/google/android/gms/common/util/h;->a(I)I

    move-result v3

    .line 311
    if-ge v3, v0, :cond_6

    .line 312
    const-string v0, "GooglePlayServicesUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google Play services out of date.  Requires 6111300 but found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 315
    goto/16 :goto_1

    .line 321
    :cond_6
    :try_start_3
    const-string v0, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 329
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_7

    .line 330
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 322
    :catch_3
    move-exception v0

    .line 325
    const-string v1, "GooglePlayServicesUtil"

    const-string v3, "Google Play services missing when getting application info."

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    move v2, v1

    .line 333
    goto/16 :goto_1
.end method

.method public static a(I)Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/google/android/gms/common/internal/s;->a()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 627
    sparse-switch p1, :sswitch_data_0

    .line 661
    sget v1, Lcom/google/android/gms/d;->t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    .line 630
    :sswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    sget v1, Lcom/google/android/gms/d;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_0
    sget v1, Lcom/google/android/gms/d;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 640
    :sswitch_1
    sget v1, Lcom/google/android/gms/d;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 643
    :sswitch_2
    sget v1, Lcom/google/android/gms/d;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 646
    :sswitch_3
    sget v1, Lcom/google/android/gms/d;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :sswitch_4
    sget v1, Lcom/google/android/gms/d;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 653
    :sswitch_5
    sget v1, Lcom/google/android/gms/d;->o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 657
    :sswitch_6
    sget v1, Lcom/google/android/gms/d;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 627
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0x9 -> :sswitch_4
        0x2a -> :sswitch_3
    .end sparse-switch
.end method

.method public static a(ILandroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 981
    invoke-static {p1}, Lcom/google/android/gms/common/util/h;->b(Landroid/content/Context;)Z

    move-result v3

    .line 982
    if-eqz v3, :cond_0

    if-ne p0, v8, :cond_0

    .line 983
    const/16 p0, 0x2a

    .line 986
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 988
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sparse-switch p0, :sswitch_data_0

    sget v1, Lcom/google/android/gms/d;->t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    :goto_0
    sget v1, Lcom/google/android/gms/d;->g:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 994
    invoke-static {p0}, Lcom/google/android/gms/common/k;->a(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v2, v1

    .line 996
    :goto_1
    if-eqz v3, :cond_2

    .line 997
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 998
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/google/android/gms/c;->b:I

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/gms/c;->a:I

    sget v3, Lcom/google/android/gms/d;->z:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move-object v1, v0

    .line 1022
    :goto_2
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1024
    const v2, 0x9b6d

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1025
    return-void

    .line 988
    :sswitch_0
    sget v1, Lcom/google/android/gms/d;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget v1, Lcom/google/android/gms/d;->r:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2
    sget v1, Lcom/google/android/gms/d;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_3
    sget v1, Lcom/google/android/gms/d;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_4
    sget v1, Lcom/google/android/gms/d;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_5
    sget v1, Lcom/google/android/gms/d;->o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_6
    sget v1, Lcom/google/android/gms/d;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 994
    :cond_1
    const/high16 v2, 0x10000000

    invoke-static {p1, v6, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    .line 1009
    :cond_2
    sget v1, Lcom/google/android/gms/d;->s:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1012
    new-instance v1, Landroid/app/Notification;

    const v4, 0x108008a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v4, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1017
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1019
    invoke-virtual {v1, p1, v0, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 988
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0x9 -> :sswitch_4
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 416
    invoke-static {p0, p1}, Lcom/google/android/gms/common/k;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature check failed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 566
    sget-boolean v0, Lcom/google/android/gms/common/k;->b:Z

    if-eqz v0, :cond_0

    .line 567
    sget-boolean v0, Lcom/google/android/gms/common/k;->c:Z

    .line 569
    :goto_0
    return v0

    :cond_0
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(ILandroid/app/Activity;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1047
    const/4 v0, -0x1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/google/android/gms/common/k;->a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result v0

    return v0
.end method

.method public static a(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 933
    invoke-static {p1}, Lcom/google/android/gms/common/util/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2a

    :cond_0
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v5, 0x1010309

    invoke-virtual {v1, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Theme.Dialog.Alert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-static {p1, p0}, Lcom/google/android/gms/common/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_2

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/common/k;->a(I)Landroid/content/Intent;

    move-result-object v5

    if-nez p2, :cond_4

    new-instance v1, Lcom/google/android/gms/common/internal/d;

    invoke-direct {v1, p1, v5, p3}, Lcom/google/android/gms/common/internal/d;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    :goto_1
    invoke-static {p1, p0}, Lcom/google/android/gms/common/k;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    sparse-switch p0, :sswitch_data_0

    const-string v1, "GooglePlayServicesUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected error code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 935
    :goto_2
    if-nez v0, :cond_5

    move v0, v2

    .line 965
    :goto_3
    return v0

    .line 933
    :cond_4
    new-instance v1, Lcom/google/android/gms/common/internal/d;

    invoke-direct {v1, p2, v5, p3}, Lcom/google/android/gms/common/internal/d;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_1

    :sswitch_0
    move-object v0, v4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_2
    sget v1, Lcom/google/android/gms/d;->k:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_3
    sget v1, Lcom/google/android/gms/d;->f:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_4
    sget v1, Lcom/google/android/gms/d;->y:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_5
    sget v1, Lcom/google/android/gms/d;->c:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_6
    const-string v1, "GooglePlayServicesUtil"

    const-string v4, "Google Play services is invalid. Cannot recover."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/google/android/gms/d;->v:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_7
    const-string v1, "GooglePlayServicesUtil"

    const-string v4, "Network error occurred. Please retry request later."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/google/android/gms/d;->p:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_8
    const-string v1, "GooglePlayServicesUtil"

    const-string v4, "Internal error occurred. Please see logs for detailed information"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_9
    const-string v1, "GooglePlayServicesUtil"

    const-string v4, "Developer error occurred. Please see logs for detailed information"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    :sswitch_a
    const-string v1, "GooglePlayServicesUtil"

    const-string v4, "An invalid account was specified when connecting. Please provide a valid account."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/google/android/gms/d;->m:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_b
    const-string v1, "GooglePlayServicesUtil"

    const-string v4, "The application is not licensed to the user."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 941
    :cond_5
    :try_start_0
    instance-of v2, p1, Landroid/support/v4/app/j;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :goto_4
    if-eqz v2, :cond_6

    .line 947
    check-cast p1, Landroid/support/v4/app/j;

    invoke-virtual {p1}, Landroid/support/v4/app/j;->c()Landroid/support/v4/app/o;

    move-result-object v1

    .line 949
    invoke-static {v0, p4}, Lcom/google/android/gms/common/l;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/l;

    move-result-object v0

    .line 951
    const-string v2, "GooglePlayServicesErrorDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/l;->a(Landroid/support/v4/app/o;Ljava/lang/String;)V

    :goto_5
    move v0, v3

    .line 965
    goto/16 :goto_3

    .line 955
    :cond_6
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 956
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 957
    invoke-static {v0, p4}, Lcom/google/android/gms/common/c;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/c;

    move-result-object v0

    .line 959
    const-string v2, "GooglePlayServicesErrorDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_5

    .line 962
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This Activity does not support Fragments."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :catch_0
    move-exception v1

    goto :goto_4

    :cond_8
    move-object v0, v4

    goto/16 :goto_0

    .line 933
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_a
        0x6 -> :sswitch_1
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_6
        0xa -> :sswitch_9
        0xb -> :sswitch_b
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method private static a(Landroid/content/pm/PackageManager;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 578
    sget-object v2, Lcom/google/android/gms/common/k;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 579
    :try_start_0
    sget v3, Lcom/google/android/gms/common/k;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 581
    :try_start_1
    const-string v3, "com.google.android.gms"

    const/16 v4, 0x40

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 583
    const/4 v4, 0x1

    new-array v4, v4, [[B

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/gms/common/d;->s:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageInfo;[[B)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 586
    const/4 v3, 0x1

    sput v3, Lcom/google/android/gms/common/k;->d:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    sget v2, Lcom/google/android/gms/common/k;->d:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 588
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    sput v3, Lcom/google/android/gms/common/k;->d:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :try_start_4
    sput v3, Lcom/google/android/gms/common/k;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move v0, v1

    .line 595
    goto :goto_1
.end method

.method public static a(Landroid/content/pm/PackageManager;I)Z
    .locals 2

    .prologue
    .line 397
    if-nez p0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unknown error: invalid Package Manager"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 402
    array-length v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/google/android/gms/common/k;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Uid is not Google Signed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 449
    if-nez p1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/k;->a()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 454
    invoke-static {p1, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageInfo;Z)[B

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v0

    .line 453
    goto :goto_1

    .line 456
    :cond_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageInfo;Z)[B

    move-result-object v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 457
    :cond_5
    if-nez v0, :cond_0

    .line 459
    invoke-static {p1, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageInfo;Z)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 461
    const-string v1, "GooglePlayServicesUtil"

    const-string v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1103
    if-nez p0, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return v2

    .line 1107
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-le v0, v4, :cond_4

    move v0, v1

    .line 1109
    :goto_1
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/16 v3, 0xd

    invoke-static {v3}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    if-gt v3, v4, :cond_5

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1107
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1109
    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private static a(Landroid/content/pm/PackageInfo;Z)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 469
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 470
    const-string v0, "GooglePlayServicesUtil"

    const-string v2, "Package has more than one signature."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 498
    :goto_0
    return-object v0

    .line 473
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 476
    if-eqz p1, :cond_1

    .line 477
    invoke-static {}, Lcom/google/android/gms/common/d;->a()Ljava/util/Set;

    move-result-object v0

    .line 490
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    .line 491
    goto :goto_0

    .line 479
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/d;->b()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 494
    :cond_2
    const-string v0, "GooglePlayServicesUtil"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    const-string v0, "GooglePlayServicesUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Signature not valid.  Found: \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    .line 498
    goto :goto_0
.end method

.method private static varargs a(Landroid/content/pm/PackageInfo;[[B)[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 503
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "Package has more than one signature."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 521
    :goto_0
    return-object v0

    .line 506
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    move v0, v1

    .line 510
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 511
    aget-object v3, p1, v0

    .line 512
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v3

    .line 513
    goto :goto_0

    .line 510
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 517
    :cond_2
    const-string v0, "GooglePlayServicesUtil"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    const-string v0, "GooglePlayServicesUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Signature not valid.  Found: \n"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v2

    .line 521
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 677
    sparse-switch p1, :sswitch_data_0

    .line 689
    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    :goto_0
    return-object v0

    .line 679
    :sswitch_0
    sget v1, Lcom/google/android/gms/d;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 682
    :sswitch_1
    sget v1, Lcom/google/android/gms/d;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 686
    :sswitch_2
    sget v1, Lcom/google/android/gms/d;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 677
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 343
    invoke-static {p0}, Lcom/google/android/gms/common/k;->a(Landroid/content/Context;)I

    move-result v0

    .line 344
    if-eqz v0, :cond_1

    .line 346
    invoke-static {v0}, Lcom/google/android/gms/common/k;->a(I)Landroid/content/Intent;

    move-result-object v1

    .line 348
    const-string v2, "GooglePlayServicesUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GooglePlayServices not available due to error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-nez v1, :cond_0

    .line 350
    new-instance v1, Lcom/google/android/gms/common/i;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/i;-><init>(I)V

    throw v1

    .line 352
    :cond_0
    new-instance v2, Lcom/google/android/gms/common/j;

    const-string v3, "Google Play Services not available"

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/j;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v2

    .line 356
    :cond_1
    return-void
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 1061
    packed-switch p0, :pswitch_data_0

    .line 1069
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1067
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1061
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 430
    const/16 v0, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    invoke-static {p0, v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    :goto_0
    return v0

    .line 433
    :catch_0
    move-exception v0

    const-string v0, "GooglePlayServicesUtil"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "GooglePlayServicesUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package manager can\'t find package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaulting to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 1156
    :try_start_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1159
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1169
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 1170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1172
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1175
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1179
    :goto_0
    if-eqz v1, :cond_0

    .line 1180
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1183
    :cond_0
    return-object v0

    .line 1177
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method
