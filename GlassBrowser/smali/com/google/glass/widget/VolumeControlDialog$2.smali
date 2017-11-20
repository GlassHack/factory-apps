.class Lcom/google/glass/widget/VolumeControlDialog$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VolumeControlDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/VolumeControlDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/VolumeControlDialog;
    .param p2, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$2;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/google/glass/widget/VolumeControlDialog;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    if-nez p2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v0, "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$2;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    const-string v1, "call_state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->access$302(Lcom/google/glass/widget/VolumeControlDialog;Z)Z

    .line 88
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$2;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {v0}, Lcom/google/glass/widget/VolumeControlDialog;->access$400(Lcom/google/glass/widget/VolumeControlDialog;)V

    goto :goto_0
.end method
