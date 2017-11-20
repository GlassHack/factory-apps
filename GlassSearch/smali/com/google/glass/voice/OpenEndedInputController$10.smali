.class Lcom/google/glass/voice/OpenEndedInputController$10;
.super Ljava/lang/Object;
.source "OpenEndedInputController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/OpenEndedInputController;->initializeViewHierarchy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$4200(Lcom/google/glass/voice/OpenEndedInputController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InputMode;

    invoke-virtual {v0}, Lcom/google/glass/voice/InputMode;->getId()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$1800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$4200(Lcom/google/glass/voice/OpenEndedInputController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InputMode;

    invoke-static {v1, v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$1802(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/InputMode;

    .line 749
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$4300(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 750
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$3700(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 751
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$3300(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v1}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->getStartSound()Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 752
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$10;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v0}, Lcom/google/glass/voice/OpenEndedInputController;->access$4400(Lcom/google/glass/voice/OpenEndedInputController;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
