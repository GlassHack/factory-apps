.class final Lcom/google/android/gms/internal/rb$ac;
.super Lcom/google/android/gms/internal/qn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ac"
.end annotation


# instance fields
.field private final awb:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/qn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$ac;->awb:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;[Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/rc;->rr()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "People callback: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nholders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rc;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v3, p2}, Lcom/google/android/gms/internal/rb;->b(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/rb$ac;->awb:Lcom/google/android/gms/common/api/a$b;

    new-instance v2, Lcom/google/android/gms/internal/rb$ad;

    new-instance v3, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    const/4 v4, 0x0

    aget-object v4, p3, v4

    new-instance v5, Lcom/google/android/gms/internal/rp$b;

    invoke-static {}, Lcom/google/android/gms/internal/rb;->rp()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/rp$b;-><init>(Landroid/os/Bundle;)V

    new-instance v6, Lcom/google/android/gms/internal/rp$a;

    invoke-static {}, Lcom/google/android/gms/internal/rb;->rq()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/rp$a;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/rp$b;Lcom/google/android/gms/internal/rp$a;)V

    new-instance v4, Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/rb$ad;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$b;->f(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/rb$ac;->awb:Lcom/google/android/gms/common/api/a$b;

    new-instance v2, Lcom/google/android/gms/internal/rb$ad;

    invoke-direct {v2, v0, v3, v3}, Lcom/google/android/gms/internal/rb$ad;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$b;->f(Ljava/lang/Object;)V

    goto :goto_0
.end method
