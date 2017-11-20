.class Lcom/google/android/gms/internal/ck$5;
.super Lcom/google/android/gms/internal/bx$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ck;->unclaimBleDevice(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dw:Lcom/google/android/gms/internal/ck;

.field final synthetic Dy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ck;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ck$5;->Dw:Lcom/google/android/gms/internal/ck;

    iput-object p2, p0, Lcom/google/android/gms/internal/ck$5;->Dy:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bx$c;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ck$5;->a(Lcom/google/android/gms/internal/bx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/bx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/bx$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bx$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->dH()Lcom/google/android/gms/internal/cc;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/ck$5;->Dy:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;Lcom/google/android/gms/internal/cg;Ljava/lang/String;)V

    return-void
.end method
