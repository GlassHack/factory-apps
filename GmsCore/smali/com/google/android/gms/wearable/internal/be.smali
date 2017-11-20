.class final Lcom/google/android/gms/wearable/internal/be;
.super Lcom/google/android/gms/wearable/internal/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/i;

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/i;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    .line 588
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/be;->a:Lcom/google/android/gms/common/api/i;

    .line 589
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/be;->b:Ljava/util/List;

    .line 590
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/internal/PutDataResponse;)V
    .locals 4

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/be;->a:Lcom/google/android/gms/common/api/i;

    new-instance v1, Lcom/google/android/gms/wearable/internal/l;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget v3, p1, Lcom/google/android/gms/wearable/internal/PutDataResponse;->b:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/PutDataResponse;->c:Lcom/google/android/gms/wearable/internal/DataItemParcelable;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/l;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V

    .line 596
    iget v0, p1, Lcom/google/android/gms/wearable/internal/PutDataResponse;->b:I

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    .line 599
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    .line 602
    :cond_0
    return-void
.end method
