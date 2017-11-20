.class Lcom/google/glass/musicplayer/ResultsActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ResultsActivity;

.field final synthetic val$error:Lcom/google/glass/app/GlassError;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ResultsActivity;Lcom/google/glass/app/GlassError;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/google/glass/musicplayer/ResultsActivity$8;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    iput-object p2, p0, Lcom/google/glass/musicplayer/ResultsActivity$8;->val$error:Lcom/google/glass/app/GlassError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$8;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ResultsActivity;->access$1500(Lcom/google/glass/musicplayer/ResultsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 752
    iget-object v0, p0, Lcom/google/glass/musicplayer/ResultsActivity$8;->val$error:Lcom/google/glass/app/GlassError;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ResultsActivity$8;->this$0:Lcom/google/glass/musicplayer/ResultsActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 753
    return-void
.end method
