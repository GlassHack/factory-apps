.class Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/FilteredTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/FilteredTimelineActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/FilteredTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/FilteredTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->access$000(Lcom/google/glass/timeline/ui/FilteredTimelineActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/FilteredTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->access$000(Lcom/google/glass/timeline/ui/FilteredTimelineActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Loader;

    .line 53
    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method
