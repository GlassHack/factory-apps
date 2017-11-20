.class Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->validateAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;
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
        "Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

.field final synthetic HV:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$20;->HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$20;->HV:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$20;->r(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;

    move-result-object v0

    return-object v0
.end method

.method public r(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$20;->HV:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/w;->validateAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/ValidateAccountCredentialsResponse;

    move-result-object v0

    return-object v0
.end method
