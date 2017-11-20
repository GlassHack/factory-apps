.class Lcom/google/android/gms/people/PeopleClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->loadPeople(Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;)V
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
        "Lcom/google/android/gms/people/Graph$LoadPeopleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mj:Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;

.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$1;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$1;->Mj:Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/Graph$LoadPeopleResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$1;->Mj:Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadPeopleResult;->getPeople()Lcom/google/android/gms/people/model/PersonBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;->onPeopleLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/PersonBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/Graph$LoadPeopleResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$1;->a(Lcom/google/android/gms/people/Graph$LoadPeopleResult;)V

    return-void
.end method
