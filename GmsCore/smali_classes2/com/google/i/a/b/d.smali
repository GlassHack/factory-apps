.class final Lcom/google/i/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/google/i/a/b/q;

.field final synthetic c:Lcom/google/i/a/b/a;


# direct methods
.method constructor <init>(Lcom/google/i/a/b/a;Ljava/io/File;Lcom/google/i/a/b/q;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/i/a/b/d;->c:Lcom/google/i/a/b/a;

    iput-object p2, p0, Lcom/google/i/a/b/d;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/google/i/a/b/d;->b:Lcom/google/i/a/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/google/i/a/b/d;->c:Lcom/google/i/a/b/a;

    iget-object v1, p0, Lcom/google/i/a/b/d;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/google/i/a/b/d;->b:Lcom/google/i/a/b/q;

    invoke-static {v0, v1, v2}, Lcom/google/i/a/b/a;->a(Lcom/google/i/a/b/a;Ljava/io/File;Lcom/google/i/a/b/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    iget-object v0, p0, Lcom/google/i/a/b/d;->c:Lcom/google/i/a/b/a;

    iget-object v1, v0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    invoke-interface {v1}, Lcom/google/i/a/b/h;->b()Lcom/google/android/location/k/j;

    move-result-object v1

    new-instance v2, Lcom/google/i/a/b/e;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/google/i/a/b/e;-><init>(Lcom/google/i/a/b/a;Z)V

    invoke-interface {v1, v2}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 269
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 263
    const-string v1, "GpwleDiskCache"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "GpwleDiskCache"

    const-string v1, "Standard write failed. Deactivating."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
