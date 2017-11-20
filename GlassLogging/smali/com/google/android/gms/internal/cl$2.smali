.class Lcom/google/android/gms/internal/cl$2;
.super Lcom/google/android/gms/internal/bx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cl;->readDataType(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/bx$a",
        "<",
        "Lcom/google/android/gms/fitness/result/DataTypeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic DB:Lcom/google/android/gms/internal/cl;

.field final synthetic DC:Lcom/google/android/gms/fitness/request/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/fitness/request/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cl$2;->DB:Lcom/google/android/gms/internal/cl;

    iput-object p2, p0, Lcom/google/android/gms/internal/cl$2;->DC:Lcom/google/android/gms/fitness/request/i;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bx$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/bx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cl$2;->a(Lcom/google/android/gms/internal/bx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/bx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cl$a;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/cl$1;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->dH()Lcom/google/android/gms/internal/cc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cl$2;->DC:Lcom/google/android/gms/fitness/request/i;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/android/gms/fitness/request/i;Lcom/google/android/gms/internal/cb;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cl$2;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method

.method protected l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataTypeResult;->t(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method
