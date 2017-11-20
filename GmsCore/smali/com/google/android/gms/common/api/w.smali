.class public final Lcom/google/android/gms/common/api/w;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/v;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/v;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/gms/common/api/w;->a:Lcom/google/android/gms/common/api/v;

    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 93
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/common/api/w;->a:Lcom/google/android/gms/common/api/v;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/x;

    iget-object v1, v1, Lcom/google/android/gms/common/api/v;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/x;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    const-string v1, "ListenerHolder"

    const-string v2, "Notifying listener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
