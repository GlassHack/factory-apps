.class Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3$1;
.super Ljava/lang/Object;
.source "PhoneCallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;->onEntityMatched(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;

.field final synthetic val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3$1;->this$1:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;

    iput-object p2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3$1;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3$1;->this$1:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;

    iget-object v1, v1, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$100(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$3$1;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/entity/EntityHelper;->updateEntityUsage(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I

    .line 235
    return-void
.end method
