.class Lcom/google/android/gms/internal/ft$2;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ft;->setSyncToContactsEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OR:Lcom/google/android/gms/internal/ft;

.field final synthetic OS:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ft;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ft$2;->OR:Lcom/google/android/gms/internal/ft;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ft$2;->OS:Z

    invoke-direct {p0}, Lcom/google/android/gms/people/People$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ft$2;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ft$2;->OS:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fc;->setSyncToContactsEnabled(Z)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ft$2;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PeopleClient"

    const-string v2, "Failed in setSyncToContactsEnabled()"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xD:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ft$2;->b(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method
