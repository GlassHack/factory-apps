.class Lcom/google/glass/home/HomeApplication$2;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication;->cleanupOldCacheDir()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;

.field final synthetic val$oldCacheDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    iput-object p2, p0, Lcom/google/glass/home/HomeApplication$2;->val$oldCacheDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 267
    new-instance v8, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v8}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 268
    .local v8, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v8}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 270
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 271
    .local v3, "filesToErase":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 272
    .local v2, "dirsToErase":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    iget-object v9, p0, Lcom/google/glass/home/HomeApplication$2;->val$oldCacheDir:Ljava/io/File;

    invoke-virtual {v3, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v9, p0, Lcom/google/glass/home/HomeApplication$2;->val$oldCacheDir:Ljava/io/File;

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    const-wide/16 v6, 0x0

    .line 276
    .local v6, "spaceRecovered":J
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 277
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 279
    .local v1, "dirent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 280
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 281
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 282
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 286
    .local v4, "spaceConsumed":J
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 287
    add-long/2addr v6, v4

    .line 288
    iget-object v9, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v9}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v9

    const-string v10, "Deleted %s."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v9, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v9}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v9

    const-string v10, "Unable to delete %s: %s will remain."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 291
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 290
    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    .end local v1    # "dirent":Ljava/io/File;
    .end local v4    # "spaceConsumed":J
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 297
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 299
    .restart local v1    # "dirent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 300
    iget-object v9, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v9}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v9

    const-string v10, "Deleted %s."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 302
    :cond_3
    iget-object v9, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v9}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v9

    const-string v10, "Unable to delete %s: %s will remain."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/google/glass/home/HomeApplication$2;->val$oldCacheDir:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 302
    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 307
    .end local v1    # "dirent":Ljava/io/File;
    :cond_4
    invoke-virtual {v8}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 308
    iget-object v9, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v9}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v9

    const-string v10, "Took %dms to erase %s, recovered %d theoretical bytes."

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 309
    invoke-virtual {v8}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/google/glass/home/HomeApplication$2;->val$oldCacheDir:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 310
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 308
    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    return-void
.end method
