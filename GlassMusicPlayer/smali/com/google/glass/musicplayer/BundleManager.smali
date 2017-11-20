.class public Lcom/google/glass/musicplayer/BundleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CARD_TO_AUTOPLAY_SONG_CACHE_SIZE:I = 0x64

.field private static final CARD_TO_BUNDLE_CACHE_SIZE:I = 0x64

.field private static final MAX_BUNDLE_SIZE:I = 0x64

.field private static final NUM_PREFETCHED_CARDS:I = 0x3

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field protected final cardToAutoplaySongCache:Landroid/util/LruCache;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final cardToBundleCache:Landroid/util/LruCache;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/google/glass/musicplayer/CursorUtils;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/CursorUtils;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/musicplayer/BundleManager;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/CursorUtils;)V

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/glass/musicplayer/CursorUtils;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v1, 0x64

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    .line 82
    new-instance v0, Lcom/google/glass/musicplayer/BundleManager$1;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/musicplayer/BundleManager$1;-><init>(Lcom/google/glass/musicplayer/BundleManager;I)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    .line 105
    new-instance v0, Lcom/google/glass/musicplayer/BundleManager$2;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/musicplayer/BundleManager$2;-><init>(Lcom/google/glass/musicplayer/BundleManager;I)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    .line 127
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/musicplayer/BundleManager;Lcom/google/glass/musicplayer/cards/Card;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->createBundle(Lcom/google/glass/musicplayer/cards/Card;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/musicplayer/BundleManager;Ljava/util/ArrayList;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->getAutoplaySong(Ljava/util/ArrayList;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/musicplayer/BundleManager;Lcom/google/glass/musicplayer/cards/Album;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->getAutoplaySongFromAlbum(Lcom/google/glass/musicplayer/cards/Album;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/musicplayer/BundleManager;Lcom/google/glass/musicplayer/cards/Artist;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->getAutoplaySongFromArtist(Lcom/google/glass/musicplayer/cards/Artist;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/musicplayer/BundleManager;Lcom/google/glass/musicplayer/cards/Playlist;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->getAutoplaySongFromPlaylist(Lcom/google/glass/musicplayer/cards/Playlist;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v0

    return-object v0
.end method

.method private addCardToBundle(Lcom/google/glass/musicplayer/cards/Card;Ljava/util/List;)Z
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 529
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 530
    sget-object v2, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Maximum card bundle size of %d reached. Not adding any more cards to bundle."

    new-array v1, v1, [Ljava/lang/Object;

    .line 531
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 530
    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    :goto_0
    return v0

    .line 534
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 535
    goto :goto_0
.end method

.method private createBundle(Lcom/google/glass/musicplayer/cards/Card;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    .line 215
    :pswitch_0
    check-cast p1, Lcom/google/glass/musicplayer/cards/Artist;

    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->fetchArtistBundle(Lcom/google/glass/musicplayer/cards/Artist;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_1
    check-cast p1, Lcom/google/glass/musicplayer/cards/Album;

    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->fetchAlbumBundle(Lcom/google/glass/musicplayer/cards/Album;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_2
    check-cast p1, Lcom/google/glass/musicplayer/cards/Playlist;

    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->fetchPlaylistBundle(Lcom/google/glass/musicplayer/cards/Playlist;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 221
    :pswitch_3
    check-cast p1, Lcom/google/glass/musicplayer/cards/Category;

    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->fetchCategoryBundle(Lcom/google/glass/musicplayer/cards/Category;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private fetchAlbumBundle(Lcom/google/glass/musicplayer/cards/Album;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v2, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/musicplayer/CursorUtils;->getAlbumTracklistCursor(Lcom/google/glass/musicplayer/cards/Album;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 380
    if-nez v1, :cond_0

    .line 381
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "null result cursor encountered"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :goto_0
    return-object v0

    .line 383
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    sget-object v2, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v5, v1}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 386
    iget-object v2, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v2, v1}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromDetailAlbumTracklistCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v2

    .line 388
    if-nez v2, :cond_1

    .line 389
    sget-object v2, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "null song was extracted from cursor!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 393
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Album;->getArtworkUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/musicplayer/cards/Song;->setAlbumArtUrl(Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/google/glass/musicplayer/cards/Album;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/musicplayer/cards/Song;->setArtistName(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, v2, v0}, Lcom/google/glass/musicplayer/BundleManager;->addCardToBundle(Lcom/google/glass/musicplayer/cards/Card;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private fetchArtistBundle(Lcom/google/glass/musicplayer/cards/Artist;)Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 275
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v0, Lcom/google/glass/musicplayer/cards/Radio;

    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->CARD_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    iget-object v3, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    .line 279
    invoke-virtual {p1, v3}, Lcom/google/glass/musicplayer/cards/Artist;->getTopLevelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Artist;->getArtworkUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/musicplayer/cards/Radio;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Radio$RadioType;Lcom/google/glass/musicplayer/cards/Card;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 281
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/musicplayer/CursorUtils;->getArtistAlbumsCursor(Lcom/google/glass/musicplayer/cards/Artist;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 286
    if-nez v0, :cond_0

    .line 287
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null artist album cursor encountered"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/musicplayer/CursorUtils;->getArtistTopSongsCursor(Lcom/google/glass/musicplayer/cards/Artist;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 302
    if-nez v0, :cond_2

    .line 303
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null artist top songs cursor encountered"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :goto_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/musicplayer/CursorUtils;->getArtistLockerSongsCursor(Lcom/google/glass/musicplayer/cards/Artist;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 319
    if-nez v0, :cond_4

    .line 320
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null artist locker songs cursor encountered"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :goto_2
    return-object v8

    .line 289
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v7, v0}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 291
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v1, v0}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromDetailArtistAlbumsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Album;

    move-result-object v1

    .line 292
    invoke-direct {p0, v1, v8}, Lcom/google/glass/musicplayer/BundleManager;->addCardToBundle(Lcom/google/glass/musicplayer/cards/Card;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 305
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v7, v0}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 308
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v1, v0}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromDetailArtistTopSongsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v1

    .line 309
    invoke-direct {p0, v1, v8}, Lcom/google/glass/musicplayer/BundleManager;->addCardToBundle(Lcom/google/glass/musicplayer/cards/Card;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 322
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 323
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v7, v0}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 325
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v1, v0}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromDetailArtistLockerSongsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v1

    .line 326
    invoke-direct {p0, v1, v8}, Lcom/google/glass/musicplayer/BundleManager;->addCardToBundle(Lcom/google/glass/musicplayer/cards/Card;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 331
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private fetchCategoryBundle(Lcom/google/glass/musicplayer/cards/Category;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 462
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager$4;->$SwitchMap$com$google$glass$musicplayer$cards$Category$CategoryType:[I

    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Category;->getCategoryType()Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    .line 464
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/BundleManager;->fetchPlaylistBrowsingBundle(Lcom/google/glass/musicplayer/cards/Category;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 466
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/musicplayer/BundleManager;->fetchRadioBrowsingBundle(Lcom/google/glass/musicplayer/cards/Category;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 468
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/musicplayer/BundleManager;->fetchRadioBrowsingBundle(Lcom/google/glass/musicplayer/cards/Category;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fetchPlaylistBrowsingBundle(Lcom/google/glass/musicplayer/cards/Category;)Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 475
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 476
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 477
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    .line 478
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Category;->getXdiIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 477
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/musicplayer/CursorUtils;->getCursorForUri(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 480
    if-nez v0, :cond_0

    .line 481
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null result cursor encountered"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :goto_0
    return-object v7

    .line 483
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v8, v0}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 486
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v1, v0}, Lcom/google/glass/musicplayer/CursorUtils;->extractPlaylistFromCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Playlist;

    move-result-object v1

    .line 488
    invoke-direct {p0, v1, v7}, Lcom/google/glass/musicplayer/BundleManager;->addCardToBundle(Lcom/google/glass/musicplayer/cards/Card;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private fetchPlaylistBundle(Lcom/google/glass/musicplayer/cards/Playlist;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v2, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/musicplayer/CursorUtils;->getPlaylistTracklistCursor(Lcom/google/glass/musicplayer/cards/Playlist;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 438
    if-nez v1, :cond_0

    .line 439
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "null result cursor encountered"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :goto_0
    return-object v0

    .line 441
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    sget-object v2, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v3, v1}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 444
    iget-object v2, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v2, v1}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromDetailPlaylistTracklistCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v2

    .line 446
    invoke-direct {p0, v2, v0}, Lcom/google/glass/musicplayer/BundleManager;->addCardToBundle(Lcom/google/glass/musicplayer/cards/Card;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private fetchRadioBrowsingBundle(Lcom/google/glass/musicplayer/cards/Category;Z)Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 500
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 501
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 502
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    .line 503
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Category;->getXdiIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 502
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/musicplayer/CursorUtils;->getCursorForUri(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 505
    if-nez v0, :cond_0

    .line 506
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null result cursor encountered"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :goto_0
    return-object v7

    .line 508
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v8, v0}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 511
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v2, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2, p2}, Lcom/google/glass/musicplayer/CursorUtils;->extractSeededRadioFromBrowsingCursor(Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/google/glass/musicplayer/cards/Radio;

    move-result-object v1

    .line 513
    invoke-direct {p0, v1, v7}, Lcom/google/glass/musicplayer/BundleManager;->addCardToBundle(Lcom/google/glass/musicplayer/cards/Card;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getAutoplaySong(Ljava/util/ArrayList;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Card;

    .line 174
    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v2

    sget-object v3, Lcom/google/glass/musicplayer/cards/Card$Type;->SONG:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v2, v3, :cond_0

    .line 175
    check-cast v0, Lcom/google/glass/musicplayer/cards/Song;

    .line 180
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAutoplaySongFromAlbum(Lcom/google/glass/musicplayer/cards/Album;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 341
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v2, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/musicplayer/CursorUtils;->getAlbumTracklistCursor(Lcom/google/glass/musicplayer/cards/Album;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 343
    if-nez v2, :cond_0

    .line 344
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "null result cursor encountered"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :goto_0
    return-object v0

    .line 347
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v3, v2}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 350
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v1, v2}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromDetailAlbumTracklistCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v1

    .line 351
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 353
    if-nez v1, :cond_1

    .line 354
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "null song was extracted from cursor!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Album;->getArtworkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/glass/musicplayer/cards/Song;->setAlbumArtUrl(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/glass/musicplayer/cards/Album;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/glass/musicplayer/cards/Song;->setArtistName(Ljava/lang/String;)V

    move-object v0, v1

    .line 361
    goto :goto_0

    .line 365
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getAutoplaySongFromArtist(Lcom/google/glass/musicplayer/cards/Artist;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/musicplayer/CursorUtils;->getArtistTopSongsCursor(Lcom/google/glass/musicplayer/cards/Artist;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v3, v1}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 248
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromDetailArtistTopSongsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v0

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 267
    :goto_0
    return-object v0

    .line 252
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/musicplayer/CursorUtils;->getArtistLockerSongsCursor(Lcom/google/glass/musicplayer/cards/Artist;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_3

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v3, v1}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 259
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromDetailArtistLockerSongsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v0

    .line 260
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_3
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not find any top songs or locker songs for artist=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAutoplaySongFromPlaylist(Lcom/google/glass/musicplayer/cards/Playlist;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 413
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    iget-object v2, p0, Lcom/google/glass/musicplayer/BundleManager;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/musicplayer/CursorUtils;->getPlaylistTracklistCursor(Lcom/google/glass/musicplayer/cards/Playlist;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 415
    if-nez v1, :cond_0

    .line 416
    sget-object v1, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "null result cursor encountered"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :goto_0
    return-object v0

    .line 419
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v3, v1}, Lcom/google/glass/musicplayer/LogUtil;->logCursorVerbose(Lcom/google/glass/logging/FormattingLogger;ZLandroid/database/Cursor;)V

    .line 421
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cursorUtils:Lcom/google/glass/musicplayer/CursorUtils;

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromDetailPlaylistTracklistCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;

    move-result-object v0

    .line 422
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 425
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public asyncPrefetchBundles(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 189
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 190
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 191
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/google/glass/musicplayer/BundleManager$3;

    invoke-direct {v2, p0, v1}, Lcom/google/glass/musicplayer/BundleManager$3;-><init>(Lcom/google/glass/musicplayer/BundleManager;Ljava/util/ArrayList;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public clearContentCache()V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 237
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 237
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAutoplaySong(Lcom/google/glass/musicplayer/cards/Card;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 5

    .prologue
    .line 155
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Song cache hits: %s, cache misses: %s, evictions: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    .line 156
    invoke-virtual {v4}, Landroid/util/LruCache;->hitCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->missCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    .line 157
    invoke-virtual {v4}, Landroid/util/LruCache;->evictionCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 155
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->BEST_MATCH:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    check-cast p1, Lcom/google/glass/musicplayer/cards/BestMatch;

    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/BestMatch;->getInnerCard()Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Song;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToAutoplaySongCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Song;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 165
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBundle(Lcom/google/glass/musicplayer/cards/Card;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 134
    sget-object v0, Lcom/google/glass/musicplayer/BundleManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Bundle cache hits: %s, cache misses: %s, evictions: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->hitCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    .line 135
    invoke-virtual {v4}, Landroid/util/LruCache;->missCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->evictionCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 134
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-interface {p1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->BEST_MATCH:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v0, v1, :cond_1

    move-object v0, p1

    .line 138
    check-cast v0, Lcom/google/glass/musicplayer/cards/BestMatch;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/BestMatch;->getInnerCard()Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    check-cast p1, Lcom/google/glass/musicplayer/cards/BestMatch;

    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/BestMatch;->getInnerCard()Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/BundleManager;->cardToBundleCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 147
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
