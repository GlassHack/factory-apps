.class Lcom/google/android/gms/internal/fv$4;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fv;->updateCircle(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic Pm:Lcom/google/android/gms/internal/fv;

.field final synthetic Pq:Ljava/lang/String;

.field final synthetic Pr:Ljava/lang/String;

.field final synthetic Ps:Ljava/lang/Boolean;

.field final synthetic Pt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fv$4;->Pm:Lcom/google/android/gms/internal/fv;

    iput-object p2, p0, Lcom/google/android/gms/internal/fv$4;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fv$4;->OZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fv$4;->Pq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/fv$4;->Pr:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/fv$4;->Ps:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/google/android/gms/internal/fv$4;->Pt:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv$4;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/fv$4;->OT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fv$4;->OZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/fv$4;->Pq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/fv$4;->Pr:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/fv$4;->Ps:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/google/android/gms/internal/fv$4;->Pt:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method
