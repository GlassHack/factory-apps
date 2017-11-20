.class Lcom/google/android/gms/internal/fw$6;
.super Lcom/google/android/gms/internal/fw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fw;->loadOwnerCoverPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic PE:Lcom/google/android/gms/internal/fw;

.field final synthetic PL:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fw$6;->PE:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw$6;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fw$6;->OZ:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/fw$6;->PL:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$6;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fw$6;->OT:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/fw$6;->OZ:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/fw$6;->PL:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fw$6;->a(Lcom/google/android/gms/common/internal/g;)V

    return-void
.end method
