.class Lcom/google/android/gms/internal/fw$5;
.super Lcom/google/android/gms/internal/fw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fw;->loadOwnerAvatar(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic PE:Lcom/google/android/gms/internal/fw;

.field final synthetic PH:I

.field final synthetic PK:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fw$5;->PE:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw$5;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fw$5;->OZ:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/fw$5;->PH:I

    iput p5, p0, Lcom/google/android/gms/internal/fw$5;->PK:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fw$a;-><init>(Lcom/google/android/gms/internal/fw$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$5;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/fw$5;->OT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fw$5;->OZ:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/fw$5;->PH:I

    iget v5, p0, Lcom/google/android/gms/internal/fw$5;->PK:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fw$5;->a(Lcom/google/android/gms/common/internal/g;)V

    return-void
.end method
