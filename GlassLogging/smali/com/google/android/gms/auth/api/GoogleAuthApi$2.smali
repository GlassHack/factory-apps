.class final Lcom/google/android/gms/auth/api/GoogleAuthApi$2;
.super Lcom/google/android/gms/auth/api/GoogleAuthApi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/GoogleAuthApi;->sendRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ps:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApi$2;->ps:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApi$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApi$2;->ps:Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/GoogleAuthApi$2;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;)V

    return-void
.end method
