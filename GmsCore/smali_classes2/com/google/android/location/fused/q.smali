.class final Lcom/google/android/location/fused/q;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/g;

.field final synthetic b:Lcom/google/android/location/fused/o;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/o;Lcom/google/android/location/fused/g;)V
    .locals 0

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/google/android/location/fused/q;->b:Lcom/google/android/location/fused/o;

    iput-object p2, p0, Lcom/google/android/location/fused/q;->a:Lcom/google/android/location/fused/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 1471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1472
    iget-object v0, p0, Lcom/google/android/location/fused/q;->b:Lcom/google/android/location/fused/o;

    iget-object v0, v0, Lcom/google/android/location/fused/o;->b:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->c(Lcom/google/android/location/fused/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/r;

    .line 1473
    iget-object v4, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/location/LocationRequest;->f()J

    move-result-wide v4

    .line 1475
    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 1476
    invoke-static {v0}, Lcom/google/android/location/fused/r;->d(Lcom/google/android/location/fused/r;)V

    goto :goto_0

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/q;->b:Lcom/google/android/location/fused/o;

    invoke-static {v0}, Lcom/google/android/location/fused/o;->a(Lcom/google/android/location/fused/o;)V

    .line 1481
    return-void
.end method
