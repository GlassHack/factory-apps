.class public Lcom/google/android/gsf/login/PrepareAccountSetupActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PrepareAccountSetupActivity.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String;


# instance fields
.field private mTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->LOG_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/PrepareAccountSetupActivity;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/PrepareAccountSetupActivity;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/PrepareAccountSetupActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/login/PrepareAccountSetupActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/PrepareAccountSetupActivity;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->mTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->LOG_PREFIX:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 114
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eq v3, p2, :cond_0

    .line 116
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->setResult(I)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->finish()V

    .line 132
    :goto_0
    return-void

    .line 120
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 128
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Unexpected requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->finish()V

    goto :goto_0

    .line 124
    :pswitch_0
    invoke-virtual {p0, v3, p3}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->finish()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x413
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v2, 0x7f030021

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->setContentView(I)V

    .line 37
    const v2, 0x7f070114

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->setTitle(I)V

    .line 38
    const v2, 0x7f080065

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, "msgView":Landroid/widget/TextView;
    const v2, 0x7f070115

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 40
    const v2, 0x7f080022

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    .local v0, "cancelButton":Landroid/widget/Button;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 42
    iget-object v2, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->mTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->mTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 45
    :cond_0
    new-instance v2, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;-><init>(Lcom/google/android/gsf/login/PrepareAccountSetupActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/login/PrepareAccountSetupActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->mTask:Landroid/os/AsyncTask;

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->mTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->mTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/login/PrepareAccountSetupActivity;->mTask:Landroid/os/AsyncTask;

    .line 110
    :cond_0
    return-void
.end method
