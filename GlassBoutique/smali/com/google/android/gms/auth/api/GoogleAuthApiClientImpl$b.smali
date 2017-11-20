.class final Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$b;
.super Lcom/google/android/gms/auth/api/IGoogleAuthApiCallbacks$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field pz:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/IGoogleAuthApiCallbacks$Stub;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$b;->pz:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method


# virtual methods
.method public onConnectionSuccess(Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$b;->pz:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v1, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;

    invoke-direct {v1, p1}, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;-><init>(Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "errorDescription"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$b;->pz:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v2, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;

    invoke-direct {v2, v0, p2, p3}, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    return-void
.end method
