.class Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "LookAtScreenPracticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5$1;->this$1:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5$1;->this$1:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;

    iget-object v0, v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->setLookAtScreenDetectionEnabled(Landroid/content/Context;Z)Z

    .line 153
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5$1;->this$1:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;

    iget-object v0, v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->finish()V

    .line 154
    return-void
.end method
