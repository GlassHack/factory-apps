.class Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;
.super Ljava/lang/Object;
.source "GlasswareResourceLoadingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    .prologue
    .line 219
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask.2;"
    iput-object p1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;->this$0:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask.2;"
    const/4 v2, 0x0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;->this$0:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->access$300(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;->this$0:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->access$400(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;->this$0:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->access$500(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)Z

    .line 228
    return-void

    .line 225
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;->this$0:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->access$400(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
