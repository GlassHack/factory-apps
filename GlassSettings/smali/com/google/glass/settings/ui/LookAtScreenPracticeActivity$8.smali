.class Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$8;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "LookAtScreenPracticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->onShowConfirmationDialog()V
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
    .line 317
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$8;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 321
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$8;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$400(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;Z)V

    .line 323
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$8;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->setLookAtScreenDetectionEnabled(Landroid/content/Context;Z)Z

    .line 327
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$8;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->finish()V

    .line 328
    return-void
.end method
