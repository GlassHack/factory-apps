.class Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;
.super Lcom/google/glass/entity/MatchEntity;
.source "PhoneCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->onCallerIdChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-direct {p0, p2}, Lcom/google/glass/entity/MatchEntity;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onEntityMatched(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 2
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$300(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)Lcom/google/glass/phone/PhoneCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/phone/PhoneCall;->setCallerId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 226
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$402(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;Lcom/google/glass/entity/MatchEntity;)Lcom/google/glass/entity/MatchEntity;

    .line 228
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->updatePhoneCallUsageInEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 229
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 230
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3$1;-><init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$500(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    .line 238
    return-void
.end method

.method public onNoMatchFound()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method
