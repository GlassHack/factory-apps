.class Lcom/google/android/gms/people/PeopleClient$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;Z)V
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
        "Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;

.field final synthetic Ms:Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$9;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$9;->Ms:Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$9;->Ms:Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;->getAggregatedPeople()Lcom/google/android/gms/people/model/AggregatedPersonBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;->onAggregatedPeopleLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/AggregatedPersonBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$9;->a(Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;)V

    return-void
.end method
