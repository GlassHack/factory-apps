.class Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "MainTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationReceivedBroadcastReceiver"
.end annotation


# instance fields
.field private final notificationReceivedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 3

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    .line 1093
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    .line 1090
    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "notificationReceivedReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;->notificationReceivedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 1094
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/home/timeline/MainTimelineActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;
    .param p2, "x1"    # Lcom/google/glass/home/timeline/MainTimelineActivity$1;

    .prologue
    .line 1088
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;->notificationReceivedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1098
    const-string v0, "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "A notification has been received; updating query parameters."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v0, v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->updateQueryParameters()V

    .line 1105
    :cond_0
    return-void
.end method
