.class Lcom/google/android/gms/internal/gl$1;
.super Lcom/google/android/gms/internal/gl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gl;->setToken(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gl$b",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qw:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

.field final synthetic Qx:Lcom/google/android/gms/internal/gl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gl$1;->Qx:Lcom/google/android/gms/internal/gl;

    iput-object p2, p0, Lcom/google/android/gms/internal/gl$1;->Qw:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gl$b;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/internal/gm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gl$1;->a(Lcom/google/android/gms/internal/gm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gl$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gl$1$1;-><init>(Lcom/google/android/gms/internal/gl$1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gl$1;->Qw:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gm;->a(Lcom/google/android/gms/internal/gj;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gl$1;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
