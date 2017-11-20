.class public Lcom/android/shell/BugreportWarningActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BugreportWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mConfirmRepeat:Landroid/widget/CheckBox;

.field private mSendIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 69
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/shell/BugreportWarningActivity;->mConfirmRepeat:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/android/shell/BugreportPrefs;->setWarningState(Landroid/content/Context;I)V

    .line 72
    iget-object v0, p0, Lcom/android/shell/BugreportWarningActivity;->mSendIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/shell/BugreportWarningActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/shell/BugreportWarningActivity;->finish()V

    .line 76
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/shell/BugreportWarningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/shell/BugreportWarningActivity;->mSendIntent:Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/android/shell/BugreportWarningActivity;->mSendIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 54
    iget-object v0, p0, Lcom/android/shell/BugreportWarningActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 55
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v4, 0x7f020000

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 56
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/shell/BugreportWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 57
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/shell/BugreportWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 58
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x1020001

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/shell/BugreportWarningActivity;->mConfirmRepeat:Landroid/widget/CheckBox;

    .line 62
    iget-object v4, p0, Lcom/android/shell/BugreportWarningActivity;->mConfirmRepeat:Landroid/widget/CheckBox;

    invoke-static {p0, v3}, Lcom/android/shell/BugreportPrefs;->getWarningState(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/shell/BugreportWarningActivity;->setupAlert()V

    .line 65
    return-void

    :cond_0
    move v1, v3

    .line 62
    goto :goto_0
.end method
