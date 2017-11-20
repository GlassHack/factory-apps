.class final Lcom/google/android/location/collectionlib/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/i;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/i;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 238
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->b(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    const-string v1, "Nothing to upload"

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->d(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/collectionlib/ab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->e(Lcom/google/android/location/collectionlib/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/collectionlib/k;

    invoke-direct {v1, p0}, Lcom/google/android/location/collectionlib/k;-><init>(Lcom/google/android/location/collectionlib/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->c(Lcom/google/android/location/collectionlib/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->f(Lcom/google/android/location/collectionlib/i;)Z

    .line 250
    :cond_2
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    new-instance v3, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 179
    if-nez v4, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to list files in directory:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 184
    :cond_0
    array-length v2, v4

    if-nez v2, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/j;->a()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Lcom/google/android/location/collectionlib/bw;->a()Lcom/google/android/location/collectionlib/bw;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/location/collectionlib/bw;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is locked."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cj;->a(Ljava/lang/String;)Lcom/google/android/location/collectionlib/cj;

    move-result-object v5

    .line 198
    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/cj;->a()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/cj;->b()I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    .line 200
    :goto_1
    sget-boolean v6, Lcom/google/android/location/j/a;->b:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v6}, Lcom/google/android/location/collectionlib/i;->b(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/p/a/c;

    move-result-object v6

    const-string v7, "forceUpload: %s, hasUsefulData: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/cj;->c()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 202
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/location/collectionlib/cj;->c()Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v2, :cond_7

    .line 204
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->b(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not uploading session since missing required data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->c(Lcom/google/android/location/collectionlib/i;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0, v3}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;Ljava/io/File;)Z

    .line 208
    :cond_5
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/j;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    iget-object v1, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load SessionSummary: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v2, v1

    .line 198
    goto :goto_1

    .line 216
    :cond_7
    iget-object v2, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v2, v4}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;[Ljava/lang/String;)Lcom/google/android/location/collectionlib/n;

    move-result-object v2

    .line 217
    iget-object v3, v2, Lcom/google/android/location/collectionlib/n;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 218
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/j;->a()V

    goto/16 :goto_0

    .line 221
    :cond_8
    iget-object v3, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    iget-object v4, v2, Lcom/google/android/location/collectionlib/n;->b:Ljava/lang/String;

    if-eqz v4, :cond_9

    :goto_2
    invoke-static {v3, v0}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;Z)Z

    .line 222
    invoke-static {}, Lcom/google/android/location/collectionlib/bw;->a()Lcom/google/android/location/collectionlib/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/bw;->a(Ljava/lang/String;)Z

    move-result v0

    .line 223
    if-nez v0, :cond_a

    .line 224
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    const-string v1, "Failed to lock working directory."

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 221
    goto :goto_2

    .line 228
    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0, v2}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;Lcom/google/android/location/collectionlib/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    invoke-static {}, Lcom/google/android/location/collectionlib/bw;->a()Lcom/google/android/location/collectionlib/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/bw;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/location/collectionlib/bw;->a()Lcom/google/android/location/collectionlib/bw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/i;->a(Lcom/google/android/location/collectionlib/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/collectionlib/bw;->b(Ljava/lang/String;)V

    throw v0
.end method
