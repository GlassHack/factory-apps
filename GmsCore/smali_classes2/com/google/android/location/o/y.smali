.class public final Lcom/google/android/location/o/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field a:Z

.field b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/PowerManager;

.field private final e:Lcom/google/android/location/o/aa;

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/content/IntentFilter;

.field private final h:Landroid/content/BroadcastReceiver;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/o/aa;Landroid/os/Looper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/location/o/z;

    invoke-direct {v0, p0}, Lcom/google/android/location/o/z;-><init>(Lcom/google/android/location/o/y;)V

    iput-object v0, p0, Lcom/google/android/location/o/y;->h:Landroid/content/BroadcastReceiver;

    .line 53
    iput-boolean v1, p0, Lcom/google/android/location/o/y;->i:Z

    .line 54
    iput-boolean v1, p0, Lcom/google/android/location/o/y;->a:Z

    .line 55
    iput-boolean v1, p0, Lcom/google/android/location/o/y;->b:Z

    .line 65
    iput-object p1, p0, Lcom/google/android/location/o/y;->c:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/google/android/location/o/y;->e:Lcom/google/android/location/o/aa;

    .line 67
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/location/o/y;->d:Landroid/os/PowerManager;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/o/y;->f:Landroid/os/Handler;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/o/y;->g:Landroid/content/IntentFilter;

    .line 70
    iget-object v0, p0, Lcom/google/android/location/o/y;->g:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/location/o/y;->g:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/o/y;->i:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/location/o/y;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/o/y;->h:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/location/o/y;->g:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/o/y;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/o/y;->i:Z

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/o/y;->d:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/o/y;->b:Z

    .line 84
    invoke-virtual {p0}, Lcom/google/android/location/o/y;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/o/y;->a:Z

    .line 85
    invoke-virtual {p0}, Lcom/google/android/location/o/y;->c()V

    .line 86
    return-void
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/android/location/o/y;->b:Z

    if-eq v0, p1, :cond_0

    .line 111
    iput-boolean p1, p0, Lcom/google/android/location/o/y;->b:Z

    .line 112
    iget-boolean v0, p0, Lcom/google/android/location/o/y;->a:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/google/android/location/o/y;->c()V

    .line 116
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/o/y;->i:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/location/o/y;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/o/y;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/o/y;->i:Z

    .line 96
    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/android/location/o/y;->e:Lcom/google/android/location/o/aa;

    iget-boolean v0, p0, Lcom/google/android/location/o/y;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/o/y;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/location/o/aa;->b(Z)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/o/y;->d:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    goto :goto_0
.end method
