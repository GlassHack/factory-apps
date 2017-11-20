.class Lcom/google/glass/voice/menu/VoiceMenu$3;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenu;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;

.field final synthetic val$postSelectionRunnable:Ljava/lang/Runnable;

.field final synthetic val$selectedPrimaryMenuItem:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$selectedPrimaryMenuItem:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$postSelectionRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$selectedPrimaryMenuItem:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$1100(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/widget/TextView;)V

    .line 318
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$500(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$3;->val$selectedPrimaryMenuItem:Landroid/widget/TextView;

    .line 320
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 322
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenu$3$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/menu/VoiceMenu$3$1;-><init>(Lcom/google/glass/voice/menu/VoiceMenu$3;)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 332
    return-void
.end method
