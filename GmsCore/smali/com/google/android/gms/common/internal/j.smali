.class final Lcom/google/android/gms/common/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/e;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/common/internal/j;->a:Lcom/google/android/gms/common/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->a:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/e;->b(Landroid/os/IBinder;)V

    .line 62
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->a:Lcom/google/android/gms/common/internal/e;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->a:Lcom/google/android/gms/common/internal/e;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/e;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    return-void
.end method
