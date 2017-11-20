.class public final Lcom/google/android/location/fused/a/e;
.super Lcom/google/android/location/fused/a/h;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/fused/ar;

.field private final b:Landroid/location/LocationListener;

.field private final c:Landroid/location/GpsStatus$Listener;

.field private final d:Lcom/google/android/location/fused/ai;

.field private final e:Lcom/google/android/location/fused/ac;

.field private final l:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/ar;Landroid/location/LocationListener;Landroid/location/GpsStatus$Listener;Lcom/google/android/location/fused/ai;Lcom/google/android/location/fused/ac;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/location/fused/a/h;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/location/fused/a/e;->a:Lcom/google/android/location/fused/ar;

    .line 44
    iput-object p2, p0, Lcom/google/android/location/fused/a/e;->b:Landroid/location/LocationListener;

    .line 45
    iput-object p3, p0, Lcom/google/android/location/fused/a/e;->c:Landroid/location/GpsStatus$Listener;

    .line 46
    iput-object p4, p0, Lcom/google/android/location/fused/a/e;->d:Lcom/google/android/location/fused/ai;

    .line 47
    iput-object p5, p0, Lcom/google/android/location/fused/a/e;->e:Lcom/google/android/location/fused/ac;

    .line 48
    iput-object p6, p0, Lcom/google/android/location/fused/a/e;->l:Landroid/os/Looper;

    .line 49
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 53
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->a:Lcom/google/android/location/fused/ar;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ar;->a()Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/os/real/bf;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->d:Lcom/google/android/location/fused/ai;

    iget-object v1, v0, Lcom/google/android/location/fused/ai;->a:Landroid/location/LocationManager;

    iget-object v0, v0, Lcom/google/android/location/fused/ai;->h:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 57
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->a:Lcom/google/android/location/fused/ar;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ar;->a()Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/a/e;->c:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 59
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->e:Lcom/google/android/location/fused/ac;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(J)V

    .line 60
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->a:Lcom/google/android/location/fused/ar;

    const-string v1, "gps"

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    iget-object v4, p0, Lcom/google/android/location/fused/a/e;->b:Landroid/location/LocationListener;

    iget-object v5, p0, Lcom/google/android/location/fused/a/e;->l:Landroid/os/Looper;

    iget-object v6, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/location/fused/ar;->a(Ljava/lang/String;JLandroid/location/LocationListener;Landroid/os/Looper;Ljava/util/Collection;Z)V

    .line 68
    const-string v0, "GCoreFlp"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "Gps enabled with interval %s[ms]"

    new-array v1, v7, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v0, "GCoreFlp"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "Gps not enabled because no gps device exists"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->d:Lcom/google/android/location/fused/ai;

    iget-object v1, v0, Lcom/google/android/location/fused/ai;->a:Landroid/location/LocationManager;

    iget-object v2, v0, Lcom/google/android/location/fused/ai;->h:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iput v8, v0, Lcom/google/android/location/fused/ai;->c:I

    iput-boolean v8, v0, Lcom/google/android/location/fused/ai;->d:Z

    iput-boolean v8, v0, Lcom/google/android/location/fused/ai;->e:Z

    iput-boolean v8, v0, Lcom/google/android/location/fused/ai;->f:Z

    .line 76
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->a:Lcom/google/android/location/fused/ar;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ar;->a()Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/a/e;->c:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->e:Lcom/google/android/location/fused/ac;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ac;->e()V

    .line 79
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->a:Lcom/google/android/location/fused/ar;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ar;->a()Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/a/e;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 80
    const-string v0, "GCoreFlp"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "GPS Disabled"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eq v0, p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/location/fused/a/e;->e:Lcom/google/android/location/fused/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/ac;->b(Z)V

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/location/fused/a/h;->a(Z)V

    .line 93
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Gps location ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/a/e;->a(Ljava/lang/StringBuilder;)V

    .line 99
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
