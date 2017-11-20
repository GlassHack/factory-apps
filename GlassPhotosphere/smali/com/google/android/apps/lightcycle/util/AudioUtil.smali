.class public Lcom/google/android/apps/lightcycle/util/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;

.field private currentlyPlaying:Ljava/lang/String;

.field private player:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/apps/lightcycle/util/AudioUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    .line 33
    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->currentlyPlaying:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->context:Landroid/content/Context;

    .line 37
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->audioManager:Landroid/media/AudioManager;

    .line 39
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 109
    return-void
.end method

.method private requestAudioFocus()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 101
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 113
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/util/AudioUtil;->stop()V

    .line 116
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 8
    .param p1, "assetFileName"    # Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->currentlyPlaying:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track already playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playing audio track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 65
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 67
    .local v7, "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->currentlyPlaying:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v7    # "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v6

    .line 74
    .local v6, "e":Ljava/io/IOException;
    sget-object v0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/util/AudioUtil;->requestAudioFocus()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 88
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->player:Landroid/media/MediaPlayer;

    .line 89
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/util/AudioUtil;->currentlyPlaying:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/util/AudioUtil;->abandonAudioFocus()V

    goto :goto_0
.end method
