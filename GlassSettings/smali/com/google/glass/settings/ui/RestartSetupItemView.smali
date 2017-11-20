.class public Lcom/google/glass/settings/ui/RestartSetupItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "RestartSetupItemView.java"


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "textView":Landroid/widget/TextView;
    const-string v1, "!!Tap to remove account and restart the setup process."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/RestartSetupItemView;->addView(Landroid/view/View;)V

    .line 23
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/ui/RestartSetupItemView;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 24
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/settings/ui/RestartSetupItemView;->authUtils:Lcom/google/glass/auth/AuthUtils;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/glass/auth/AuthUtils;->restartSetupProcess(Z)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method
