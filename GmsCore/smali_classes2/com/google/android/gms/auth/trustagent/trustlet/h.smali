.class final Lcom/google/android/gms/auth/trustagent/trustlet/h;
.super Lcom/android/b/a/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/f;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/h;->a:Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-direct {p0}, Lcom/android/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/h;->a:Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->b(Lcom/google/android/gms/auth/trustagent/trustlet/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/h;->a:Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->b(Lcom/google/android/gms/auth/trustagent/trustlet/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/h;->a:Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->b(Lcom/google/android/gms/auth/trustagent/trustlet/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 430
    return-void
.end method
