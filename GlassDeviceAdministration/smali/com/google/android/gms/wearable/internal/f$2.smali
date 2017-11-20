.class Lcom/google/android/gms/wearable/internal/f$2;
.super Lcom/google/android/gms/wearable/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/f;->getStorageInformation(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/d",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$StorageInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Wb:Lcom/google/android/gms/wearable/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$2;->Wb:Lcom/google/android/gms/wearable/internal/f;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/wearable/internal/au;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$2;->a(Lcom/google/android/gms/wearable/internal/au;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/au;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/af;

    new-instance v1, Lcom/google/android/gms/wearable/internal/f$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/wearable/internal/f$2$1;-><init>(Lcom/google/android/gms/wearable/internal/f$2;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/af;->e(Lcom/google/android/gms/wearable/internal/ad;)V

    return-void
.end method

.method public ae(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$StorageInfoResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/f$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/f$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/f$2;->ae(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/DataApi$StorageInfoResult;

    move-result-object v0

    return-object v0
.end method
