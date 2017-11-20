.class public abstract Lcom/google/glass/settings/ui/SettingsCard;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "SettingsCard.java"


# instance fields
.field private dialog:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private clearDialog()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    .line 81
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;->onAttachedToWindow()V

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsCard;->refreshSettingsUi()V

    .line 51
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;->onDetachedFromWindow()V

    .line 63
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsCard;->clearDialog()V

    .line 64
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 1
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public refreshSettingsUi()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method protected final showDialog(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/google/glass/widget/MessageDialog;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsCard;->clearDialog()V

    .line 69
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    .line 70
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsCard;->dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 71
    return-void
.end method
