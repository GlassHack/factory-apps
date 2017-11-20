.class Lcom/google/glass/home/timeline/MainTimelineActivity$4;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;->createTimelineView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 291
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$300(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Starting %d timeline loaders."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v5}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$300(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$4;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$300(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Loader;

    .line 294
    .local v0, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    goto :goto_0

    .line 297
    .end local v0    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_0
    return-void
.end method
