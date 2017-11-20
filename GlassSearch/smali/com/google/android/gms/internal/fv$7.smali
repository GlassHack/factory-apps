.class Lcom/google/android/gms/internal/fv$7;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fv;->loadAddToCircleConsent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic Pm:Lcom/google/android/gms/internal/fv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fv$7;->Pm:Lcom/google/android/gms/internal/fv;

    iput-object p2, p0, Lcom/google/android/gms/internal/fv$7;->OT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fv$7;->OZ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected Q(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fv$7$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fv$7$1;-><init>(Lcom/google/android/gms/internal/fv$7;Lcom/google/android/gms/common/api/Status;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv$7;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv$7;->Q(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fv$7;->OT:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/fv$7;->OZ:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
