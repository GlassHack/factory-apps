.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private synthetic d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    const-string v0, "persistentKey"

    invoke-static {p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "persistentKey"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->c:Z

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    invoke-interface {v1, v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;->a(ZLcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const-wide/32 v4, 0x6ddd00

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "shelfLife"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->c:Z

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;->a(ZLcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a:Ljava/io/File;

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->b(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Ljava/io/InputStream;)Lcom/google/maps/api/android/lib6/gmm6/streetview/q;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    :try_start_5
    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->c:Z

    iput-boolean v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    invoke-interface {v0, v8, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;->a(ZLcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :try_start_6
    const-string v1, "read"

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->c:Z

    iput-boolean v2, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    invoke-interface {v2, v8, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;->a(ZLcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    :cond_6
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b(Ljava/lang/Object;)V

    throw v0

    :cond_7
    move-object v1, v0

    goto :goto_3

    :cond_8
    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0
.end method
