.class Lcom/google/android/gms/people/PeopleClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->updatePersonCircles(Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/bh;)V
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
        "Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;

.field final synthetic Ml:Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$2;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$2;->Ml:Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$2;->Ml:Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;->getAddedCircles()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;->getRemovedCircles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;->onOperationFinished(Lcom/google/android/gms/common/ConnectionResult;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$2;->a(Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;)V

    return-void
.end method
