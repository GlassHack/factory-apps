.class Lcom/google/glass/lockrecovery/TutorialActivity$2;
.super Ljava/lang/Object;
.source "TutorialActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/lockrecovery/TutorialActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/lockrecovery/TutorialActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/lockrecovery/TutorialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/lockrecovery/TutorialActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/glass/lockrecovery/TutorialActivity$2;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity$2;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/glass/lockrecovery/TutorialActivity;->nextTutorialTip:I

    .line 86
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity$2;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    invoke-static {v0}, Lcom/google/glass/lockrecovery/TutorialActivity;->access$000(Lcom/google/glass/lockrecovery/TutorialActivity;)V

    .line 87
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity$2;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    invoke-static {v0}, Lcom/google/glass/lockrecovery/TutorialActivity;->access$100(Lcom/google/glass/lockrecovery/TutorialActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 88
    return-void
.end method
