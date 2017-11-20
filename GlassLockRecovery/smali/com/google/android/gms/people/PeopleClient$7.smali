.class Lcom/google/android/gms/people/PeopleClient$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->expLoadPeopleForAggregation(Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;

.field final synthetic Mq:Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$7;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$7;->Mq:Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$7;->Mq:Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;->getPeople()Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;->getGaiaMap()Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;->expOnPeopleForAggregationLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$7;->a(Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;)V

    return-void
.end method
