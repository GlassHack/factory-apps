.class final Lcom/google/android/location/os/real/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/google/g/a/b/b/a;

.field final b:Lcom/google/android/location/k/g;

.field final synthetic c:Lcom/google/android/location/os/real/ak;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/real/ak;Lcom/google/g/a/b/b/a;Lcom/google/android/location/k/g;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/android/location/os/real/al;->c:Lcom/google/android/location/os/real/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p2, p0, Lcom/google/android/location/os/real/al;->a:Lcom/google/g/a/b/b/a;

    .line 306
    iput-object p3, p0, Lcom/google/android/location/os/real/al;->b:Lcom/google/android/location/k/g;

    .line 307
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 310
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "GlsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In ReceiverRunnable, response is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/al;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/al;->b:Lcom/google/android/location/k/g;

    iget-object v1, p0, Lcom/google/android/location/os/real/al;->c:Lcom/google/android/location/os/real/ak;

    iget-object v1, v1, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v1, v1, Lcom/google/android/location/os/real/ah;->c:Lcom/google/android/location/k/b;

    iget-object v2, p0, Lcom/google/android/location/os/real/al;->a:Lcom/google/g/a/b/b/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/k/g;->a(Lcom/google/android/location/k/b;Lcom/google/g/a/b/b/a;)V

    .line 312
    return-void
.end method
