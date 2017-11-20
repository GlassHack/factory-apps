.class Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$21;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->getGplusInfo(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a",
        "<",
        "Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic qB:Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

.field final synthetic qj:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$21;->qj:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$21;->qB:Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/google/android/gms/auth/firstparty/dataservice/u;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$21;->r(Lcom/google/android/gms/auth/firstparty/dataservice/u;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public r(Lcom/google/android/gms/auth/firstparty/dataservice/u;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$21;->qB:Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->getGplusInfo(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

    move-result-object v0

    return-object v0
.end method
