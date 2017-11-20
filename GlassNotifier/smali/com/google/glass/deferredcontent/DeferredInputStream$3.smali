.class Lcom/google/glass/deferredcontent/DeferredInputStream$3;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "DeferredInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/deferredcontent/DeferredInputStream;->createLoadingTask()Lcom/google/glass/deferredcontent/LoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field volatile failed:Z

.field final synthetic this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/DeferredInputStream;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-direct {p0, p2}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bindContent(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "result"    # Ljava/io/InputStream;

    .prologue
    .line 198
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 199
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$000(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1, p1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$002(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$400(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 215
    iget-boolean v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->failed:Z

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$1000(Lcom/google/glass/deferredcontent/DeferredInputStream;)Lcom/google/glass/deferredcontent/DeferredInputStream$Client;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream$Client;->onContentLoaded()V

    .line 218
    :cond_0
    return-void

    .line 206
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error when closing content."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 147
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->bindContent(Ljava/io/InputStream;)V

    return-void
.end method

.method public cancel(Z)V
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;->cancel(Z)V

    .line 185
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$000(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$600(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$002(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$400(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Ljava/io/InputStream;
    .locals 6
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    const/4 v4, 0x1

    .line 158
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$900(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->failed:Z

    .line 163
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$600(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$1000(Lcom/google/glass/deferredcontent/DeferredInputStream;)Lcom/google/glass/deferredcontent/DeferredInputStream$Client;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream$Client;->load()Ljava/io/InputStream;

    move-result-object v0

    .line 168
    .local v0, "content":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 169
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->failed:Z

    .line 170
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$600(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 174
    .end local v0    # "content":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Error while loading content."

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->this$0:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-static {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->access$600(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/DeferredInputStream$3;->loadContent(Lcom/google/glass/util/Condition;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
