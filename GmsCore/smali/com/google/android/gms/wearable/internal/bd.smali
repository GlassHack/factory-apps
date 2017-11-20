.class final Lcom/google/android/gms/wearable/internal/bd;
.super Lcom/google/android/gms/wearable/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/i;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ay;Lcom/google/android/gms/common/api/i;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/bd;->b:Lcom/google/android/gms/wearable/internal/ay;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/bd;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;)V
    .locals 5

    .prologue
    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 436
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/bd;->a:Lcom/google/android/gms/common/api/i;

    new-instance v2, Lcom/google/android/gms/wearable/internal/ar;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    iget v4, p1, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;->b:I

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/wearable/internal/ar;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V

    .line 438
    return-void
.end method
