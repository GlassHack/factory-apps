.class Lcom/google/glass/notifier/NotificationReceiver$1;
.super Ljava/lang/Object;
.source "NotificationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/notifier/NotificationReceiver;->notify(Lcom/google/glass/notifier/NotificationWrapper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dismiss:Z

.field final synthetic val$notification:Lcom/google/glass/notifier/NotificationWrapper;


# direct methods
.method constructor <init>(Lcom/google/glass/notifier/NotificationReceiver;ZLcom/google/glass/notifier/NotificationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/notifier/NotificationReceiver;

    .prologue
    .line 56
    iput-boolean p2, p0, Lcom/google/glass/notifier/NotificationReceiver$1;->val$dismiss:Z

    iput-object p3, p0, Lcom/google/glass/notifier/NotificationReceiver$1;->val$notification:Lcom/google/glass/notifier/NotificationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;->getInstance()Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/notifier/TimelineNotificationProducer;

    .line 61
    .local v0, "notificationHelper":Lcom/google/glass/notifier/TimelineNotificationProducer;
    iget-boolean v1, p0, Lcom/google/glass/notifier/NotificationReceiver$1;->val$dismiss:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/glass/notifier/NotificationReceiver$1;->val$notification:Lcom/google/glass/notifier/NotificationWrapper;

    invoke-virtual {v0, v1}, Lcom/google/glass/notifier/TimelineNotificationProducer;->deleteItem(Lcom/google/glass/notifier/NotificationWrapper;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/google/glass/notifier/NotificationReceiver$1;->val$notification:Lcom/google/glass/notifier/NotificationWrapper;

    invoke-virtual {v0, v1}, Lcom/google/glass/notifier/TimelineNotificationProducer;->insertOrUpdateItem(Lcom/google/glass/notifier/NotificationWrapper;)V

    goto :goto_0
.end method
