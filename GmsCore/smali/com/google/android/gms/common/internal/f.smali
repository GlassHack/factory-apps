.class final Lcom/google/android/gms/common/internal/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->a:Lcom/google/android/gms/common/internal/e;

    .line 92
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->a:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/g;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->c()V

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->e()V

    .line 136
    :goto_0
    return-void

    .line 107
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->a:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/m;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/b;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/m;->a(Lcom/google/android/gms/common/b;)V

    goto :goto_0

    .line 112
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->a:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->a:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->a:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->a(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/m;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/m;->a(I)V

    goto :goto_0

    .line 120
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->a:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/e;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/g;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->c()V

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->e()V

    goto :goto_0

    .line 128
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_5

    .line 129
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/g;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/g;->d()V

    goto :goto_0

    .line 135
    :cond_5
    const-string v0, "GmsClient"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
