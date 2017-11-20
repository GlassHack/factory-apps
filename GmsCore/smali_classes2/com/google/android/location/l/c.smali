.class final Lcom/google/android/location/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/l/b;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/l/b;J)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/location/l/c;->a:Lcom/google/android/location/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-wide p2, p0, Lcom/google/android/location/l/c;->b:J

    .line 263
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 268
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/l/c;->a:Lcom/google/android/location/l/b;

    iget-object v0, v0, Lcom/google/android/location/l/b;->f:Lcom/google/android/location/k/e;

    invoke-interface {v0}, Lcom/google/android/location/k/e;->f()Ljava/io/File;

    move-result-object v0

    const-string v2, "cp_state"

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/l/c;->a:Lcom/google/android/location/l/b;

    iget-object v0, v0, Lcom/google/android/location/l/b;->f:Lcom/google/android/location/k/e;

    invoke-interface {v0, v3}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    .line 274
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/google/android/location/l/c;->a:Lcom/google/android/location/l/b;

    iget-wide v4, p0, Lcom/google/android/location/l/c;->b:J

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/location/l/b;->a(JLjava/io/ByteArrayOutputStream;)V

    .line 280
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 281
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 282
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    iget-object v0, p0, Lcom/google/android/location/l/c;->a:Lcom/google/android/location/l/b;

    invoke-static {v2}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    .line 291
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    :goto_1
    :try_start_2
    sget-boolean v2, Lcom/google/android/location/j/a;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "CollectionPolicyState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/l/c;->a:Lcom/google/android/location/l/b;

    invoke-static {v1}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 285
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 286
    :goto_2
    :try_start_3
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "CollectionPolicyState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/l/c;->a:Lcom/google/android/location/l/b;

    invoke-static {v2}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 287
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 288
    :goto_3
    :try_start_4
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_3

    const-string v1, "CollectionPolicyState"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to save collection policy state."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/l/c;->a:Lcom/google/android/location/l/b;

    invoke-static {v2}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    iget-object v1, p0, Lcom/google/android/location/l/c;->a:Lcom/google/android/location/l/b;

    invoke-static {v2}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 287
    :catch_3
    move-exception v0

    goto :goto_3

    .line 285
    :catch_4
    move-exception v0

    goto :goto_2

    .line 283
    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method
