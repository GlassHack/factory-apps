.class Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$2;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$2;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 364
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$2;->onDone()V

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$2;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->access$400(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V

    .line 359
    return-void
.end method
