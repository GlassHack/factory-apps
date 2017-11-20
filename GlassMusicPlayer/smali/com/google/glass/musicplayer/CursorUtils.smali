.class public Lcom/google/glass/musicplayer/CursorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALBUM_TRACKLIST_PROJECTION:[Ljava/lang/String;

.field public static final ARTIST_ALBUMS_PROJECTION:[Ljava/lang/String;

.field public static final ARTIST_LOCKER_SONGS_PROJECTION:[Ljava/lang/String;

.field public static final ARTIST_TOP_SONGS_PROJECTION:[Ljava/lang/String;

.field public static final DETAIL_ALBUM_ID_TRACKLIST_SECTION_PATH:Ljava/lang/String; = "tracks"

.field public static final DETAIL_ARTIST_ID_ALBUMS_SECTION_PATH:Ljava/lang/String; = "albums"

.field public static final DETAIL_ARTIST_ID_LOCKER_SONGS_SECTION_PATH:Ljava/lang/String; = "lockersongs"

.field public static final DETAIL_ARTIST_ID_TOP_SONGS_SECTION_PATH:Ljava/lang/String; = "topsongs"

.field public static final DETAIL_PLAYLIST_ID_TRACKLIST_SECTION_PATH:Ljava/lang/String; = "tracks"

.field public static final PLAYLIST_TRACKLIST_PROJECTION:[Ljava/lang/String;

.field public static final SEARCH_PROJECTION:[Ljava/lang/String;

.field static final cardComparator:Ljava/util/Comparator;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "parent_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "display_description"

    aput-object v1, v0, v6

    const-string v1, "image_uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "intent_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "music_album"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "music_albumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "music_duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "music_trackArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "music_albumCount"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "music_trackname"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "music_trackCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "music_bestMatchType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/musicplayer/CursorUtils;->SEARCH_PROJECTION:[Ljava/lang/String;

    .line 63
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_subname"

    aput-object v1, v0, v5

    const-string v1, "display_description"

    aput-object v1, v0, v6

    const-string v1, "display_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "item_display_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "user_rating_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_rating"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "action_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "music_album"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "music_albumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "music_duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "music_trackArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "music_albumCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "music_trackname"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "music_trackCount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "music_trackImageUri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/musicplayer/CursorUtils;->ALBUM_TRACKLIST_PROJECTION:[Ljava/lang/String;

    .line 84
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_subname"

    aput-object v1, v0, v5

    const-string v1, "display_description"

    aput-object v1, v0, v6

    const-string v1, "display_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "item_display_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "user_rating_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_rating"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "action_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "music_album"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "music_albumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "music_duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "music_trackArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "music_albumCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "music_trackname"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "music_trackCount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "music_trackImageUri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/musicplayer/CursorUtils;->PLAYLIST_TRACKLIST_PROJECTION:[Ljava/lang/String;

    .line 105
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_subname"

    aput-object v1, v0, v5

    const-string v1, "display_description"

    aput-object v1, v0, v6

    const-string v1, "display_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "item_display_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "user_rating_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_rating"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "action_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "music_album"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "music_albumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "music_duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "music_trackArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "music_albumCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "music_trackname"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "music_trackCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/musicplayer/CursorUtils;->ARTIST_ALBUMS_PROJECTION:[Ljava/lang/String;

    .line 125
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_subname"

    aput-object v1, v0, v5

    const-string v1, "display_description"

    aput-object v1, v0, v6

    const-string v1, "display_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "item_display_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "user_rating_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_rating"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "action_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "music_album"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "music_albumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "music_duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "music_trackArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "music_albumCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "music_trackname"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "music_trackCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/musicplayer/CursorUtils;->ARTIST_TOP_SONGS_PROJECTION:[Ljava/lang/String;

    .line 145
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_subname"

    aput-object v1, v0, v5

    const-string v1, "display_description"

    aput-object v1, v0, v6

    const-string v1, "display_number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "item_display_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "user_rating_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_rating"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "action_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "music_album"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "music_albumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "music_duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "music_trackArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "music_albumCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "music_trackname"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "music_trackCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/musicplayer/CursorUtils;->ARTIST_LOCKER_SONGS_PROJECTION:[Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/google/glass/musicplayer/CursorUtils$1;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/CursorUtils$1;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/CursorUtils;->cardComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCardFromSearchCursor(Landroid/database/Cursor;I)Lcom/google/glass/musicplayer/cards/Card;
    .locals 18

    .prologue
    .line 267
    const-string v1, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 268
    const-string v1, "display_description"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 270
    const-string v1, "image_uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 271
    const-string v1, "intent_uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    const/4 v8, 0x0

    .line 273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 281
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 282
    sget-object v1, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No intent found, skipping this result."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    const/4 v1, 0x0

    .line 325
    :goto_1
    return-object v1

    .line 276
    :catch_0
    move-exception v2

    .line 277
    sget-object v6, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to parse intent URI=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-interface {v6, v2, v7, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 325
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 288
    :pswitch_0
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 289
    const/4 v6, 0x0

    .line 290
    const-string v1, "music_trackCount"

    .line 291
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 292
    if-eqz v2, :cond_2

    .line 293
    new-instance v1, Lcom/google/glass/musicplayer/cards/Album;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/musicplayer/cards/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    goto :goto_1

    .line 299
    :pswitch_1
    const-string v1, "id_string"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 302
    const-string v1, "music_trackArtist"

    .line 303
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 304
    const-string v1, "music_album"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 305
    const-string v1, "music_duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 306
    new-instance v9, Lcom/google/glass/musicplayer/cards/Song;

    move-object v11, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/google/glass/musicplayer/cards/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Intent;)V

    move-object v1, v9

    goto :goto_1

    .line 309
    :pswitch_2
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 310
    const-string v2, "music_albumCount"

    .line 311
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 312
    const-string v2, "music_trackCount"

    .line 313
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 314
    if-eqz v1, :cond_2

    .line 315
    new-instance v2, Lcom/google/glass/musicplayer/cards/Artist;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v2 .. v8}, Lcom/google/glass/musicplayer/cards/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V

    move-object v1, v2

    goto/16 :goto_1

    .line 321
    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/glass/musicplayer/CursorUtils;->extractPlaylistFromCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Playlist;

    move-result-object v1

    goto/16 :goto_1

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method extractCardsFromSearchHeadersCursor(Landroid/database/Cursor;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 199
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/CursorUtils;->extractHeadersFromSearchHeadersCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 205
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->SEARCH_PROJECTION:[Ljava/lang/String;

    move-object v0, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null cursor, skipping this result type."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :goto_1
    return-object v3

    .line 211
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/CursorUtils;->extractFromSearchHeaderItemsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {v1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v2

    sget-object v4, Lcom/google/glass/musicplayer/cards/Card$Type;->ARTIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-eq v2, v4, :cond_1

    invoke-interface {v1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v1

    sget-object v2, Lcom/google/glass/musicplayer/cards/Card$Type;->PLAYLIST:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v1, v2, :cond_0

    .line 221
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 225
    :cond_2
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->cardComparator:Ljava/util/Comparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v3, v6

    .line 227
    goto :goto_1
.end method

.method extractFromDetailAlbumTracklistCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 14

    .prologue
    const/4 v12, 0x1

    .line 382
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 384
    const-string v0, "music_albumArtist"

    .line 385
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 386
    const-string v0, "music_album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 387
    const-string v0, "music_duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 388
    const-string v0, "music_trackImageUri"

    .line 389
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 390
    const-string v0, "action_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    const/4 v8, 0x0

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 394
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v0, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 400
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/glass/musicplayer/cards/Song;

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/musicplayer/cards/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Intent;)V

    return-object v0

    .line 395
    :catch_0
    move-exception v9

    .line 396
    sget-object v10, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Failed to parse intent URI=%s"

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-interface {v10, v9, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method extractFromDetailArtistAlbumsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Album;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 432
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 433
    const-string v0, "music_albumArtist"

    .line 434
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    const-string v0, "music_trackCount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 440
    const-string v0, "image_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 441
    const-string v0, "action_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 445
    const/4 v7, 0x1

    :try_start_0
    invoke-static {v0, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 451
    :goto_0
    new-instance v0, Lcom/google/glass/musicplayer/cards/Album;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/musicplayer/cards/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    return-object v0

    .line 446
    :catch_0
    move-exception v7

    .line 447
    sget-object v8, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed to parse intent URI=%s"

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-interface {v8, v7, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v7, v5

    goto :goto_0
.end method

.method extractFromDetailArtistLockerSongsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 14

    .prologue
    const/4 v12, 0x1

    .line 482
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 483
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    const-string v0, "display_subname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 485
    const-string v0, "music_trackArtist"

    .line 486
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 487
    const-string v0, "music_duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 488
    const-string v0, "image_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 489
    const-string v0, "action_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    const/4 v8, 0x0

    .line 491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 493
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v0, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 499
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/glass/musicplayer/cards/Song;

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/musicplayer/cards/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Intent;)V

    return-object v0

    .line 494
    :catch_0
    move-exception v9

    .line 495
    sget-object v10, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Failed to parse intent URI=%s"

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-interface {v10, v9, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method extractFromDetailArtistTopSongsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 14

    .prologue
    const/4 v12, 0x1

    .line 458
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 460
    const-string v0, "display_subname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 461
    const-string v0, "music_trackArtist"

    .line 462
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 463
    const-string v0, "music_duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 464
    const-string v0, "image_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 465
    const-string v0, "action_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    const/4 v8, 0x0

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 469
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v0, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 475
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/glass/musicplayer/cards/Song;

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/musicplayer/cards/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Intent;)V

    return-object v0

    .line 470
    :catch_0
    move-exception v9

    .line 471
    sget-object v10, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Failed to parse intent URI=%s"

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-interface {v10, v9, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method extractFromDetailPlaylistTracklistCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Song;
    .locals 14

    .prologue
    const/4 v12, 0x1

    .line 407
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 408
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string v0, "music_trackArtist"

    .line 410
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 411
    const-string v0, "music_album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 412
    const-string v0, "music_duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 413
    const-string v0, "music_trackImageUri"

    .line 414
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 415
    const-string v0, "action_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    const/4 v8, 0x0

    .line 417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 419
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v0, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 425
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/glass/musicplayer/cards/Song;

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/musicplayer/cards/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Intent;)V

    return-object v0

    .line 420
    :catch_0
    move-exception v9

    .line 421
    sget-object v10, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Failed to parse intent URI=%s"

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-interface {v10, v9, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method extractFromSearchHeaderItemsCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Card;
    .locals 2

    .prologue
    .line 255
    const-string v0, "parent_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 256
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 257
    const-string v0, "music_bestMatchType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/google/glass/musicplayer/CursorUtils;->getCardFromSearchCursor(Landroid/database/Cursor;I)Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v1

    .line 260
    new-instance v0, Lcom/google/glass/musicplayer/cards/BestMatch;

    invoke-direct {v0, v1}, Lcom/google/glass/musicplayer/cards/BestMatch;-><init>(Lcom/google/glass/musicplayer/cards/Card;)V

    .line 262
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/musicplayer/CursorUtils;->getCardFromSearchCursor(Landroid/database/Cursor;I)Lcom/google/glass/musicplayer/cards/Card;

    move-result-object v0

    goto :goto_0
.end method

.method extractHeadersFromSearchHeadersCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "results_uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 240
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Querying %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    return-object v0
.end method

.method extractPlaylistFromCursor(Landroid/database/Cursor;)Lcom/google/glass/musicplayer/cards/Playlist;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 332
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    const-string v1, "image_uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    const-string v1, "intent_uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 344
    :goto_0
    if-nez v1, :cond_1

    .line 345
    sget-object v1, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No intent found, skipping this result."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :goto_1
    return-object v0

    .line 339
    :catch_0
    move-exception v4

    .line 340
    sget-object v5, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to parse intent URI=%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-interface {v5, v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v1, v0

    goto :goto_0

    .line 349
    :cond_1
    new-instance v0, Lcom/google/glass/musicplayer/cards/Playlist;

    invoke-direct {v0, v2, v3, v8, v1}, Lcom/google/glass/musicplayer/cards/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method extractSeededRadioFromBrowsingCursor(Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/google/glass/musicplayer/cards/Radio;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 357
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 358
    const-string v0, "image_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    const-string v0, "intent_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 369
    :goto_0
    if-nez v6, :cond_1

    .line 370
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No intent found, skipping this result."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    :goto_1
    return-object v3

    .line 364
    :catch_0
    move-exception v1

    .line 365
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to parse intent URI=%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-interface {v2, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v6, v3

    goto :goto_0

    .line 374
    :cond_1
    new-instance v0, Lcom/google/glass/musicplayer/cards/Radio;

    sget-object v2, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->GENERIC_SEEDED:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    move-object v1, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/musicplayer/cards/Radio;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Radio$RadioType;Lcom/google/glass/musicplayer/cards/Card;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    move-object v3, v0

    goto :goto_1
.end method

.method getAlbumTracklistCursor(Lcom/google/glass/musicplayer/cards/Album;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 563
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Album;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    .line 564
    sget-object v1, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "loading album with xdiIntent=%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "tracks"

    .line 569
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 571
    if-nez v1, :cond_0

    .line 572
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "xdi intent cannot have null data"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    :goto_0
    return-object v3

    .line 576
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "resultUri=%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v0, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 579
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->ALBUM_TRACKLIST_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method

.method getArtistAlbumsCursor(Lcom/google/glass/musicplayer/cards/Artist;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 523
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Artist;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 526
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "loading artist albums with xdiIntent=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "albums"

    .line 529
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 531
    if-nez v1, :cond_0

    .line 532
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "xdi intent cannot have null data"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    :goto_0
    return-object v3

    .line 536
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "albumsUri=%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {v0, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 539
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->ARTIST_ALBUMS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method

.method getArtistLockerSongsCursor(Lcom/google/glass/musicplayer/cards/Artist;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 503
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Artist;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 506
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "loading artist locker songs with xdiIntent=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "lockersongs"

    .line 509
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 511
    if-nez v1, :cond_0

    .line 512
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "xdi intent cannot have null data"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    :goto_0
    return-object v3

    .line 516
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "lockerSongsUri=%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {v0, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 519
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->ARTIST_LOCKER_SONGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method

.method getArtistTopSongsCursor(Lcom/google/glass/musicplayer/cards/Artist;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 543
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Artist;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 546
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "loading artist top songs with xdiIntent=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "topsongs"

    .line 549
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 551
    if-nez v1, :cond_0

    .line 552
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "xdi intent cannot have null data"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    :goto_0
    return-object v3

    .line 556
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "topSongsUri=%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {v0, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->ARTIST_TOP_SONGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method

.method getCursorForUri(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 182
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method getPlaylistTracklistCursor(Lcom/google/glass/musicplayer/cards/Playlist;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 583
    invoke-virtual {p1}, Lcom/google/glass/musicplayer/cards/Playlist;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    .line 584
    sget-object v1, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "loading playlist with xdiIntent=%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "tracks"

    .line 590
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 592
    if-nez v1, :cond_0

    .line 593
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "xdi intent cannot have null data"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    :goto_0
    return-object v3

    .line 597
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/CursorUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "resultUri=%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v0, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 599
    sget-object v2, Lcom/google/glass/musicplayer/CursorUtils;->PLAYLIST_TRACKLIST_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method

.method isAcceptedUser(Landroid/content/ContentResolver;)Z
    .locals 1

    .prologue
    .line 192
    invoke-static {p1}, Lcom/google/android/a/a/a;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method isNautilus(Landroid/content/ContentResolver;)Z
    .locals 1

    .prologue
    .line 187
    invoke-static {p1}, Lcom/google/android/a/a/a;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method
