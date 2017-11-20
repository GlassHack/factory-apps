.class final Lcom/google/android/gms/analytics/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/b;


# instance fields
.field a:Landroid/content/ServiceConnection;

.field b:Lcom/google/android/gms/analytics/e;

.field c:Lcom/google/android/gms/analytics/f;

.field d:Landroid/content/Context;

.field e:Lcom/google/android/gms/analytics/internal/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/e;Lcom/google/android/gms/analytics/f;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/gms/analytics/c;->d:Landroid/content/Context;

    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/e;

    .line 63
    if-nez p3, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectionFailedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/analytics/c;->c:Lcom/google/android/gms/analytics/f;

    .line 67
    return-void
.end method

.method private d()Lcom/google/android/gms/analytics/internal/n;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Lcom/google/android/gms/analytics/internal/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Lcom/google/android/gms/analytics/internal/n;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->d()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/n;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clear hits failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/c;->d()Lcom/google/android/gms/analytics/internal/n;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/n;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendHit failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->a:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 81
    const-string v0, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->a(Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v1, Lcom/google/android/gms/analytics/d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/d;-><init>(Lcom/google/android/gms/analytics/c;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/c;->a:Landroid/content/ServiceConnection;

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->a:Landroid/content/ServiceConnection;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect: bindService returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 88
    if-nez v1, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->a:Landroid/content/ServiceConnection;

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->c:Lcom/google/android/gms/analytics/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/f;->a(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iput-object v2, p0, Lcom/google/android/gms/analytics/c;->e:Lcom/google/android/gms/analytics/internal/n;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/analytics/c;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/analytics/c;->a:Landroid/content/ServiceConnection;

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->b:Lcom/google/android/gms/analytics/e;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/e;->b()V

    .line 125
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    goto :goto_0
.end method
