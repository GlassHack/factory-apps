.class Lcom/google/glass/tutorial/DismissCardScrollAdapter$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "DismissCardScrollAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/tutorial/DismissCardScrollAdapter;->showConfirmDialog(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/tutorial/TutorialManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/DismissCardScrollAdapter;

.field final synthetic val$tutorialManager:Lcom/google/glass/tutorial/TutorialManager;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/DismissCardScrollAdapter;Lcom/google/glass/tutorial/TutorialManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/DismissCardScrollAdapter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/tutorial/DismissCardScrollAdapter$1;->this$0:Lcom/google/glass/tutorial/DismissCardScrollAdapter;

    iput-object p2, p0, Lcom/google/glass/tutorial/DismissCardScrollAdapter$1;->val$tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/tutorial/DismissCardScrollAdapter$1;->val$tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialManager;->dismissTutorial()V

    .line 75
    return-void
.end method
