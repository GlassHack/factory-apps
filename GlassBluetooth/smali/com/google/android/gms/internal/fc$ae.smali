.class final Lcom/google/android/gms/internal/fc$ae;
.super Lcom/google/android/gms/common/internal/c$b;

# interfaces
.implements Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ae"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/ev;",
        ">.b<",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
        ">;>;",
        "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;"
    }
.end annotation


# instance fields
.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Nr:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

.field private final Ns:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;",
            "Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$ae;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/c$b;-><init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fc$ae;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p4, p0, Lcom/google/android/gms/internal/fc$ae;->Nr:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    iput-object p5, p0, Lcom/google/android/gms/internal/fc$ae;->Ns:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    return-void
.end method


# virtual methods
.method protected cN()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc$ae;->release()V

    return-void
.end method

.method protected d(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
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

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected synthetic f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fc$ae;->d(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method

.method public getEmailTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/fc;->fQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaMap()Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ae;->Ns:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    return-object v0
.end method

.method public getPeople()Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ae;->Nr:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    return-object v0
.end method

.method public getPhoneTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/fc;->fP()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ae;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ae;->Nr:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ae;->Nr:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ae;->Ns:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ae;->Ns:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;->close()V

    :cond_1
    return-void
.end method
