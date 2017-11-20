.class final Lcom/google/android/location/fused/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/g;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/g;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/location/fused/m;->a:Lcom/google/android/location/fused/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/location/fused/m;->a:Lcom/google/android/location/fused/g;

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

    .line 401
    iget-object v2, v0, Lcom/google/android/location/fused/r;->c:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/google/android/location/fused/m;->a:Lcom/google/android/location/fused/g;

    iget-object v3, v0, Lcom/google/android/location/fused/r;->a:Lcom/google/android/gms/location/h;

    invoke-virtual {v2, v3}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/h;)V

    .line 403
    const-string v2, "GCoreFlp"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    const-string v2, "Removed a listener stuck after disconnect in package %s, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/google/android/location/fused/r;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_1
    return-void
.end method
