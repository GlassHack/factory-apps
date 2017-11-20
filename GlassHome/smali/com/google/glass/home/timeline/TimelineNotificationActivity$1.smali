.class Lcom/google/glass/home/timeline/TimelineNotificationActivity$1;
.super Ljava/lang/Object;
.source "TimelineNotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineNotificationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineNotificationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity$1;->this$0:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity$1;->this$0:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->access$000(Lcom/google/glass/home/timeline/TimelineNotificationActivity;)V

    .line 62
    return-void
.end method
