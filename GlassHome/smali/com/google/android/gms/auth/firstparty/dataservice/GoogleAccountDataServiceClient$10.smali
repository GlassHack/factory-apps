.class Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->updateAccountRecoveryData(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;
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
        "Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic qj:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

.field final synthetic qr:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$10;->qj:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$10;->qr:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$10;->h(Lcom/google/android/gms/auth/firstparty/dataservice/u;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/google/android/gms/auth/firstparty/dataservice/u;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$10;->qr:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->updateAccountRecoveryData(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;

    move-result-object v0

    return-object v0
.end method
