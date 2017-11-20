.class Lcom/google/android/gms/internal/jr$2;
.super Lcom/google/android/gms/internal/jr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jr;->tryDownload(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Va:Ljava/lang/String;

.field final synthetic Vb:Lcom/google/android/gms/internal/jr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jr;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jr$2;->Vb:Lcom/google/android/gms/internal/jr;

    iput-object p3, p0, Lcom/google/android/gms/internal/jr$2;->Va:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/jr$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/jt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jr$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jr$2$1;-><init>(Lcom/google/android/gms/internal/jr$2;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/jr$2;->Va:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/jt;->b(Lcom/google/android/gms/internal/ju;Ljava/lang/String;)V

    return-void
.end method
