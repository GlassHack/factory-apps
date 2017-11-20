.class Lcom/google/android/gms/internal/aq$1;
.super Lcom/google/android/gms/internal/aq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aq;->startMirroring(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vn:Ljava/lang/String;

.field final synthetic vo:Landroid/app/PendingIntent;

.field final synthetic vp:Lcom/google/android/gms/internal/aq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aq;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aq$1;->vp:Lcom/google/android/gms/internal/aq;

    iput-object p2, p0, Lcom/google/android/gms/internal/aq$1;->vn:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/aq$1;->vo:Landroid/app/PendingIntent;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aq$b;-><init>(Lcom/google/android/gms/internal/aq;)V

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

    check-cast p1, Lcom/google/android/gms/internal/ar;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aq$1;->a(Lcom/google/android/gms/internal/ar;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aq$b$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aq$b$a;-><init>(Lcom/google/android/gms/internal/aq$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aq$1;->vn:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/aq$1;->vo:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/as;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
