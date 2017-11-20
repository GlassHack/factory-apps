.class Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->checkAccountName(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
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
        "Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

.field final synthetic HO:Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$12;->HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$12;->HO:Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$12;->j(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$12;->HO:Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w;->checkAccountName(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    move-result-object v0

    return-object v0
.end method
