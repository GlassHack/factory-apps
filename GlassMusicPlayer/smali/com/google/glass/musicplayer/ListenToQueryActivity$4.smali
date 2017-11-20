.class Lcom/google/glass/musicplayer/ListenToQueryActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

.field final synthetic val$drawable:I

.field final synthetic val$primaryMessage:I

.field final synthetic val$secondaryMessage:I


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ListenToQueryActivity;III)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    iput p2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->val$primaryMessage:I

    iput p3, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->val$drawable:I

    iput p4, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->val$secondaryMessage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$1000(Lcom/google/glass/musicplayer/ListenToQueryActivity;)V

    .line 500
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$1100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 501
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    iget v2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->val$primaryMessage:I

    .line 502
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->val$drawable:I

    .line 503
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    const/4 v2, 0x1

    .line 504
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->lastGlassError:Lcom/google/glass/app/GlassError;

    .line 505
    iget v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->val$secondaryMessage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    iget-object v0, v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->lastGlassError:Lcom/google/glass/app/GlassError;

    iget v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->val$secondaryMessage:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    iget-object v0, v0, Lcom/google/glass/musicplayer/ListenToQueryActivity;->lastGlassError:Lcom/google/glass/app/GlassError;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$4;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 509
    return-void
.end method
