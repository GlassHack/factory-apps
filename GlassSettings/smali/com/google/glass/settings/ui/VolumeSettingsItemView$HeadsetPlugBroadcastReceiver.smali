.class Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VolumeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/VolumeSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V
    .locals 3

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/VolumeSettingsItemView;Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/VolumeSettingsItemView$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/glass/settings/ui/VolumeSettingsItemView$HeadsetPlugBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/VolumeSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/VolumeSettingsItemView;->access$100(Lcom/google/glass/settings/ui/VolumeSettingsItemView;)V

    .line 177
    :cond_0
    return-void
.end method
