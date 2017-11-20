.class Lcom/google/android/gms/people/PeopleClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->addPeopleToCircle(Lcom/google/android/gms/people/PeopleClient$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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
        "Lcom/google/android/gms/people/GraphUpdate$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;

.field final synthetic Mm:Lcom/google/android/gms/people/PeopleClient$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$3;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$3;->Mm:Lcom/google/android/gms/people/PeopleClient$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/GraphUpdate$a;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$3;->Mm:Lcom/google/android/gms/people/PeopleClient$b;

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$a;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$a;->getCircleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$a;->getCircleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/people/GraphUpdate$a;->fA()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/people/PeopleClient$b;->a(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/GraphUpdate$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$3;->a(Lcom/google/android/gms/people/GraphUpdate$a;)V

    return-void
.end method
