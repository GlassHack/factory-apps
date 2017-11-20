.class Lcom/google/android/gms/internal/cm$3;
.super Lcom/google/android/gms/internal/bx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cm;->readData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/bx$a",
        "<",
        "Lcom/google/android/gms/fitness/result/DataReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic DE:Lcom/google/android/gms/internal/cm;

.field final synthetic DG:Lcom/google/android/gms/fitness/request/DataReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/fitness/request/DataReadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cm$3;->DE:Lcom/google/android/gms/internal/cm;

    iput-object p2, p0, Lcom/google/android/gms/internal/cm$3;->DG:Lcom/google/android/gms/fitness/request/DataReadRequest;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cm$3;->a(Lcom/google/android/gms/internal/bx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/bx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cm$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cm$a;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/cm$1;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->dH()Lcom/google/android/gms/internal/cc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cm$3;->DG:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/bz;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cm$3;->m(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected m(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm$3;->DG:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DataReadResult;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method
