.class Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "DonDoffSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/DonDoffSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DonDoffStateChangeListener"
.end annotation


# instance fields
.field final enableState:Z

.field final synthetic this$0:Lcom/google/glass/settings/ui/DonDoffSettingsItemView;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;Z)V
    .locals 0
    .param p2, "enableState"    # Z

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/settings/ui/DonDoffSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    .line 49
    iput-boolean p2, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    .line 50
    return-void
.end method

.method private getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method


# virtual methods
.method public onDismissed()V
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Turn %s don detection cancelled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onDone()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-static {}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Turn %s don detection confirmed"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->getStateString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const/4 v0, 0x1

    .line 63
    .local v0, "success":Z
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/settings/ui/DonDoffSettingsItemView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    invoke-static {v1, v2}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->setDonDoffDetectionEnabled(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Fail to set don/doff detection status to %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/settings/ui/DonDoffSettingsItemView;

    iget-boolean v2, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    invoke-static {v1, v2}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->access$100(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;Z)V

    .line 69
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/settings/ui/DonDoffSettingsItemView;

    iget-boolean v2, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->enableState:Z

    invoke-static {v1, v2}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->access$200(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;Z)V

    .line 71
    if-nez v0, :cond_1

    .line 72
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffSettingsItemView$DonDoffStateChangeListener;->this$0:Lcom/google/glass/settings/ui/DonDoffSettingsItemView;

    sget v2, Lcom/google/glass/settings/ui/R$string;->don_doff_toggle_failure:I

    invoke-static {v1, v2}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->access$300(Lcom/google/glass/settings/ui/DonDoffSettingsItemView;I)V

    .line 74
    :cond_1
    return-void
.end method
