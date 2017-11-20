.class Lcom/google/glass/app/GlassError$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassError;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onDismissRunnable:Ljava/lang/Runnable;

.field final synthetic val$soundManager:Lcom/google/glass/sound/SoundManager;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassError;Ljava/lang/Runnable;Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/app/GlassError;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    iput-object p2, p0, Lcom/google/glass/app/GlassError$1;->val$onDismissRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/glass/app/GlassError$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/glass/app/GlassError$1;->val$soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    invoke-static {v0}, Lcom/google/glass/app/GlassError;->access$000(Lcom/google/glass/app/GlassError;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    invoke-static {v0}, Lcom/google/glass/app/GlassError;->access$100(Lcom/google/glass/app/GlassError;)Lcom/google/glass/app/GlassError$OnConfirmAction;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 226
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    invoke-static {v0}, Lcom/google/glass/app/GlassError;->access$100(Lcom/google/glass/app/GlassError;)Lcom/google/glass/app/GlassError$OnConfirmAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    iget-object v1, p0, Lcom/google/glass/app/GlassError$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->runOnConfirmAction(Landroid/content/Context;)V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    invoke-static {v0}, Lcom/google/glass/app/GlassError;->access$000(Lcom/google/glass/app/GlassError;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    invoke-static {v0}, Lcom/google/glass/app/GlassError;->access$000(Lcom/google/glass/app/GlassError;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 232
    :cond_2
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 236
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismissed()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError$1;->onDone()V

    .line 210
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$onDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$onDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->this$0:Lcom/google/glass/app/GlassError;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassError;->shouldFinishWhenDone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/google/glass/app/GlassError$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 220
    :cond_1
    return-void
.end method
