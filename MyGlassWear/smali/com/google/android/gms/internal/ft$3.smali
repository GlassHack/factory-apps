.class Lcom/google/android/gms/internal/ft$3;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ft;->isSyncToContactsEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/People$BooleanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OR:Lcom/google/android/gms/internal/ft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ft;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ft$3;->OR:Lcom/google/android/gms/internal/ft;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected G(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/People$BooleanResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/people/People$BooleanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/people/People$BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    return-object v0
.end method

.method protected synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ft$3;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ft$3;->G(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/People$BooleanResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fc;->isSyncToContactsEnabled()Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/people/People$BooleanResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/people/People$BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ft$3;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PeopleClient"

    const-string v2, "Failed in setSyncToContactsEnabled()"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/people/People$BooleanResult;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->xD:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/people/People$BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ft$3;->b(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method
