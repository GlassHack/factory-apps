.class final Lcom/google/android/gms/internal/fc$d;
.super Lcom/google/android/gms/common/internal/c$b;

# interfaces
.implements Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/ev;",
        ">.b<",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;",
        ">;>;",
        "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;"
    }
.end annotation


# instance fields
.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Nb:Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$d;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/c$b;-><init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fc$d;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p4, p0, Lcom/google/android/gms/internal/fc$d;->Nb:Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;

    return-void
.end method


# virtual methods
.method protected cN()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc$d;->release()V

    return-void
.end method

.method protected d(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;",
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fc$d;->d(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method

.method public getContactsGaiaIds()Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$d;->Nb:Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$d;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$d;->Nb:Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$d;->Nb:Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;->close()V

    :cond_0
    return-void
.end method
