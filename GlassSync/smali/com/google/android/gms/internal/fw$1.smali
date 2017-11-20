.class Lcom/google/android/gms/internal/fw$1;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fw;->setAvatar(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Images$SetAvatarResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic PC:Landroid/net/Uri;

.field final synthetic PD:Z

.field final synthetic PE:Lcom/google/android/gms/internal/fw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fw$1;->PE:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw$1;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fw$1;->OZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fw$1;->PC:Landroid/net/Uri;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/fw$1;->PD:Z

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected R(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Images$SetAvatarResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fw$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fw$1$1;-><init>(Lcom/google/android/gms/internal/fw$1;Lcom/google/android/gms/common/api/Status;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$1;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$1;->R(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Images$SetAvatarResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/fw$1;->OT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fw$1;->OZ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/fw$1;->PC:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/fw$1;->PD:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method
