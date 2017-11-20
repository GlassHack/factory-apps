.class Lcom/google/glass/widget/VolumeControlDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$3;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$3;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$3;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {v0}, Lcom/google/glass/widget/VolumeControlDialog;->access$500(Lcom/google/glass/widget/VolumeControlDialog;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOLUME_CHANGE:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 105
    :cond_0
    return-void
.end method
