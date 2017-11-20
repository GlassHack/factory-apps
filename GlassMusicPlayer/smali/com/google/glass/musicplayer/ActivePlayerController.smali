.class public Lcom/google/glass/musicplayer/ActivePlayerController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARTWORK_JPEG_COMPRESSION_LEVEL:I = 0x50

.field private static final COMPLETED_IDLE_HIDE_TIME_MS:J = 0x493e0L

.field private static final DEFAULT_IDLE_HIDE_TIME_MS:J = 0x1b7740L

.field private static final ERROR_IDLE_HIDE_TIME_MS:J = 0x493e0L

.field private static final ERROR_SHOW_DELAY_MS:J = 0x1f4L

.field private static final MSG_IDLE_TIMEOUT:I = 0x3

.field private static final MSG_RCC_UNREGISTERED:I = 0x4

.field private static final MSG_SHOW_ERROR:I = 0x1

.field private static final MSG_UPDATE_NAUTILUS_STATUS:I = 0x5

.field private static final MSG_UPDATE_PROGRESS:I = 0x2

.field private static final NAUTILUS_STATUS_UPDATE_TIME_MS:J = 0xdbba0L

.field private static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field static final PROGRESS_UPDATE_TIME_MS:J = 0x190L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final UNKNOWN_ERROR:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private artworkByteArray:[B

.field private final audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;

.field private final defaultAlbumString:Ljava/lang/String;

.field private final defaultArtistString:Ljava/lang/String;

.field private final defaultTitleString:Ljava/lang/String;

.field private final displayWidth:I

.field private durationMs:J

.field private flags:I

.field private final handler:Landroid/os/Handler;

.field private final historicTimelineCardManager:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

.field private isLoading:Z

.field private isNautilus:Z

.field private localId:J

.field private final mediaButtonDispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

.field private musicLiveCard:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

.field private final ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

.field private playStartTime:J

.field private playState:I

.field private positionMs:J

.field private rccIntent:Landroid/app/PendingIntent;

.field private rccUnregisteredHideDelayMs:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private showTimelineCard:Z

.field private title:Ljava/lang/String;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/musicplayer/HistoricTimelineCardManager;Landroid/media/AudioManager;Lcom/google/glass/music/MediaButtonDispatcher;Lcom/google/glass/ongoing/OngoingActivityManager;ILcom/google/glass/musicplayer/MusicPlayerLiveCard;)V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->rccUnregisteredHideDelayMs:J

    .line 136
    iput-object p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    .line 137
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 138
    iput-object p2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->historicTimelineCardManager:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    .line 139
    iput-object p3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->audioManager:Landroid/media/AudioManager;

    .line 140
    iput-object p5, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    .line 141
    iput-object p4, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->mediaButtonDispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    .line 142
    iput p6, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->displayWidth:I

    .line 144
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_artist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultArtistString:Ljava/lang/String;

    .line 145
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultTitleString:Ljava/lang/String;

    .line 146
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_album:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultAlbumString:Ljava/lang/String;

    .line 148
    iput-object p7, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->musicLiveCard:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    .line 150
    new-instance v0, Lcom/google/glass/musicplayer/ActivePlayerController$1;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/ActivePlayerController$1;-><init>(Lcom/google/glass/musicplayer/ActivePlayerController;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->showTimelineCard:Z

    .line 184
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->resetNowPlayingData()V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/musicplayer/ActivePlayerController;)Lcom/google/glass/ongoing/OngoingActivityManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/musicplayer/ActivePlayerController;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateProgress()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/musicplayer/ActivePlayerController;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->stopMusicService()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/musicplayer/ActivePlayerController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/musicplayer/ActivePlayerController;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateNautilusStatus()V

    return-void
.end method

.method static synthetic access$602(Lcom/google/glass/musicplayer/ActivePlayerController;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isNautilus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/musicplayer/ActivePlayerController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/musicplayer/ActivePlayerController;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateTimelineCard()V

    return-void
.end method

.method private getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 4

    .prologue
    .line 201
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Compressing bitmap %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    iget v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->displayWidth:I

    invoke-direct {p0, p1, v1}, Lcom/google/glass/musicplayer/ActivePlayerController;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 204
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 205
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private getNowPlayingBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    const-string v1, "playstate"

    iget v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string v1, "position"

    iget-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 249
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 250
    const-string v1, "flags"

    iget v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v1, "loading"

    iget-boolean v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isLoading:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-string v1, "isNautilus"

    iget-boolean v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isNautilus:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->rccIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 255
    const-string v1, "rccIntent"

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->rccIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artworkByteArray:[B

    if-eqz v1, :cond_1

    .line 259
    const-string v1, "artwork"

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artworkByteArray:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    const-string v1, "artist"

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    const-string v1, "title"

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->album:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 271
    const-string v1, "album"

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->album:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_4
    return-object v0
.end method

.method private handleIdleTimeout(I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 392
    sparse-switch p1, :sswitch_data_0

    .line 403
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Playback resumed. Clearing idle timeout messages on handler %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    :goto_0
    return-void

    .line 394
    :sswitch_0
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Encountered error. Starting idle timeout."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 399
    :sswitch_1
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Playback has stopped. Starting idle timeout."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private resetNowPlayingData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultArtistString:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artist:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultAlbumString:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->album:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    .line 235
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->placeholder_song:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 236
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    invoke-direct {p0, v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artworkByteArray:[B

    .line 237
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultTitleString:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    .line 238
    iput-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    .line 239
    iput-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isLoading:Z

    .line 241
    iput-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->localId:J

    .line 242
    return-void
.end method

.method private shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 218
    if-le p2, v0, :cond_0

    .line 219
    sget-object v1, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not shrinking image because newWidth=%d is larger than original width=%d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    .line 219
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :goto_0
    return-object p1

    .line 224
    :cond_0
    sget-object v1, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Shrinking bitmap from width=%d to width=%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    int-to-float v1, p2

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 228
    float-to-int v0, v0

    invoke-static {p1, p2, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private startLoadingAnimation()V
    .locals 3

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isLoading:Z

    .line 307
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "starting loading animator..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateTimelineCard()V

    .line 310
    return-void
.end method

.method private stopLoadingAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isLoading:Z

    if-eqz v0, :cond_0

    .line 314
    iput-boolean v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isLoading:Z

    .line 315
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stop loading animator..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_0
    return-void
.end method

.method private stopMusicService()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.music.action.STOP_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 194
    return-void
.end method

.method private updateNautilusStatus()V
    .locals 2

    .prologue
    .line 631
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 632
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/ActivePlayerController$2;

    invoke-direct {v1, p0}, Lcom/google/glass/musicplayer/ActivePlayerController$2;-><init>(Lcom/google/glass/musicplayer/ActivePlayerController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method private updateProgress()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x190

    .line 612
    iget v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 613
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 615
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    .line 618
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    iget-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 619
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    iput-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    .line 622
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "positionMs=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateTimelineCardProgress()V

    .line 625
    :cond_1
    return-void
.end method

.method private updateTimelineCard()V
    .locals 8

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->getNowPlayingBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 577
    iget-boolean v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->showTimelineCard:Z

    if-eqz v1, :cond_0

    .line 580
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->MPLC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 581
    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->showOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->musicLiveCard:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artworkByteArray:[B

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artist:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    iget-wide v6, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->updateUiElements([BLjava/lang/String;Ljava/lang/String;JJ)V

    .line 585
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->musicLiveCard:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    iget v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->changePlayStatusImage(I)V

    goto :goto_0
.end method

.method private updateTimelineCardProgress()V
    .locals 5

    .prologue
    .line 591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 592
    const-string v1, "position"

    iget-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 593
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 594
    const-string v1, "loading"

    iget-boolean v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isLoading:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 596
    iget-boolean v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->showTimelineCard:Z

    if-eqz v1, :cond_0

    .line 600
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->MPLC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->showOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->musicLiveCard:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    iget-wide v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    iget-wide v3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->updateProgressUi(JJ)V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    .line 649
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->rccIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RccIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    iget v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Playstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playStartTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Play start time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isLoading:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Is loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    iget v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->flags:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->showTimelineCard:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Show Timeline Card:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    const-string v0, "Current Song State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->localId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "\tLocal id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    const-string v1, "\tArtist:"

    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artist:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    const-string v1, "\tAlbum:"

    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->album:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    const-string v1, "\tTrack:"

    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "\tDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "\tPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    return-void

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 659
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 563
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->flags:I

    return v0
.end method

.method public getLocalId()J
    .locals 2

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->localId:J

    return-wide v0
.end method

.method public getNautilusStatus()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->isNautilus:Z

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    return v0
.end method

.method public getRccIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->rccIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultTitleString:Ljava/lang/String;

    .line 558
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleError(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 496
    const-string v0, "errorType"

    const/4 v1, -0x1

    .line 497
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 498
    sget-object v1, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Playback failed, errorType=%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    new-instance v1, Lcom/google/common/a/n;

    invoke-direct {v1}, Lcom/google/common/a/n;-><init>()V

    const/16 v2, 0xc

    .line 500
    invoke-virtual {v1, v2}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v1

    .line 501
    invoke-virtual {v1, v0}, Lcom/google/common/a/n;->i(I)Lcom/google/common/a/n;

    move-result-object v1

    .line 502
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v1

    .line 503
    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v2, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 505
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    .line 506
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    const-string v2, "com.google.glass.music.action.STOP_MUSIC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    const/high16 v3, 0x40000000    # 2.0f

    .line 509
    invoke-static {v2, v6, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 511
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 512
    const-string v3, "errorMessage"

    iget-object v4, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/musicplayer/R$string;->error_playback:I

    .line 513
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 512
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v3, "errorDoneIntent"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 516
    packed-switch v0, :pswitch_data_0

    .line 541
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 544
    return-void

    .line 518
    :pswitch_1
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Device not authorised."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    const-string v0, "errorMessage"

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/musicplayer/R$string;->error_too_many_devices:I

    .line 520
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "secondaryErrorMessage"

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/musicplayer/R$string;->error_too_many_devices_secondary:I

    .line 522
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :pswitch_2
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No concurrent streaming allowed."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    const-string v0, "secondaryErrorMessage"

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/musicplayer/R$string;->error_playback_playing_elsewhere:I

    .line 529
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :pswitch_3
    sget-object v1, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Network error: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    const-string v0, "secondaryErrorMessage"

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/musicplayer/R$string;->error_playback_network_error:I

    .line 537
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public hideTimelineCard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 547
    iput-boolean v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->showTimelineCard:Z

    .line 548
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->hideOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 550
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Music active player card was hidden."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    :cond_0
    return-void
.end method

.method public onPlaybackComplete()V
    .locals 4

    .prologue
    .line 484
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPlaybackComplete. Starting idle timeout."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 486
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    .line 487
    return-void
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->historicTimelineCardManager:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->setArtwork(Landroid/graphics/Bitmap;)V

    .line 427
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/ActivePlayerController;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artworkByteArray:[B

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artworkByteArray:[B

    .line 429
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "same artworkBitmap!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    :goto_0
    return-void

    .line 433
    :cond_0
    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artworkByteArray:[B

    .line 435
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateTimelineCard()V

    goto :goto_0
.end method

.method public declared-synchronized setCurrentClientId(Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;ILandroid/app/PendingIntent;Z)V
    .locals 5

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setCurrentClientId, clientGeneration=%s, shouldClear=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 446
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 445
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    if-nez p3, :cond_0

    .line 451
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "rccIntent received was null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->rccUnregisteredHideDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 455
    :cond_0
    iput-object p3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->rccIntent:Landroid/app/PendingIntent;

    .line 456
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->mediaButtonDispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->rccIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/google/glass/music/MediaButtonDispatcher;->setRccIntent(Landroid/app/PendingIntent;)V

    .line 457
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/glass/hidden/HiddenAudioManager;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/AudioManager;Landroid/media/IRemoteControlDisplay;Z)V

    .line 459
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Requested playback position sync."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    if-eqz p4, :cond_1

    .line 463
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/musicplayer/ActivePlayerController;->setPlaybackState(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :cond_1
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLocalId(J)V
    .locals 1

    .prologue
    .line 475
    iput-wide p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->localId:J

    .line 476
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->historicTimelineCardManager:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->setLocalId(J)V

    .line 477
    return-void
.end method

.method public setMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 6

    .prologue
    .line 411
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultAlbumString:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->album:Ljava/lang/String;

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultArtistString:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artist:Ljava/lang/String;

    .line 413
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->defaultTitleString:Ljava/lang/String;

    :cond_2
    iput-object p3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    .line 414
    iput-wide p4, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    .line 416
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->historicTimelineCardManager:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->album:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artist:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->setMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 418
    iget v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    if-eqz p6, :cond_3

    .line 419
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateTimelineCard()V

    .line 421
    :cond_3
    return-void
.end method

.method public setPlaybackState(IJ)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 338
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setPlaybackState, state=%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    if-ne v0, v7, :cond_0

    if-eq p1, v7, :cond_0

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playStartTime:J

    sub-long/2addr v0, v2

    .line 347
    new-instance v2, Lcom/google/common/a/n;

    invoke-direct {v2}, Lcom/google/common/a/n;-><init>()V

    .line 348
    invoke-virtual {v2, v5}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v2

    .line 349
    invoke-virtual {v2, v5}, Lcom/google/common/a/n;->b(I)Lcom/google/common/a/n;

    move-result-object v2

    .line 350
    invoke-virtual {v2, v0, v1}, Lcom/google/common/a/n;->b(J)Lcom/google/common/a/n;

    move-result-object v2

    .line 351
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v2

    .line 352
    iget-object v3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v3, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 354
    sget-object v2, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "music play time %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_0
    iput p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    .line 359
    iget v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    invoke-direct {p0, v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->handleIdleTimeout(I)V

    .line 361
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 362
    iput-wide p2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    .line 364
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    iget-wide v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 365
    iget-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    iput-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    .line 369
    :cond_1
    iget v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playState:I

    if-ne v0, v9, :cond_2

    .line 370
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->startLoadingAnimation()V

    .line 375
    :goto_0
    if-ne p1, v7, :cond_3

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->playStartTime:J

    .line 377
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateTimelineCard()V

    .line 379
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 380
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 389
    :goto_1
    return-void

    .line 372
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->stopLoadingAnimation()V

    goto :goto_0

    .line 382
    :cond_3
    if-eq p1, v9, :cond_4

    if-ne p1, v6, :cond_5

    .line 384
    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    .line 387
    :cond_5
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateTimelineCard()V

    goto :goto_1
.end method

.method public setRccUnregisteredHideDelayMsForTest(J)V
    .locals 0

    .prologue
    .line 644
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 645
    iput-wide p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->rccUnregisteredHideDelayMs:J

    .line 646
    return-void
.end method

.method public setTransportControlFlags(I)V
    .locals 0

    .prologue
    .line 439
    iput p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->flags:I

    .line 440
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateTimelineCard()V

    .line 441
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public startPlayerUI(Lcom/google/glass/musicplayer/cards/Card;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 284
    sget-object v0, Lcom/google/glass/musicplayer/ActivePlayerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "starting Player UI..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->resetNowPlayingData()V

    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/google/glass/musicplayer/cards/Card;->getAlbumName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->album:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/google/glass/musicplayer/cards/Card;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artist:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/google/glass/musicplayer/cards/Card;->getTopLevelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateNautilusStatus()V

    .line 293
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->startLoadingAnimation()V

    .line 295
    iput-boolean v3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->showTimelineCard:Z

    .line 296
    invoke-direct {p0}, Lcom/google/glass/musicplayer/ActivePlayerController;->updateTimelineCard()V

    .line 298
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->MPLC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v0, v1, v3}, Lcom/google/glass/timeline/active/ActiveItemApi;->goToActiveTimeline(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->musicLiveCard:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artworkByteArray:[B

    iget-object v2, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->artist:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->positionMs:J

    iget-wide v6, p0, Lcom/google/glass/musicplayer/ActivePlayerController;->durationMs:J

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->updateUiElements([BLjava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0
.end method
