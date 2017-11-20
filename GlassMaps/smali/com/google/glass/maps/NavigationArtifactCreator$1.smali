.class Lcom/google/glass/maps/NavigationArtifactCreator$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationArtifactCreator;

.field final synthetic val$goToTimelineWhenDone:Z


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationArtifactCreator;Z)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/glass/maps/NavigationArtifactCreator$1;->this$0:Lcom/google/glass/maps/NavigationArtifactCreator;

    iput-boolean p2, p0, Lcom/google/glass/maps/NavigationArtifactCreator$1;->val$goToTimelineWhenDone:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/NavigationArtifactCreator$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator$1;->this$0:Lcom/google/glass/maps/NavigationArtifactCreator;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationArtifactCreator;->access$000(Lcom/google/glass/maps/NavigationArtifactCreator;)V

    .line 130
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator$1;->val$goToTimelineWhenDone:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator$1;->this$0:Lcom/google/glass/maps/NavigationArtifactCreator;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationArtifactCreator;->access$100(Lcom/google/glass/maps/NavigationArtifactCreator;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationArtifactCreator$1;->this$0:Lcom/google/glass/maps/NavigationArtifactCreator;

    invoke-static {v1}, Lcom/google/glass/maps/NavigationArtifactCreator;->access$200(Lcom/google/glass/maps/NavigationArtifactCreator;)Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 133
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
