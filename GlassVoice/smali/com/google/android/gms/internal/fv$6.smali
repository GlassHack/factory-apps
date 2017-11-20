.class Lcom/google/android/gms/internal/fv$6;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fv;->updatePersonCircles(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/bh;)Lcom/google/android/gms/common/api/PendingResult;
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
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic Pm:Lcom/google/android/gms/internal/fv;

.field final synthetic Pw:Ljava/lang/String;

.field final synthetic Px:Ljava/util/List;

.field final synthetic Py:Ljava/util/List;

.field final synthetic Pz:Lcom/google/android/gms/internal/bh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fv$6;->Pm:Lcom/google/android/gms/internal/fv;

    iput-object p2, p0, Lcom/google/android/gms/internal/fv$6;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fv$6;->OZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fv$6;->Pw:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/fv$6;->Px:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/fv$6;->Py:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/fv$6;->Pz:Lcom/google/android/gms/internal/bh;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected P(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fv$6$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fv$6$1;-><init>(Lcom/google/android/gms/internal/fv$6;Lcom/google/android/gms/common/api/Status;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv$6;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv$6;->P(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$UpdatePersonCircleResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/fv$6;->OT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fv$6;->OZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/fv$6;->Pw:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/fv$6;->Px:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/fv$6;->Py:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/internal/fv$6;->Pz:Lcom/google/android/gms/internal/bh;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/bh;)V

    return-void
.end method
