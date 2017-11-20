.class Lcom/google/glass/deferredcontent/DeferredContentLoader$2;
.super Ljava/lang/Object;
.source "DeferredContentLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/deferredcontent/DeferredContentLoader;->postLoadToUiThread(Lcom/google/glass/deferredcontent/LoadingTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader;

.field final synthetic val$task:Lcom/google/glass/deferredcontent/LoadingTask;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/DeferredContentLoader;Lcom/google/glass/deferredcontent/LoadingTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/deferredcontent/DeferredContentLoader;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader$2;->this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iput-object p2, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader$2;->val$task:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader$2;->this$0:Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredContentLoader$2;->val$task:Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 247
    return-void
.end method
