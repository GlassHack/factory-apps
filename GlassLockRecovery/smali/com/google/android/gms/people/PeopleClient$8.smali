.class Lcom/google/android/gms/people/PeopleClient$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->loadPeopleLive(Lcom/google/android/gms/people/PeopleClient$e;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$a;)V
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
        "Lcom/google/android/gms/people/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;

.field final synthetic Mr:Lcom/google/android/gms/people/PeopleClient$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$8;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$8;->Mr:Lcom/google/android/gms/people/PeopleClient$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/a$a;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$8;->Mr:Lcom/google/android/gms/people/PeopleClient$e;

    invoke-interface {p1}, Lcom/google/android/gms/people/a$a;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/a$a;->getPeople()Lcom/google/android/gms/people/model/PersonBuffer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/people/a$a;->fB()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/people/PeopleClient$e;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/people/model/PersonBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/a$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$8;->a(Lcom/google/android/gms/people/a$a;)V

    return-void
.end method
