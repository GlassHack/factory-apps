.class final Lcom/google/android/gms/auth/setup/d2d/a/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/a/b;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/a/c;->a:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 52
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/c;->a:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->a(Lcom/google/android/gms/auth/setup/d2d/a/b;)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 53
    new-array v0, v0, [B

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/c;->a:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-static {v1}, Lcom/google/android/gms/auth/setup/d2d/a/b;->a(Lcom/google/android/gms/auth/setup/d2d/a/b;)Ljava/io/DataInputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/c;->a:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-static {v1}, Lcom/google/android/gms/auth/setup/d2d/a/b;->b(Lcom/google/android/gms/auth/setup/d2d/a/b;)Lcom/google/android/gms/auth/setup/d2d/a/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/setup/d2d/a/g;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/c;->a:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->a()V

    .line 62
    return-void
.end method
