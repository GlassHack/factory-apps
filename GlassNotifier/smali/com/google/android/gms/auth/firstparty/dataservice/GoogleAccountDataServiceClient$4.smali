.class Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->removeAccount(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;
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
        "Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

.field final synthetic HI:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$4;->HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$4;->HI:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$4;->e(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$4;->HI:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w;->removeAccount(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;

    move-result-object v0

    return-object v0
.end method
