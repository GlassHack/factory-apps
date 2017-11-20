.class Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11$2;
.super Ljava/lang/Object;
.source "LookAtScreenPracticeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11$2;->this$1:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;

    iput-object p2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11$2;->val$utteranceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11$2;->this$1:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;

    iget-object v0, v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11$2;->val$utteranceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handleInstructionByName(Ljava/lang/String;)V

    .line 421
    return-void
.end method
