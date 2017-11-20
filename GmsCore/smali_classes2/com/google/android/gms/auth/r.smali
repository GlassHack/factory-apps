.class public final Lcom/google/android/gms/auth/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Landroid/content/ComponentName;

.field private static final d:Landroid/content/ComponentName;

.field private static final e:Landroid/content/Intent;

.field private static final f:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "callerUid"

    sput-object v0, Lcom/google/android/gms/auth/r;->a:Ljava/lang/String;

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "androidPackageName"

    sput-object v0, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    .line 297
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.auth.GetToken"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/r;->c:Landroid/content/ComponentName;

    .line 299
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.recovery.RecoveryService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/r;->d:Landroid/content/ComponentName;

    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/r;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/r;->e:Landroid/content/Intent;

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/r;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/r;->f:Landroid/content/Intent;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1014
    const-string v0, "spatula"

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 397
    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    .line 398
    invoke-static {v4}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;)V

    .line 399
    if-nez p3, :cond_1

    .line 400
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 407
    const-string v5, "clientPackageName"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v5, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 411
    sget-object v5, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    new-instance v5, Lcom/google/android/gms/common/a;

    invoke-direct {v5}, Lcom/google/android/gms/common/a;-><init>()V

    .line 415
    sget-object v3, Lcom/google/android/gms/auth/r;->e:Landroid/content/Intent;

    invoke-virtual {v4, v3, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 418
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/gms/common/a;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/c/b;->a(Landroid/os/IBinder;)Lcom/google/android/c/a;

    move-result-object v3

    .line 422
    invoke-interface {v3, p1, p2, v0}, Lcom/google/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 425
    const-string v3, "authtoken"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 453
    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v3

    .line 402
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 431
    :cond_2
    :try_start_1
    const-string v3, "Error"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 432
    const-string v3, "userRecoveryIntent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 435
    const-string v3, "BadAuthentication"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "CaptchaRequired"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "DeviceManagementRequiredOrSyncDisabled"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "NeedPermission"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "NeedsBrowser"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "UserCancel"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "AppDownloadRequired"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->r:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->s:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->t:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->u:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->v:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->w:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    .line 436
    new-instance v1, Lcom/google/android/gms/auth/af;

    invoke-direct {v1, v6, v0}, Lcom/google/android/gms/auth/af;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    :try_start_2
    const-string v1, "GoogleAuthUtil"

    const-string v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    new-instance v0, Ljava/io/IOException;

    const-string v1, "remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    :catchall_0
    move-exception v0

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_4
    move v3, v1

    .line 435
    goto :goto_1

    .line 437
    :cond_5
    :try_start_3
    const-string v0, "NetworkError"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ServiceUnavailable"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Timeout"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    :goto_2
    if-eqz v0, :cond_8

    .line 438
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 449
    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Lcom/google/android/gms/auth/q;

    const-string v1, "Interrupted"

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    move v0, v1

    .line 437
    goto :goto_2

    .line 440
    :cond_8
    :try_start_5
    new-instance v0, Lcom/google/android/gms/auth/q;

    invoke-direct {v0, v6}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not bind to service with the given context."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1168
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/k;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/i; {:try_start_0 .. :try_end_0} :catch_1

    .line 1174
    return-void

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    new-instance v1, Lcom/google/android/gms/auth/t;

    invoke-virtual {v0}, Lcom/google/android/gms/common/j;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/j;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/j;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/auth/t;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v1

    .line 1172
    :catch_1
    move-exception v0

    .line 1173
    new-instance v1, Lcom/google/android/gms/auth/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 678
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method private static a(Landroid/content/Context;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1150
    if-ne p1, v0, :cond_0

    .line 1151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1153
    :try_start_0
    const-string v2, "com.google.android.gms"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1163
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    if-nez p3, :cond_0

    .line 513
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 515
    :cond_0
    const-string v0, "handle_notification"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/r;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 693
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 694
    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    .line 695
    invoke-static {v1}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;)V

    .line 697
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 698
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 700
    const-string v3, "clientPackageName"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget-object v3, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 704
    sget-object v3, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_0
    new-instance v2, Lcom/google/android/gms/common/a;

    invoke-direct {v2}, Lcom/google/android/gms/common/a;-><init>()V

    .line 708
    sget-object v3, Lcom/google/android/gms/auth/r;->e:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 711
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/a;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/c/b;->a(Landroid/os/IBinder;)Lcom/google/android/c/a;

    move-result-object v3

    .line 715
    invoke-interface {v3, p1, v0}, Lcom/google/android/c/a;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 716
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->T:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 717
    const-string v4, "booleanResult"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    new-instance v0, Lcom/google/android/gms/auth/q;

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    :try_start_1
    const-string v3, "GoogleAuthUtil"

    const-string v4, "GMS remote exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    new-instance v0, Ljava/io/IOException;

    const-string v3, "remote exception"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 732
    return-void

    .line 727
    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/google/android/gms/auth/q;

    const-string v3, "Interrupted"

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/q;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not bind to service with the given context."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1116
    if-nez p3, :cond_0

    .line 1117
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1120
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/t; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/af; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 1121
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/t;->a()I

    move-result v0

    .line 1123
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1126
    new-instance v0, Lcom/google/android/gms/auth/s;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/s;-><init>(Landroid/content/Context;)V

    .line 1128
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1134
    :goto_0
    new-instance v0, Lcom/google/android/gms/auth/ag;

    const-string v1, "User intervention required. Notification has been pushed."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/ag;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_1
    invoke-static {v0, p0}, Lcom/google/android/gms/common/k;->a(ILandroid/content/Context;)V

    goto :goto_0

    .line 1139
    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/auth/ag;

    const-string v1, "User intervention required. Notification has been pushed."

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/ag;-><init>(Ljava/lang/String;)V

    throw v0
.end method
