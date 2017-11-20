.class Lcom/google/android/gms/people/PeopleClient$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->loadContactsGaiaIds(Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;

.field final synthetic Mt:Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$10;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$10;->Mt:Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$10;->Mt:Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;->getContactsGaiaIds()Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;->onContactsGaiaIdsLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$10;->a(Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;)V

    return-void
.end method
