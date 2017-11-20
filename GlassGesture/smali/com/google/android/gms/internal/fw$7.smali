.class Lcom/google/android/gms/internal/fw$7;
.super Lcom/google/android/gms/internal/fw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fw;->loadByReference(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PE:Lcom/google/android/gms/internal/fw;

.field final synthetic PM:Lcom/google/android/gms/people/model/AvatarReference;

.field final synthetic PN:Lcom/google/android/gms/people/Images$LoadImageOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fw$7;->PE:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw$7;->PM:Lcom/google/android/gms/people/model/AvatarReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/fw$7;->PN:Lcom/google/android/gms/people/Images$LoadImageOptions;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$7;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw$7;->PM:Lcom/google/android/gms/people/model/AvatarReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/fw$7;->PN:Lcom/google/android/gms/people/Images$LoadImageOptions;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/internal/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fw$7;->a(Lcom/google/android/gms/common/internal/g;)V

    return-void
.end method
