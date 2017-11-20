.class Lcom/google/glass/share/ShareDraftFragment$2;
.super Ljava/lang/Object;
.source "ShareDraftFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 98
    iput-object p1, p0, Lcom/google/glass/share/ShareDraftFragment$2;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$2;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 102
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$2;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 103
    return-void
.end method
