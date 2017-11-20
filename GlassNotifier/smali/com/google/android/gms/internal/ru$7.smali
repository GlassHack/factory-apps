.class Lcom/google/android/gms/internal/ru$7;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ru;->updatePersonCircles(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFK:Ljava/lang/String;

.field final synthetic aFX:Lcom/google/android/gms/internal/ru;

.field final synthetic aGj:Ljava/lang/String;

.field final synthetic aGk:Ljava/util/List;

.field final synthetic aGl:Ljava/util/List;

.field final synthetic aGm:Lcom/google/android/gms/internal/ki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ru;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ki;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ru$7;->aFX:Lcom/google/android/gms/internal/ru;

    iput-object p3, p0, Lcom/google/android/gms/internal/ru$7;->aFE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ru$7;->aFK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ru$7;->aGj:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ru$7;->aGk:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/ru$7;->aGl:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/internal/ru$7;->aGm:Lcom/google/android/gms/internal/ki;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ru$7;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$7;->aFE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ru$7;->aFK:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ru$7;->aGj:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ru$7;->aGk:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ru$7;->aGl:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/internal/ru$7;->aGm:Lcom/google/android/gms/internal/ki;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ki;)V

    return-void
.end method

.method protected bk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ru$7$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ru$7$1;-><init>(Lcom/google/android/gms/internal/ru$7;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ru$7;->bk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;

    move-result-object v0

    return-object v0
.end method
