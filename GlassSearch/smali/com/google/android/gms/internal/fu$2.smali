.class Lcom/google/android/gms/internal/fu$2;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu;->loadOwner(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Graph$LoadOwnersResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OX:Lcom/google/android/gms/internal/fu;

.field final synthetic OZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$2;->OX:Lcom/google/android/gms/internal/fu;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$2;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fu$2;->OZ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadOwnersResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fu$2$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fu$2$1;-><init>(Lcom/google/android/gms/internal/fu$2;Lcom/google/android/gms/common/api/Status;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$2;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fu$2;->H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadOwnersResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/fu$2;->OT:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/fu$2;->OZ:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
