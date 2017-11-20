.class Lcom/google/android/gms/internal/fv$1;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic Pk:Ljava/lang/String;

.field final synthetic Pl:Z

.field final synthetic Pm:Lcom/google/android/gms/internal/fv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fv$1;->Pm:Lcom/google/android/gms/internal/fv;

    iput-object p2, p0, Lcom/google/android/gms/internal/fv$1;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fv$1;->OZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fv$1;->Pk:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/fv$1;->Pl:Z

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv$1;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/fv$1;->OT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fv$1;->OZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/fv$1;->Pk:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/fv$1;->Pl:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
