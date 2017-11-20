.class public Lcom/google/android/gms/gcm/ServiceAutoStarter;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/google/android/gms/gcm/f;->d()I

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "com.google.android.gms.GMS_UPDATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gtalkservice.IGTalkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_1
    const-class v0, Lcom/google/android/gms/gcm/GcmService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    const-string v0, "GCM"

    const-string v1, "Failed to kick GTalkService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/google/android/gms/gcm/ServiceAutoStarter;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    return-void
.end method
