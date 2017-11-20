.class public Lcom/google/glass/maps/FatalErrorActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final ERROR_MESSAGE_KEY:Ljava/lang/String; = "errorMessage"

.field private static final HINT_MESSAGE_KEY:Ljava/lang/String; = "hintMessage"

.field private static final NETWORK_ERROR_KEY:Ljava/lang/String; = "isNetworkError"


# instance fields
.field private fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createFatalErrorIntent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/maps/FatalErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 29
    const-string v1, "hintMessage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 30
    const-string v1, "isNetworkError"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/maps/FatalErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "errorMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/maps/FatalErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "hintMessage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 40
    invoke-virtual {p0}, Lcom/google/glass/maps/FatalErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "isNetworkError"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 42
    new-instance v4, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v4, p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 43
    invoke-virtual {v4, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    if-eqz v3, :cond_0

    sget v0, Lcom/google/glass/maps/R$drawable;->ic_cloud_sad_150:I

    .line 45
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/FatalErrorActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/FatalErrorActivity$1;-><init>(Lcom/google/glass/maps/FatalErrorActivity;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/FatalErrorActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    .line 66
    iget-object v0, p0, Lcom/google/glass/maps/FatalErrorActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 67
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getLiveCardHelper()Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/FatalErrorActivity;->fatalErrorDialog:Lcom/google/glass/widget/MessageDialog;

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->setFatalErrorDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 69
    return-void

    .line 44
    :cond_0
    sget v0, Lcom/google/glass/maps/R$drawable;->ic_warning_150:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/glass/maps/FatalErrorActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getLiveCardHelper()Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->setFatalErrorDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 79
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    return-void
.end method
