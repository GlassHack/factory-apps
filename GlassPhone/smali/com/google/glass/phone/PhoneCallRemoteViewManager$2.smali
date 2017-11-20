.class Lcom/google/glass/phone/PhoneCallRemoteViewManager$2;
.super Ljava/lang/Object;
.source "PhoneCallRemoteViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallRemoteViewManager;->unregisterStateChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$2;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$2;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$200(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$2;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$100(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 150
    return-void
.end method
