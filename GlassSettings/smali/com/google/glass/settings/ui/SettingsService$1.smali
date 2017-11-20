.class Lcom/google/glass/settings/ui/SettingsService$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/SettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SettingsService;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsService;Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SettingsService;

    .prologue
    .line 64
    .local p2, "x0":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsService$1;->this$0:Lcom/google/glass/settings/ui/SettingsService;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/google/glass/settings/ui/SettingsService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/settings/ui/SettingsService;->CONNECTIVITY_ACTIONS:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsService$1;->this$0:Lcom/google/glass/settings/ui/SettingsService;

    iget-object v1, v1, Lcom/google/glass/settings/ui/SettingsService;->liveCard:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->updateConnectivity()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget-object v1, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->BATTERY_ACTIONS:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsService$1;->this$0:Lcom/google/glass/settings/ui/SettingsService;

    invoke-static {v1}, Lcom/google/glass/settings/ui/SettingsService;->access$000(Lcom/google/glass/settings/ui/SettingsService;)V

    goto :goto_0

    .line 72
    :cond_2
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsService$1;->this$0:Lcom/google/glass/settings/ui/SettingsService;

    iget-object v1, v1, Lcom/google/glass/settings/ui/SettingsService;->liveCard:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->updateTextViewsText()V

    .line 74
    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsService$1;->this$0:Lcom/google/glass/settings/ui/SettingsService;

    iget-object v1, v1, Lcom/google/glass/settings/ui/SettingsService;->liveCard:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->invalidate()V

    goto :goto_0
.end method
