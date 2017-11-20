.class abstract Lcom/google/android/gms/internal/aq$a;
.super Lcom/google/android/gms/internal/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic vp:Lcom/google/android/gms/internal/aq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aq$a;->vp:Lcom/google/android/gms/internal/aq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/as$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/aq;Lcom/google/android/gms/internal/aq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aq$a;-><init>(Lcom/google/android/gms/internal/aq;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onConnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onDisconnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onError(I)V
    .locals 1
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
