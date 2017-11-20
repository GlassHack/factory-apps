.class Lcom/google/glass/home/timeline/active/MusicPlayerView$2;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "MusicPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/MusicPlayerView;->handleError(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

.field final synthetic val$errorCompletionIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/MusicPlayerView;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/active/MusicPlayerView;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$2;->this$0:Lcom/google/glass/home/timeline/active/MusicPlayerView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$2;->val$errorCompletionIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 476
    invoke-static {}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Done!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$2;->val$errorCompletionIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView$2;->val$errorCompletionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-static {}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to send error completion Intent."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
