.class Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;
.super Landroid/os/Handler;
.source "NotificationCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/NotificationCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/stream/NotificationCollectorService;


# direct methods
.method private constructor <init>(Lcom/google/android/clockwork/stream/NotificationCollectorService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;->this$0:Lcom/google/android/clockwork/stream/NotificationCollectorService;

    .line 257
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/clockwork/stream/NotificationCollectorService;Landroid/os/Looper;Lcom/google/android/clockwork/stream/NotificationCollectorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/clockwork/stream/NotificationCollectorService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/google/android/clockwork/stream/NotificationCollectorService$1;

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;-><init>(Lcom/google/android/clockwork/stream/NotificationCollectorService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;->this$0:Lcom/google/android/clockwork/stream/NotificationCollectorService;

    invoke-static {v2}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->access$100(Lcom/google/android/clockwork/stream/NotificationCollectorService;)Lcom/google/android/clockwork/stream/StreamManager;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v2}, Lcom/google/android/clockwork/stream/StreamManager;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 265
    invoke-static {}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->access$200()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/NotificationCollectorListener;

    .line 266
    .local v1, "listener":Lcom/google/android/clockwork/stream/NotificationCollectorListener;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-interface {v1, v2}, Lcom/google/android/clockwork/stream/NotificationCollectorListener;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/google/android/clockwork/stream/NotificationCollectorListener;
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;->this$0:Lcom/google/android/clockwork/stream/NotificationCollectorService;

    invoke-static {v2}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->access$100(Lcom/google/android/clockwork/stream/NotificationCollectorService;)Lcom/google/android/clockwork/stream/StreamManager;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v2}, Lcom/google/android/clockwork/stream/StreamManager;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 271
    invoke-static {}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->access$200()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/NotificationCollectorListener;

    .line 272
    .restart local v1    # "listener":Lcom/google/android/clockwork/stream/NotificationCollectorListener;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-interface {v1, v2}, Lcom/google/android/clockwork/stream/NotificationCollectorListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_2

    .line 276
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/google/android/clockwork/stream/NotificationCollectorListener;
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;->this$0:Lcom/google/android/clockwork/stream/NotificationCollectorService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->access$300(Lcom/google/android/clockwork/stream/NotificationCollectorService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 279
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;->this$0:Lcom/google/android/clockwork/stream/NotificationCollectorService;

    invoke-static {v2}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->access$400(Lcom/google/android/clockwork/stream/NotificationCollectorService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object v3, p0, Lcom/google/android/clockwork/stream/NotificationCollectorService$ServiceHandler;->this$0:Lcom/google/android/clockwork/stream/NotificationCollectorService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->access$500(Lcom/google/android/clockwork/stream/NotificationCollectorService;[Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
