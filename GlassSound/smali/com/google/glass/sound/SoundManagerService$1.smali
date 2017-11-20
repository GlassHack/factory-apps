.class Lcom/google/glass/sound/SoundManagerService$1;
.super Lcom/google/glass/sound/ISoundManagerService$Stub;
.source "SoundManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/SoundManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sound/SoundManagerService;


# direct methods
.method constructor <init>(Lcom/google/glass/sound/SoundManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sound/SoundManagerService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/glass/sound/SoundManagerService$1;->this$0:Lcom/google/glass/sound/SoundManagerService;

    invoke-direct {p0}, Lcom/google/glass/sound/ISoundManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isMuted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService$1;->this$0:Lcom/google/glass/sound/SoundManagerService;

    invoke-static {v0}, Lcom/google/glass/sound/SoundManagerService;->access$000(Lcom/google/glass/sound/SoundManagerService;)Z

    move-result v0

    return v0
.end method

.method public playSound(Ljava/lang/String;)I
    .locals 5
    .param p1, "soundIdName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/glass/sound/SoundManagerService$1;->this$0:Lcom/google/glass/sound/SoundManagerService;

    invoke-static {v1}, Lcom/google/glass/sound/SoundManagerService;->access$000(Lcom/google/glass/sound/SoundManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lcom/google/glass/sound/SoundManagerService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Muted, not playing sound: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 v1, -0x1

    .line 78
    :goto_0
    return v1

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/google/glass/sound/SoundManager$SoundId;->valueOf(Ljava/lang/String;)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v0

    .line 78
    .local v0, "soundId":Lcom/google/glass/sound/SoundManager$SoundId;
    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManager$SoundId;->isPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/sound/SoundManagerService$1;->this$0:Lcom/google/glass/sound/SoundManagerService;

    invoke-static {v1, v0}, Lcom/google/glass/sound/SoundManagerService;->access$200(Lcom/google/glass/sound/SoundManagerService;Lcom/google/glass/sound/SoundManager$SoundId;)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/sound/SoundManagerService$1;->this$0:Lcom/google/glass/sound/SoundManagerService;

    invoke-static {v1, v0}, Lcom/google/glass/sound/SoundManagerService;->access$300(Lcom/google/glass/sound/SoundManagerService;Lcom/google/glass/sound/SoundManager$SoundId;)I

    move-result v1

    goto :goto_0
.end method

.method public playSoundAsync(Ljava/lang/String;)V
    .locals 0
    .param p1, "soundIdName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/glass/sound/SoundManagerService$1;->playSound(Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public setMuted(Z)V
    .locals 1
    .param p1, "isMuted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService$1;->this$0:Lcom/google/glass/sound/SoundManagerService;

    invoke-static {v0, p1}, Lcom/google/glass/sound/SoundManagerService;->access$002(Lcom/google/glass/sound/SoundManagerService;Z)Z

    .line 57
    return-void
.end method

.method public stopSound(I)V
    .locals 1
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService$1;->this$0:Lcom/google/glass/sound/SoundManagerService;

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerService;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 52
    return-void
.end method
