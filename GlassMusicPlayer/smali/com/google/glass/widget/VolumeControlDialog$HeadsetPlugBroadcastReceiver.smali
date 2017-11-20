.class Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method private constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;)V
    .locals 3

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    .line 302
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;Lcom/google/glass/widget/VolumeControlDialog$1;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;-><init>(Lcom/google/glass/widget/VolumeControlDialog;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lcom/google/glass/widget/VolumeControlDialog;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {v0}, Lcom/google/glass/widget/VolumeControlDialog;->access$400(Lcom/google/glass/widget/VolumeControlDialog;)V

    .line 311
    :cond_0
    return-void
.end method
