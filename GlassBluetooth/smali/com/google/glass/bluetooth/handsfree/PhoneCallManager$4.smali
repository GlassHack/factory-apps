.class Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$4;
.super Ljava/lang/Object;
.source "PhoneCallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$4;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$4;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    iget-object v0, v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->stateReceiver:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$4;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$100(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 433
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$4;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$200(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)Lcom/google/glass/phone/PhoneCallManagerServiceConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$4;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$100(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/phone/PhoneCallManagerServiceConnection;->unbind(Landroid/content/Context;)V

    .line 434
    return-void
.end method
