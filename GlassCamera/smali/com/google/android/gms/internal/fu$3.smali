.class Lcom/google/android/gms/internal/fu$3;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu;->loadCircles(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadCirclesOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadCirclesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OX:Lcom/google/android/gms/internal/fu;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic Pb:Lcom/google/android/gms/people/Graph$LoadCirclesOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadCirclesOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$3;->OX:Lcom/google/android/gms/internal/fu;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$3;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fu$3;->OZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fu$3;->Pb:Lcom/google/android/gms/people/Graph$LoadCirclesOptions;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected I(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadCirclesResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fu$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fu$3$1;-><init>(Lcom/google/android/gms/internal/fu$3;Lcom/google/android/gms/common/api/Status;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$3;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$3;->I(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadCirclesResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/fu$3;->OT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fu$3;->OZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$3;->Pb:Lcom/google/android/gms/people/Graph$LoadCirclesOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->getFilterCircleId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$3;->Pb:Lcom/google/android/gms/people/Graph$LoadCirclesOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->getFilterCircleType()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$3;->Pb:Lcom/google/android/gms/people/Graph$LoadCirclesOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->getFilterCircleNamePrefix()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$3;->Pb:Lcom/google/android/gms/people/Graph$LoadCirclesOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->isGetVisibility()Z

    move-result v7

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method
