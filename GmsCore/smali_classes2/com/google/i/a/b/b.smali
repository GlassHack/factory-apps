.class final Lcom/google/i/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/google/i/a/b/a;


# direct methods
.method constructor <init>(Lcom/google/i/a/b/a;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/i/a/b/b;->b:Lcom/google/i/a/b/a;

    iput-object p2, p0, Lcom/google/i/a/b/b;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 177
    .line 178
    const/4 v0, 0x1

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/google/i/a/b/b;->b:Lcom/google/i/a/b/a;

    iget-object v3, p0, Lcom/google/i/a/b/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/google/i/a/b/a;->b(Ljava/io/File;)Lcom/google/i/a/b/q;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    :goto_0
    iget-object v2, p0, Lcom/google/i/a/b/b;->b:Lcom/google/i/a/b/a;

    iget-object v3, v2, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    invoke-interface {v3}, Lcom/google/i/a/b/h;->b()Lcom/google/android/location/k/j;

    move-result-object v3

    new-instance v4, Lcom/google/i/a/b/c;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/i/a/b/c;-><init>(Lcom/google/i/a/b/a;ZLcom/google/i/a/b/q;)V

    invoke-interface {v3, v4}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 196
    return-void

    .line 181
    :catch_0
    move-exception v2

    .line 182
    const-string v3, "GpwleDiskCache"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "GpwleDiskCache"

    const-string v3, "Chunk read failed. Attempting recovery write."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :try_start_1
    iget-object v2, p0, Lcom/google/i/a/b/b;->b:Lcom/google/i/a/b/a;

    iget-object v3, p0, Lcom/google/i/a/b/b;->a:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/i/a/b/a;->a(Lcom/google/i/a/b/a;Ljava/io/File;Lcom/google/i/a/b/q;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 190
    const-string v2, "GpwleDiskCache"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "GpwleDiskCache"

    const-string v2, "Recovery write failed. Deactivating."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method
