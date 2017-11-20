.class Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "WifiSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/WifiSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V
    .locals 1

    .prologue
    .line 514
    iput-object p1, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    .line 515
    invoke-static {}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$1100()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;Lcom/google/glass/settings/ui/WifiSettingsItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/WifiSettingsItemView;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/WifiSettingsItemView$1;

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$1200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/glass/settings/ui/WifiSettingsItemView$StatusBroadcastReceiver;->this$0:Lcom/google/glass/settings/ui/WifiSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WifiSettingsItemView;->access$000(Lcom/google/glass/settings/ui/WifiSettingsItemView;)V

    .line 521
    return-void
.end method
