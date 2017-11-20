.class Lcom/google/android/gms/internal/gl$2;
.super Lcom/google/android/gms/internal/gl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gl;->getToken(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qx:Lcom/google/android/gms/internal/gl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gl$2;->Qx:Lcom/google/android/gms/internal/gl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gl$c;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/internal/gm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gl$2;->a(Lcom/google/android/gms/internal/gm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gl$2;->Qz:Lcom/google/android/gms/internal/gj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gm;->a(Lcom/google/android/gms/internal/gj;)V

    return-void
.end method
