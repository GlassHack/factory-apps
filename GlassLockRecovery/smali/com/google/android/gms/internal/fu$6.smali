.class Lcom/google/android/gms/internal/fu$6;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu;->expLoadPeopleForAggregation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OX:Lcom/google/android/gms/internal/fu;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$6;->OX:Lcom/google/android/gms/internal/fu;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$6;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fu$6;->OZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected L(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fu$6$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fu$6$1;-><init>(Lcom/google/android/gms/internal/fu$6;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$6;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$6;->L(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/fu$6;->OT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fu$6;->OZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getQuery()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getSearchFields()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->isPeopleOnly()Z

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getProjection()I

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getExtraColumns()I

    move-result v8

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getFilterGaiaId()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->isIncludeEvergreenPeople()Z

    move-result v10

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getSortOrder()I

    move-result v11

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->Pf:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->getFilterGaiaEdgeTypes()I

    move-result v12

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V

    return-void
.end method
