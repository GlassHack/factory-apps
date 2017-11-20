.class public Lcom/google/android/gsf/login/PlusActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PlusActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x3ff

    const/16 v4, 0x3fe

    const/16 v3, 0x3fa

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 38
    if-nez p2, :cond_0

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 41
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 46
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_0

    .line 51
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 56
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 62
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 68
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 73
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 80
    :cond_0
    sparse-switch p1, :sswitch_data_1

    .line 162
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_0

    .line 82
    :sswitch_7
    if-ne p2, v0, :cond_1

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x384

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_0

    .line 92
    :sswitch_8
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 93
    const/16 v0, 0x385

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    if-nez v0, :cond_3

    .line 96
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_0

    .line 100
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 106
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_4

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto/16 :goto_0

    .line 117
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mNameActivityCompleted:Z

    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_5

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 122
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto/16 :goto_0

    .line 129
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/loginservice/ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PicassaInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 134
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 140
    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 145
    :sswitch_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ProfileTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x401

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 150
    :sswitch_e
    if-eq p2, v0, :cond_7

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x40a

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 154
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x3f2 -> :sswitch_5
        0x3fa -> :sswitch_2
        0x3fe -> :sswitch_1
        0x3ff -> :sswitch_3
        0x401 -> :sswitch_6
        0x405 -> :sswitch_4
    .end sparse-switch

    .line 80
    :sswitch_data_1
    .sparse-switch
        0x384 -> :sswitch_8
        0x385 -> :sswitch_7
        0x3f2 -> :sswitch_d
        0x3fa -> :sswitch_a
        0x3fe -> :sswitch_9
        0x3ff -> :sswitch_b
        0x401 -> :sswitch_e
        0x405 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x384

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startSessionActivityForResult(Landroid/content/Intent;I)V

    .line 34
    :cond_0
    return-void
.end method
