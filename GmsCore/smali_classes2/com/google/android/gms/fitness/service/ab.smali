.class final Lcom/google/android/gms/fitness/service/ab;
.super Lcom/google/android/gms/fitness/h/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/fitness/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ab;->b:Lcom/google/android/gms/fitness/service/z;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ab;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/h/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 0

    .prologue
    .line 1872
    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/aa;)V
    .locals 3

    .prologue
    .line 1872
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Sending result of claim request %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ab;->b:Lcom/google/android/gms/fitness/service/z;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/z;->b:Lcom/google/android/gms/fitness/internal/v;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ab;->b:Lcom/google/android/gms/fitness/service/z;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/z;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->b(Lcom/google/android/gms/fitness/service/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/fitness/service/ac;

    invoke-direct {v1, p0}, Lcom/google/android/gms/fitness/service/ac;-><init>(Lcom/google/android/gms/fitness/service/ab;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final b(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 1880
    instance-of v0, p1, Lcom/google/android/gms/fitness/n/aw;

    if-eqz v0, :cond_0

    .line 1881
    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 1883
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/h/c;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    goto :goto_0
.end method
