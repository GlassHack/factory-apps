.class public Lcom/google/glass/babel/AudioMessageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AUDIO_TRACK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 43
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, -0x10

    const-string v2, "AudioMessageExecutor"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/babel/AudioMessageHelper;->AUDIO_TRACK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/time/Clock;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/glass/babel/AudioMessageHelper;->clock:Lcom/google/glass/time/Clock;

    .line 51
    iput-object p2, p0, Lcom/google/glass/babel/AudioMessageHelper;->context:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 277
    const-string v0, "%s_%s.wav"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/babel/AudioMessageHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private playBytes([B)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    if-nez p1, :cond_0

    .line 161
    sget-object v0, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No audio bytes to play"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :goto_0
    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Playing audio from raw bytes [numBytes=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    sget-object v0, Lcom/google/glass/babel/AudioMessageHelper;->AUDIO_TRACK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/babel/AudioMessageHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/babel/AudioMessageHelper$1;-><init>(Lcom/google/glass/babel/AudioMessageHelper;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private saveClip([BLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 253
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 255
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 256
    :cond_0
    sget-object v1, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to save null or empty audio clip."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :goto_0
    return-object v0

    .line 261
    :cond_1
    new-instance v1, Lcom/google/glass/babel/WaveFileWrapper;

    invoke-direct {v1}, Lcom/google/glass/babel/WaveFileWrapper;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/glass/babel/WaveFileWrapper;->wrap([B)[B

    move-result-object v1

    .line 263
    sget-object v2, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Saving audio clip [fileName=%s, numBytes=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v7

    const/4 v5, 0x1

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    .line 265
    sget-object v3, Lcom/google/glass/util/FileType;->AUDIO:Lcom/google/glass/util/FileType;

    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v1

    invoke-virtual {v2, v3, p2, v1}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    sget-object v0, Lcom/google/glass/util/FileType;->AUDIO:Lcom/google/glass/util/FileType;

    invoke-virtual {v2, v0, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_2
    sget-object v1, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to save audio clip."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private streamAudio(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    sget-object v2, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Streaming audio message."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/google/glass/android/media/MediaPlayerProvider;->getInstance()Lcom/google/glass/android/media/MediaPlayerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/android/media/MediaPlayerProvider;->get()Landroid/media/MediaPlayer;

    move-result-object v3

    .line 184
    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 185
    new-instance v2, Lcom/google/glass/babel/AudioMessageHelper$2;

    invoke-direct {v2, p0}, Lcom/google/glass/babel/AudioMessageHelper$2;-><init>(Lcom/google/glass/babel/AudioMessageHelper;)V

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 193
    new-instance v2, Lcom/google/glass/babel/AudioMessageHelper$3;

    invoke-direct {v2, p0}, Lcom/google/glass/babel/AudioMessageHelper$3;-><init>(Lcom/google/glass/babel/AudioMessageHelper;)V

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 200
    new-instance v2, Lcom/google/glass/babel/AudioMessageHelper$4;

    invoke-direct {v2, p0}, Lcom/google/glass/babel/AudioMessageHelper$4;-><init>(Lcom/google/glass/babel/AudioMessageHelper;)V

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 207
    new-instance v2, Lcom/google/glass/babel/AudioMessageHelper$5;

    invoke-direct {v2, p0}, Lcom/google/glass/babel/AudioMessageHelper$5;-><init>(Lcom/google/glass/babel/AudioMessageHelper;)V

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 216
    :try_start_0
    sget-object v2, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Setting MediaPlayer data source [source=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return v0

    .line 220
    :catch_0
    move-exception v2

    .line 221
    sget-object v4, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to set media player data source [streamingUrl=%s]"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-interface {v4, v2, v5, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    move v0, v1

    .line 224
    goto :goto_0
.end method


# virtual methods
.method public attachAudioToTimelineItem([BLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 63
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->HAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/google/glass/babel/AudioMessageHelper;->saveAudioAndCreateAttachment([BLjava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to save audio clip, skipping timeline item attachment."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    goto :goto_0
.end method

.method public getAudioAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 79
    const-string v0, "audio/wav"

    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public getStreamingUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const/16 v0, 0x19

    .line 87
    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getFirstMenuItemWithActionOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playAudio(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v4}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 109
    if-nez v0, :cond_1

    .line 111
    sget-object v0, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Bad audio attachment with invalid client cache path."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_0
    if-eqz p2, :cond_2

    .line 121
    invoke-direct {p0, p2}, Lcom/google/glass/babel/AudioMessageHelper;->streamAudio(Ljava/lang/String;)Z

    move-result v0

    .line 132
    :goto_0
    return v0

    .line 113
    :cond_1
    sget-object v3, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Playing back client cached audio message."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/google/glass/babel/AudioMessageHelper;->playBytes([B)V

    move v0, v1

    .line 115
    goto :goto_0

    .line 126
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 128
    goto :goto_0

    .line 131
    :cond_3
    sget-object v0, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Malformed audio attachment or menu item [timelineItemId=%s]."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 132
    goto :goto_0
.end method

.method public playAudioForTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 141
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->HAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/babel/AudioMessageHelper;->getAudioAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v1

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/glass/babel/AudioMessageHelper;->getStreamingUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v2

    .line 148
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 149
    sget-object v1, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Timeline item does not have an audio attachment or menu item to play."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/glass/babel/AudioMessageHelper;->playAudio(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public saveAudioAndCreateAttachment([BLjava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/babel/AudioMessageHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    .line 235
    invoke-direct {p0, p2}, Lcom/google/glass/babel/AudioMessageHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/glass/babel/AudioMessageHelper;->saveClip([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    if-nez v1, :cond_0

    .line 237
    sget-object v0, Lcom/google/glass/babel/AudioMessageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to save audio clip, skipping audio attachment."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 241
    invoke-virtual {v2, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v1

    const-string v2, "audio/wav"

    .line 242
    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v1

    .line 243
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->getLocalTimelineItemSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    goto :goto_0
.end method
