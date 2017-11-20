.class final Lcom/google/googlenav/common/io/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/n;


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/io/a/e;

.field private b:Ljava/io/FileOutputStream;

.field private c:Ljava/nio/channels/FileLock;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/a/e;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 277
    iput-object p1, p0, Lcom/google/googlenav/common/io/a/f;->a:Lcom/google/googlenav/common/io/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object v0, p0, Lcom/google/googlenav/common/io/a/f;->b:Ljava/io/FileOutputStream;

    .line 273
    iput-object v0, p0, Lcom/google/googlenav/common/io/a/f;->c:Ljava/nio/channels/FileLock;

    .line 278
    iput-object p2, p0, Lcom/google/googlenav/common/io/a/f;->b:Ljava/io/FileOutputStream;

    .line 279
    iput-object p3, p0, Lcom/google/googlenav/common/io/a/f;->c:Ljava/nio/channels/FileLock;

    .line 280
    iput-object p4, p0, Lcom/google/googlenav/common/io/a/f;->d:Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/google/googlenav/common/io/a/e;->a(Lcom/google/googlenav/common/io/a/e;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/google/googlenav/common/io/a/f;->a:Lcom/google/googlenav/common/io/a/e;

    invoke-static {v1}, Lcom/google/googlenav/common/io/a/e;->a(Lcom/google/googlenav/common/io/a/e;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/common/io/a/f;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/common/io/a/f;->c:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/google/googlenav/common/io/a/f;->c:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/f;->b:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/google/googlenav/common/io/a/e;->a(Ljava/io/FileOutputStream;)Z

    move-result v0

    :goto_0
    return v0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    invoke-static {}, Lcom/google/googlenav/common/io/a/e;->b()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to release lock"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :catch_1
    move-exception v1

    .line 295
    invoke-static {}, Lcom/google/googlenav/common/io/a/e;->b()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to release lock"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
