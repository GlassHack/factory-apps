.class Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;
.super Ljava/lang/Object;
.source "LookAtScreenPracticeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->onSecondLookAtScreenFailure()V

    .line 139
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    iget-object v3, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-virtual {v3}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v2, Lcom/google/glass/settings/ui/R$string;->look_at_screen_calibration_failure_label:I

    .line 140
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->look_at_screen_calibration_failure_message:I

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_warning_150:I

    .line 142
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 143
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 144
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 145
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5$1;

    invoke-direct {v2, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5$1;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;)V

    .line 146
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 156
    return-void
.end method
