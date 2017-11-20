.class public Lcom/google/android/gsf/login/GoogleServicesActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "GoogleServicesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAgreeBackup:Z

.field private mAgreePlayEmail:Z

.field private mAgreeRestore:Z

.field private mBackupRestoreCheckBox:Landroid/widget/CheckBox;

.field private mNoBack:Z

.field private mPlayEmailCheckBox:Landroid/widget/CheckBox;

.field private mShowBackup:Z

.field private mShowPlayEmail:Z

.field private mShowRestore:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private getResultData()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, "data":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowBackup:Z

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "agreeBackup"

    iget-boolean v2, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mAgreeBackup:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowRestore:Z

    if-eqz v1, :cond_1

    .line 162
    const-string v1, "agreeRestore"

    iget-boolean v2, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mAgreeRestore:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowPlayEmail:Z

    if-eqz v1, :cond_2

    .line 165
    const-string v1, "agreePlayEmail"

    iget-boolean v2, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mAgreePlayEmail:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    :cond_2
    return-object v0
.end method

.method private setBackup(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mAgreeBackup:Z

    .line 146
    return-void
.end method

.method private setPlayEmail(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mAgreePlayEmail:Z

    .line 154
    return-void
.end method

.method private setRestore(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mAgreeRestore:Z

    .line 150
    return-void
.end method


# virtual methods
.method protected initViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 76
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setContentView(I)V

    .line 80
    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/GoogleServicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, "nextButton":Landroid/view/View;
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/GoogleServicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "backButton":Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 83
    iget-boolean v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mNoBack:Z

    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowBackup:Z

    if-eqz v3, :cond_2

    .line 92
    const v3, 0x7f08002e

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/GoogleServicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mBackupRestoreCheckBox:Landroid/widget/CheckBox;

    .line 93
    iget-object v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mBackupRestoreCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mAgreeBackup:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    iget-object v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mBackupRestoreCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-boolean v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowRestore:Z

    if-nez v3, :cond_0

    .line 98
    const v3, 0x7f08002f

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/GoogleServicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, "backupRestoreTextView":Landroid/widget/TextView;
    const v3, 0x7f070024

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 107
    .end local v1    # "backupRestoreTextView":Landroid/widget/TextView;
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowPlayEmail:Z

    if-eqz v3, :cond_3

    .line 108
    const v3, 0x7f080034

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/GoogleServicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mPlayEmailCheckBox:Landroid/widget/CheckBox;

    .line 109
    iget-object v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mPlayEmailCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mAgreePlayEmail:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    iget-object v3, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mPlayEmailCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    :goto_2
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setBackButton(Landroid/view/View;)V

    goto :goto_0

    .line 103
    :cond_2
    const v3, 0x7f08002a

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/GoogleServicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 112
    :cond_3
    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/GoogleServicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mNoBack:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gsf/login/GoogleServicesActivity;->getResultData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setResult(ILandroid/content/Intent;)V

    .line 121
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    .line 123
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mBackupRestoreCheckBox:Landroid/widget/CheckBox;

    if-ne v0, p1, :cond_1

    .line 135
    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setBackup(Z)V

    .line 136
    iget-boolean v0, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowRestore:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setRestore(Z)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mPlayEmailCheckBox:Landroid/widget/CheckBox;

    if-ne v0, p1, :cond_0

    .line 140
    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setPlayEmail(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gsf/login/GoogleServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "agreeBackup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowBackup:Z

    .line 62
    const-string v1, "agreeRestore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowRestore:Z

    .line 63
    const-string v1, "agreePlayEmail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowPlayEmail:Z

    .line 65
    const-string v1, "agreeBackup"

    iget-boolean v2, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowBackup:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setBackup(Z)V

    .line 66
    const-string v1, "agreeRestore"

    iget-boolean v2, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowRestore:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setRestore(Z)V

    .line 67
    const-string v1, "agreePlayEmail"

    iget-boolean v2, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mShowPlayEmail:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setPlayEmail(Z)V

    .line 70
    const-string v1, "noBack"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/GoogleServicesActivity;->mNoBack:Z

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gsf/login/GoogleServicesActivity;->initViews()V

    .line 73
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 128
    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/android/gsf/login/GoogleServicesActivity;->getResultData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/GoogleServicesActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gsf/login/GoogleServicesActivity;->finish()V

    .line 130
    return-void
.end method
