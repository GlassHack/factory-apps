.class Lcom/google/glass/widget/VolumeControlDialog$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$1;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/google/glass/widget/VolumeControlDialog;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 63
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$1;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/google/glass/widget/VolumeControlDialog;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Cancelling for screen off event."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$1;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->cancel()V

    .line 69
    :cond_0
    return-void
.end method
