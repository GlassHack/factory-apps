.class final Lcom/google/android/location/fused/i;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/g;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/g;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/location/fused/i;->a:Lcom/google/android/location/fused/g;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/location/fused/i;->a:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/location/fused/g;)Z

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/google/android/location/fused/i;->a:Lcom/google/android/location/fused/g;

    invoke-static {v1}, Lcom/google/android/location/fused/g;->b(Lcom/google/android/location/fused/g;)V

    .line 266
    iget-object v1, p0, Lcom/google/android/location/fused/i;->a:Lcom/google/android/location/fused/g;

    invoke-static {v1}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/location/fused/g;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/location/fused/i;->a:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->c(Lcom/google/android/location/fused/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/r;

    .line 268
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/location/fused/r;->a(Z)V

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method
