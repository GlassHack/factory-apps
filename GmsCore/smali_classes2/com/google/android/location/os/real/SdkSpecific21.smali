.class public Lcom/google/android/location/os/real/SdkSpecific21;
.super Lcom/google/android/location/os/real/SdkSpecific19;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Lcom/google/android/location/activity/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/location/os/real/SdkSpecific19;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/SdkSpecific21;->a:Lcom/google/android/location/activity/z;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/location/os/at;)Lcom/google/android/location/os/aw;
    .locals 3

    .prologue
    .line 153
    sget-object v0, Lcom/google/android/location/d/a;->v:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    new-instance v0, Lcom/google/android/location/os/real/az;

    invoke-direct {v0, p1, p2}, Lcom/google/android/location/os/real/az;-><init>(Landroid/content/Context;Lcom/google/android/location/os/at;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "SdkSpecific21"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    :cond_0
    new-instance v0, Lcom/google/android/location/os/as;

    invoke-direct {v0}, Lcom/google/android/location/os/as;-><init>()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/location/os/real/bd;Lcom/google/android/location/p/j;)V
    .locals 2

    .prologue
    .line 102
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/location/os/real/SdkSpecific21;->e()Z

    .line 105
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SdkSpecific21"

    const-string v1, "Starting wifi scan via legacy WifiManager"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/location/os/real/SdkSpecific19;->a(Landroid/content/Context;Lcom/google/android/location/os/real/bd;Lcom/google/android/location/p/j;)V

    .line 121
    return-void
.end method

.method public final a(Lcom/google/android/location/os/at;J)V
    .locals 6

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/location/os/real/SdkSpecific21;->a:Lcom/google/android/location/activity/z;

    if-eqz v0, :cond_1

    .line 176
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "HWAR"

    const-string v1, "startHardwareActivityRecognitionLog has been called."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sget-object v0, Lcom/google/android/location/d/a;->p:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 180
    new-instance v1, Lcom/google/android/location/activity/z;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/google/android/location/activity/z;-><init>(Lcom/google/android/location/os/at;JZ)V

    iput-object v1, p0, Lcom/google/android/location/os/real/SdkSpecific21;->a:Lcom/google/android/location/activity/z;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/os/real/SdkSpecific21;->a:Lcom/google/android/location/activity/z;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 67
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/location/os/real/SdkSpecific21;->e()Z

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/os/PowerManager;)Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)Lcom/google/android/location/activity/bt;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/google/android/location/activity/ad;

    invoke-direct {v0, p1, p2}, Lcom/google/android/location/activity/ad;-><init>(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)V

    return-object v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method
