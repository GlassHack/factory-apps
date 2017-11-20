.class Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->getAccountRecoveryGuidance(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
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
        "Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic qj:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

.field final synthetic qq:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$9;->qj:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$9;->qq:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$9;->g(Lcom/google/android/gms/auth/firstparty/dataservice/u;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/android/gms/auth/firstparty/dataservice/u;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$9;->qq:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;->getAccountRecoveryGuidance(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    move-result-object v0

    return-object v0
.end method
