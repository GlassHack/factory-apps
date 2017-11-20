.class Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;

.field final synthetic val$temp:Lcom/google/android/glass/timeline/LiveCard;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;Lcom/google/android/glass/timeline/LiveCard;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;

    iput-object p2, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$2;->val$temp:Lcom/google/android/glass/timeline/LiveCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$2;->val$temp:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$2;->val$temp:Lcom/google/android/glass/timeline/LiveCard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setVoiceActionEnabled(Z)Lcom/google/android/glass/timeline/LiveCard;

    .line 105
    :cond_0
    return-void
.end method
