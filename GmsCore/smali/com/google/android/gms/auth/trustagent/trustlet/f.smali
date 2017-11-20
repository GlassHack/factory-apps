.class public Lcom/google/android/gms/auth/trustagent/trustlet/f;
.super Lcom/google/android/gms/auth/trustagent/trustlet/z;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Lcom/android/b/a/d;

.field private final g:Ljava/lang/Object;

.field private h:Landroid/os/Handler;

.field private i:I

.field private j:Landroid/content/ServiceConnection;

.field private final k:Lcom/android/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;-><init>()V

    .line 383
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/g;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/f;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->j:Landroid/content/ServiceConnection;

    .line 407
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/h;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/h;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/f;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->k:Lcom/android/b/a/a;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a:Lcom/android/b/a/d;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->g:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i:I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->h:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/f;Lcom/android/b/a/d;)Lcom/android/b/a/d;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a:Lcom/android/b/a/d;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 77
    :try_start_0
    const-string v3, "com.android.facelock"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 95
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 91
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/b/a;->N:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 92
    goto :goto_0

    :cond_1
    move v0, v2

    .line 95
    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/trustlet/f;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 103
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 106
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v2

    .line 110
    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    const v3, 0x8000

    if-le v2, v3, :cond_1

    move v0, v1

    .line 123
    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 130
    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 148
    invoke-static {p0}, Lcom/google/android/gms/auth/trustagent/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    const-string v1, "auth_trust_agent_pref_trustlet_enabled_FaceUnlockTrustlet"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->h:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i:I

    if-nez v0, :cond_0

    .line 244
    const-string v0, "Coffee - FULTrustlet"

    const-string v2, "Attempt to unbind from Face Unlock when already unbound"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-exit v1

    .line 263
    :goto_0
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 253
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a:Lcom/android/b/a/d;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->k:Lcom/android/b/a/a;

    invoke-interface {v0, v2}, Lcom/android/b/a/d;->b(Lcom/android/b/a/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a:Lcom/android/b/a/d;

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i:I

    .line 263
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    :try_start_3
    const-string v2, "Coffee - FULTrustlet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught exception unregistering callback: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 186
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 191
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 186
    goto :goto_0

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i:I

    if-eqz v0, :cond_2

    const-string v0, "Coffee - FULTrustlet"

    const-string v3, "Attempt to bind to Face Unlock when already bound (or binding)"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_2
    move v0, v1

    .line 191
    goto :goto_1

    .line 190
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.facelock"

    const-string v4, "com.android.facelock.FaceLockService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->j:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->b()V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->c(Z)V

    .line 172
    return-void
.end method

.method protected final d()Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/google/android/gms/auth/b/a;->N:Lcom/google/android/gms/common/a/b;

    return-object v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x3

    return v0
.end method

.method protected final f()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i()V

    .line 201
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 272
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 289
    const-string v1, "Coffee - FULTrustlet"

    const-string v2, "Unhandled message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return v0

    .line 274
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i:I

    if-nez v0, :cond_0

    const-string v0, "Coffee - FULTrustlet"

    const-string v3, "Not starting Face Unlock because no longer bound"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a:Lcom/android/b/a/d;

    monitor-exit v2

    :goto_1
    move v0, v1

    .line 292
    goto :goto_0

    .line 274
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a:Lcom/android/b/a/d;

    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->k:Lcom/android/b/a/a;

    invoke-interface {v0, v3}, Lcom/android/b/a/d;->a(Lcom/android/b/a/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a:Lcom/android/b/a/d;

    invoke-interface {v0}, Lcom/android/b/a/d;->b()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "Coffee - FULTrustlet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caught exception registering Face Unlock callback: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v3, "Coffee - FULTrustlet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caught exception starting Face Unlock: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 275
    :pswitch_1
    const-string v0, "Coffee - FULTrustlet"

    const-string v2, "handleServiceDisconnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->g:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a:Lcom/android/b/a/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i:I

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 278
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i()V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a(Z)V

    goto :goto_1

    .line 283
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->i()V

    goto :goto_1

    .line 286
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a(Z)V

    goto :goto_1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
