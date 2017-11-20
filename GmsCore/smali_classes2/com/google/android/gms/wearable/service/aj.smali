.class final Lcom/google/android/gms/wearable/service/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic b:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/aj;->b:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/aj;->a:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 713
    :try_start_0
    sget-object v0, Lcom/google/android/gms/wearable/node/aj;->a:Lcom/google/android/gms/wearable/node/aj;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/aj;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 714
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 716
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/i;

    .line 717
    new-instance v3, Lcom/google/android/gms/wearable/internal/NodeParcelable;

    iget-object v4, v0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/wearable/internal/NodeParcelable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    const-string v1, "WearableService"

    const-string v2, "getConnectedNodes: exception during processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/aj;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;)V

    .line 729
    :goto_1
    return-void

    .line 720
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/aj;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
