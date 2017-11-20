.class Lcom/google/android/gms/internal/rv$7;
.super Lcom/google/android/gms/internal/rv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rv;->loadByReference(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGr:Lcom/google/android/gms/internal/rv;

.field final synthetic aGx:Lcom/google/android/gms/people/model/AvatarReference;

.field final synthetic aGy:Lcom/google/android/gms/people/Images$LoadImageOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/rv$7;->aGr:Lcom/google/android/gms/internal/rv;

    iput-object p3, p0, Lcom/google/android/gms/internal/rv$7;->aGx:Lcom/google/android/gms/people/model/AvatarReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/rv$7;->aGy:Lcom/google/android/gms/people/Images$LoadImageOptions;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/rv$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/rv$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rv$7;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/rv$7;->aGx:Lcom/google/android/gms/people/model/AvatarReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/rv$7;->aGy:Lcom/google/android/gms/people/Images$LoadImageOptions;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rv$7;->setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V

    return-void
.end method
