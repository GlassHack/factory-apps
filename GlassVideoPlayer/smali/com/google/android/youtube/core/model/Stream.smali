.class public Lcom/google/android/youtube/core/model/Stream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$Stream$Quality:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final FORMAT_100_OVER_HTTP:I = 0x18

.field public static final FORMAT_101_OVER_HTTP:I = 0x19

.field public static final FORMAT_102_OVER_HTTP:I = 0x1a

.field public static final FORMAT_113_OVER_HTTP:I = 0x10

.field public static final FORMAT_114_OVER_HTTP:I = 0xf

.field public static final FORMAT_119_OVER_HTTP:I = 0x14

.field public static final FORMAT_159_OVER_HTTP:I = 0x20

.field public static final FORMAT_17_OVER_HTTP:I = 0x2

.field public static final FORMAT_180_OVER_HTTP:I = 0x23

.field public static final FORMAT_186_OVER_HTTP:I = 0x22

.field public static final FORMAT_18_OVER_HTTP:I = 0x3

.field public static final FORMAT_193_OVER_HTTP:I = 0x26

.field public static final FORMAT_22_OVER_HTTP:I = 0x8

.field public static final FORMAT_36_OVER_HTTP:I = 0x9

.field public static final FORMAT_37_OVER_HTTP:I = 0x1e

.field public static final FORMAT_62_OVER_HTTP:I = 0xe

.field public static final FORMAT_64_OVER_HTTP:I = 0x1f

.field public static final FORMAT_80_OVER_HTTP:I = 0xb

.field public static final FORMAT_81_OVER_HTTP:I = 0xc

.field public static final FORMAT_82_OVER_HTTP:I = 0x15

.field public static final FORMAT_83_OVER_HTTP:I = 0x16

.field public static final FORMAT_84_OVER_HTTP:I = 0x17

.field public static final FORMAT_88_OVER_HTTP:I = 0xd

.field public static final FORMAT_HLS:I = 0x1c

.field public static final FORMAT_UNKNOWN:I = -0x1

.field private static final STREAMS_3D:Ljava/util/Set;


# instance fields
.field public final gdataFormat:I

.field public final is3D:Z

.field public final isEncrypted:Z

.field public final isOffline:Z

.field public final mimeType:Ljava/lang/String;

.field public final quality:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public final sizeInBytes:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$Stream$Quality()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->$SWITCH_TABLE$com$google$android$youtube$core$model$Stream$Quality:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/youtube/core/model/Stream$Quality;->values()[Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->DOWNLOAD_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_1080P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_1080P_ABR:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P_ABR:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P_ABR:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_HLS:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Lcom/google/android/youtube/core/model/Stream;->$SWITCH_TABLE$com$google$android$youtube$core$model$Stream$Quality:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    .line 382
    new-instance v0, Lcom/google/android/youtube/core/model/i;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/i;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 7

    .prologue
    .line 203
    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;IJ)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V
    .locals 7

    .prologue
    .line 199
    const/4 v3, 0x0

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;IJ)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 195
    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;IJ)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 191
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;IJ)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    .line 180
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 181
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    .line 182
    iput p4, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    .line 183
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/f;->a(Z)V

    .line 184
    iput-wide p5, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    .line 185
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->d(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    .line 186
    const-string v0, "video/wvm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->isEncrypted:Z

    .line 187
    sget-object v0, Lcom/google/android/youtube/core/model/Stream;->STREAMS_3D:Ljava/util/Set;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Stream;->is3D:Z

    .line 188
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    .line 361
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 362
    invoke-static {}, Lcom/google/android/youtube/core/model/Stream$Quality;->values()[Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v2, v0, v2

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;IJ)V

    .line 366
    return-void
.end method

.method public static getFirstAvailableFormat(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream;
    .locals 2

    .prologue
    .line 351
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 351
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 352
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 353
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public static inferQuality(I)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 1

    .prologue
    .line 328
    const/16 v0, 0x438

    if-lt p0, v0, :cond_0

    .line 329
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_1080P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 343
    :goto_0
    return-object v0

    .line 330
    :cond_0
    const/16 v0, 0x2d0

    if-lt p0, v0, :cond_1

    .line 331
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0

    .line 332
    :cond_1
    const/16 v0, 0x1e0

    if-lt p0, v0, :cond_2

    .line 333
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0

    .line 334
    :cond_2
    const/16 v0, 0x195

    if-lt p0, v0, :cond_3

    .line 335
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0

    .line 336
    :cond_3
    const/16 v0, 0x168

    if-lt p0, v0, :cond_4

    .line 337
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0

    .line 338
    :cond_4
    const/16 v0, 0xf0

    if-lt p0, v0, :cond_5

    .line 339
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0

    .line 340
    :cond_5
    const/16 v0, 0x90

    if-lt p0, v0, :cond_6

    .line 341
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0

    .line 343
    :cond_6
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->quality(Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    .line 250
    iget-wide v1, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes(J)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    .line 252
    iget v1, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat(I)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    .line 247
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 221
    if-ne p0, p1, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 224
    :cond_0
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Stream;

    if-nez v0, :cond_1

    .line 225
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_1
    check-cast p1, Lcom/google/android/youtube/core/model/Stream;

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHD()Z
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/google/android/youtube/core/model/Stream;->$SWITCH_TABLE$com$google$android$youtube$core$model$Stream$Quality()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 213
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget v1, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget-wide v1, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget v0, p0, Lcom/google/android/youtube/core/model/Stream;->gdataFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 380
    return-void
.end method
