.class Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;
.super Ljava/lang/Object;
.source "FilteredTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/FilteredTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/FilteredTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/FilteredTimelineActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/FilteredTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/FilteredTimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->access$000(Lcom/google/glass/timeline/ui/FilteredTimelineActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/FilteredTimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->access$000(Lcom/google/glass/timeline/ui/FilteredTimelineActivity;)Ljava/util/List;

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

    .line 53
    .local v0, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    goto :goto_0

    .line 56
    .end local v0    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_0
    return-void
.end method
