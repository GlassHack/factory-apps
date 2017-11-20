.class Lcom/google/android/gms/internal/fv$5;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fv;->addPeopleToCircle(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/GraphUpdate$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic Pm:Lcom/google/android/gms/internal/fv;

.field final synthetic Pq:Ljava/lang/String;

.field final synthetic Pu:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fv$5;->Pm:Lcom/google/android/gms/internal/fv;

    iput-object p2, p0, Lcom/google/android/gms/internal/fv$5;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fv$5;->OZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fv$5;->Pq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/fv$5;->Pu:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected O(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fv$5$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fv$5$1;-><init>(Lcom/google/android/gms/internal/fv$5;Lcom/google/android/gms/common/api/Status;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv$5;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv$5;->O(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$a;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/fv$5;->OT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fv$5;->OZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/fv$5;->Pq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/fv$5;->Pu:Ljava/util/List;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
