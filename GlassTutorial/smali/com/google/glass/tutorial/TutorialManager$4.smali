.class Lcom/google/glass/tutorial/TutorialManager$4;
.super Landroid/database/DataSetObserver;
.source "TutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/TutorialManager;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/TutorialManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialManager$4;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager$4;->this$0:Lcom/google/glass/tutorial/TutorialManager;

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialManager;->refreshCompletedState()V

    .line 113
    return-void
.end method
