.class Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

.field final synthetic val$errorCompletionIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$3;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    iput-object p2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$3;->val$errorCompletionIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$3;->val$errorCompletionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$3;->val$errorCompletionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    invoke-static {}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to send error completion Intent."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
