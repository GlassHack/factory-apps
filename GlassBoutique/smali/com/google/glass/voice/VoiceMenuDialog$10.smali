.class Lcom/google/glass/voice/VoiceMenuDialog$10;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMenuDialog;->startAction(Lcom/google/glass/voice/VoiceMenuDialog$MenuState;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;

.field final synthetic val$menuState:Lcom/google/glass/voice/VoiceMenuDialog$MenuState;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;Lcom/google/glass/voice/VoiceMenuDialog$MenuState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$10;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceMenuDialog$10;->val$menuState:Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$10;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1800(Lcom/google/glass/voice/VoiceMenuDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 550
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$10;->val$menuState:Lcom/google/glass/voice/VoiceMenuDialog$MenuState;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getActionController()Lcom/google/glass/voice/ActionController;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController;->startAction()V

    .line 552
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$10;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$700(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog$10;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1900(Lcom/google/glass/voice/VoiceMenuDialog;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 553
    return-void
.end method
