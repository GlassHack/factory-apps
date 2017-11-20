.class Lcom/google/glass/share/ShareDraftFragment$3;
.super Ljava/lang/Object;
.source "ShareDraftFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareDraftFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareDraftFragment;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareDraftFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/share/ShareDraftFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/share/ShareDraftFragment$3;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$3;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/share/ShareDraftFragment$3;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    .line 112
    invoke-virtual {v1}, Lcom/google/glass/share/ShareDraftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/google/glass/sync/R$anim;->contextual_enter:I

    invoke-static {v1, v2}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 113
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    return-void
.end method
