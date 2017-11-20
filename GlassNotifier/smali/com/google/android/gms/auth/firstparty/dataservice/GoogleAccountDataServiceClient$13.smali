.class Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->installAccountFromExportData(Ljava/lang/String;Landroid/os/Bundle;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic HE:Ljava/lang/String;

.field final synthetic HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

.field final synthetic HP:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$13;->HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$13;->HE:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$13;->HP:Landroid/os/Bundle;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$13;->k(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public k(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$13;->HE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$13;->HP:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/w;->installAccountFromExportData(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
