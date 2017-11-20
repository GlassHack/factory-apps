.class Lcom/google/android/gms/internal/rz$1;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rz;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFK:Ljava/lang/String;

.field final synthetic aGL:J

.field final synthetic aGM:Z

.field final synthetic aGN:Z

.field final synthetic aGO:Lcom/google/android/gms/internal/rz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rz;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/rz$1;->aGO:Lcom/google/android/gms/internal/rz;

    iput-object p3, p0, Lcom/google/android/gms/internal/rz$1;->aFE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/rz$1;->aFK:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/rz$1;->aGL:J

    iput-boolean p7, p0, Lcom/google/android/gms/internal/rz$1;->aGM:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/rz$1;->aGN:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/people/People$b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rz$1;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/rz$1;->aFE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/rz$1;->aFK:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/rz$1;->aGL:J

    iget-boolean v6, p0, Lcom/google/android/gms/internal/rz$1;->aGM:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/rz$1;->aGN:Z

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/rb;->b(Ljava/lang/String;Ljava/lang/String;JZZ)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->TO:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rz$1;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
