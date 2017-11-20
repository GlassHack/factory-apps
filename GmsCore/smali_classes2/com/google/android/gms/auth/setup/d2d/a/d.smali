.class final Lcom/google/android/gms/auth/setup/d2d/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/google/android/gms/auth/setup/d2d/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/a/b;[B)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/a/d;->b:Lcom/google/android/gms/auth/setup/d2d/a/b;

    iput-object p2, p0, Lcom/google/android/gms/auth/setup/d2d/a/d;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/d;->b:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->c(Lcom/google/android/gms/auth/setup/d2d/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/a/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Write failed because this connection is already disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/d;->b:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->d(Lcom/google/android/gms/auth/setup/d2d/a/b;)Ljava/io/DataOutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/d;->a:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/d;->b:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->d(Lcom/google/android/gms/auth/setup/d2d/a/b;)Ljava/io/DataOutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/d;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/d;->b:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->d(Lcom/google/android/gms/auth/setup/d2d/a/b;)Ljava/io/DataOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/d;->b:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->a()V

    goto :goto_0
.end method
