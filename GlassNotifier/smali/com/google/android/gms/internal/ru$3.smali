.class Lcom/google/android/gms/internal/ru$3;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ru;->addCircle(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/GraphUpdate$AddCircleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFK:Ljava/lang/String;

.field final synthetic aFX:Lcom/google/android/gms/internal/ru;

.field final synthetic aGa:Ljava/lang/String;

.field final synthetic aGb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ru;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ru$3;->aFX:Lcom/google/android/gms/internal/ru;

    iput-object p3, p0, Lcom/google/android/gms/internal/ru$3;->aFE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ru$3;->aFK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ru$3;->aGa:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ru$3;->aGb:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ru$3;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$3;->aFE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ru$3;->aFK:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ru$3;->aGa:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ru$3;->aGb:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$AddCircleResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ru$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ru$3$1;-><init>(Lcom/google/android/gms/internal/ru$3;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ru$3;->bi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$AddCircleResult;

    move-result-object v0

    return-object v0
.end method
