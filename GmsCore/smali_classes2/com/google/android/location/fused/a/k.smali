.class public final Lcom/google/android/location/fused/a/k;
.super Lcom/google/android/location/fused/a/l;
.source "SourceFile"


# instance fields
.field private final a:Landroid/location/LocationListener;

.field private final b:Lcom/google/android/location/fused/ar;

.field private final c:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/ar;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/location/fused/a/l;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/google/android/location/fused/a/k;->a:Landroid/location/LocationListener;

    .line 32
    iput-object p1, p0, Lcom/google/android/location/fused/a/k;->b:Lcom/google/android/location/fused/ar;

    .line 33
    iput-object p3, p0, Lcom/google/android/location/fused/a/k;->c:Landroid/os/Looper;

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 38
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/google/android/location/fused/a/k;->b:Lcom/google/android/location/fused/ar;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ar;->a()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/location/fused/a/k;->b:Lcom/google/android/location/fused/ar;

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/android/location/fused/a/k;->a:Landroid/location/LocationListener;

    iget-object v5, p0, Lcom/google/android/location/fused/a/k;->c:Landroid/os/Looper;

    iget-object v6, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/location/fused/ar;->a(Ljava/lang/String;JLandroid/location/LocationListener;Landroid/os/Looper;Ljava/util/Collection;Z)V

    .line 50
    const-string v0, "GCoreFlp"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "Passive provider enabled"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/a/k;->b:Lcom/google/android/location/fused/ar;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ar;->a()Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/a/k;->a:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 56
    const-string v0, "GCoreFlp"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Passive provider Disabled"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Passive location ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/a/k;->a(Ljava/lang/StringBuilder;)V

    .line 66
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
