.class Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;

.field final synthetic val$paused:Z


# direct methods
.method constructor <init>(Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;Z)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$1;->this$0:Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;

    iput-boolean p2, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$1;->val$paused:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$1;->val$paused:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$1;->this$0:Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->onPause()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$1;->this$0:Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->onResume()V

    goto :goto_0
.end method
