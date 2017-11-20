.class Lcom/google/android/gms/internal/rv$1;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rv;->setAvatar(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Images$SetAvatarResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFK:Ljava/lang/String;

.field final synthetic aGp:Landroid/net/Uri;

.field final synthetic aGq:Z

.field final synthetic aGr:Lcom/google/android/gms/internal/rv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rv$1;->aGr:Lcom/google/android/gms/internal/rv;

    iput-object p3, p0, Lcom/google/android/gms/internal/rv$1;->aFE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/rv$1;->aFK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/rv$1;->aGp:Landroid/net/Uri;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/rv$1;->aGq:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/people/People$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/rb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rv$1;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/rv$1;->aFE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/rv$1;->aFK:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/rv$1;->aGp:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/rv$1;->aGq:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method protected bm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Images$SetAvatarResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/rv$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/rv$1$1;-><init>(Lcom/google/android/gms/internal/rv$1;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rv$1;->bm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Images$SetAvatarResult;

    move-result-object v0

    return-object v0
.end method
