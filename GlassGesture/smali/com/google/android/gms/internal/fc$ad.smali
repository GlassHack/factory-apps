.class final Lcom/google/android/gms/internal/fc$ad;
.super Lcom/google/android/gms/internal/ep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ad"
.end annotation


# instance fields
.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$ad;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ep;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fc$ad;->Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;[Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 10

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/fd;->fR()Z

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fd;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v4, p2}, Lcom/google/android/gms/internal/fc;->b(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    if-eqz p3, :cond_1

    iget-object v6, p0, Lcom/google/android/gms/internal/fc$ad;->MY:Lcom/google/android/gms/internal/fc;

    new-instance v0, Lcom/google/android/gms/internal/fc$ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/fc$ad;->MY:Lcom/google/android/gms/internal/fc;

    iget-object v2, p0, Lcom/google/android/gms/internal/fc$ad;->Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v4, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    const/4 v5, 0x0

    aget-object v5, p3, v5

    new-instance v7, Lcom/google/android/gms/internal/fq$b;

    invoke-static {}, Lcom/google/android/gms/internal/fc;->fP()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/fq$b;-><init>(Landroid/os/Bundle;)V

    new-instance v8, Lcom/google/android/gms/internal/fq$a;

    invoke-static {}, Lcom/google/android/gms/internal/fc;->fQ()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/fq$a;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v4, v5, v7, v8}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/fq$b;Lcom/google/android/gms/internal/fq$a;)V

    new-instance v5, Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    const/4 v7, 0x1

    aget-object v7, p3, v7

    invoke-direct {v5, v7}, Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fc$ae;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/fc;->b(Lcom/google/android/gms/common/internal/c$b;)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/internal/fc$ad;->MY:Lcom/google/android/gms/internal/fc;

    new-instance v0, Lcom/google/android/gms/internal/fc$ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/fc$ad;->MY:Lcom/google/android/gms/internal/fc;

    iget-object v2, p0, Lcom/google/android/gms/internal/fc$ad;->Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fc$ae;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/fc;->b(Lcom/google/android/gms/common/internal/c$b;)V

    goto :goto_0
.end method
