.class Lcom/google/android/gms/internal/ga$1;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ga;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic PV:J

.field final synthetic PW:Z

.field final synthetic PX:Z

.field final synthetic PY:Lcom/google/android/gms/internal/ga;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ga;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ga$1;->PY:Lcom/google/android/gms/internal/ga;

    iput-object p2, p0, Lcom/google/android/gms/internal/ga$1;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ga$1;->OZ:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ga$1;->PV:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ga$1;->PW:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ga$1;->PX:Z

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ga$1;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ga$1;->OT:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ga$1;->OZ:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ga$1;->PV:J

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ga$1;->PW:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ga$1;->PX:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->b(Ljava/lang/String;Ljava/lang/String;JZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ga$1;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->xD:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method
