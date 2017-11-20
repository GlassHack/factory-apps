.class Lcom/google/android/gms/internal/cq$2;
.super Lcom/google/android/gms/internal/bx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cq;->stopSession(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/bx$a",
        "<",
        "Lcom/google/android/gms/fitness/result/SessionStopResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic DU:Lcom/google/android/gms/internal/cq;

.field final synthetic DV:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cq$2;->DU:Lcom/google/android/gms/internal/cq;

    iput-object p2, p0, Lcom/google/android/gms/internal/cq$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cq$2;->DV:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bx$a;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/internal/bx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cq$2;->a(Lcom/google/android/gms/internal/bx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/bx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cq$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cq$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/cq$1;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->dH()Lcom/google/android/gms/internal/cc;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/fitness/request/w$a;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/request/w$a;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/cq$2;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/request/w$a;->ai(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/w$a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/cq$2;->DV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/request/w$a;->aj(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/w$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/request/w$a;->em()Lcom/google/android/gms/fitness/request/w;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/android/gms/fitness/request/w;Lcom/google/android/gms/internal/cf;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cq$2;->p(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v0

    return-object v0
.end method

.method protected p(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/SessionStopResult;->w(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v0

    return-object v0
.end method
