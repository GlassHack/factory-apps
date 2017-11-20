.class public Lcom/google/glass/musicplayer/cards/Radio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/musicplayer/cards/Card;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final EXTRA_RADIO_ART_URI:Ljava/lang/String; = "art_uri"

.field private static final EXTRA_RADIO_NAME:Ljava/lang/String; = "name"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final artworkUrl:Ljava/lang/String;

.field private isNautilus:Z

.field private final radioName:Ljava/lang/String;

.field private final radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

.field private final seedCard:Lcom/google/glass/musicplayer/cards/Card;

.field private final xdiIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/cards/Radio;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 39
    new-instance v0, Lcom/google/glass/musicplayer/cards/Radio$1;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/cards/Radio$1;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Radio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Radio$RadioType;Lcom/google/glass/musicplayer/cards/Card;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 5

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    .line 202
    iput-object p3, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    .line 203
    iput-object p4, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioName:Ljava/lang/String;

    .line 204
    iput-object p5, p0, Lcom/google/glass/musicplayer/cards/Radio;->artworkUrl:Ljava/lang/String;

    .line 205
    iput-boolean p7, p0, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    .line 207
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio$2;->$SwitchMap$com$google$glass$musicplayer$cards$Radio$RadioType:[I

    invoke-virtual {p2}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 216
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unrecognized radio type = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    .line 220
    :goto_0
    return-void

    .line 209
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/google/glass/musicplayer/cards/Radio;->createXdiIntentForSeededRadio(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Card;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    goto :goto_0

    .line 213
    :pswitch_1
    iput-object p6, p0, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const-class v0, Lcom/google/glass/musicplayer/cards/Card;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Card;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    .line 183
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->valueOf(Ljava/lang/String;)Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioName:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->artworkUrl:Ljava/lang/String;

    .line 187
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    .line 188
    return-void
.end method

.method private createXdiIntentForSeededRadio(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Card;)Landroid/content/Intent;
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x0

    .line 251
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/glass/musicplayer/cards/Card;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 299
    :goto_0
    return-object v0

    .line 255
    :cond_1
    invoke-interface {p2}, Lcom/google/glass/musicplayer/cards/Card;->getXdiIntent()Landroid/content/Intent;

    move-result-object v2

    .line 259
    invoke-interface {p2, p1}, Lcom/google/glass/musicplayer/cards/Card;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-interface {p2}, Lcom/google/glass/musicplayer/cards/Card;->getArtworkUrl()Ljava/lang/String;

    move-result-object v4

    .line 261
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio$2;->$SwitchMap$com$google$glass$musicplayer$cards$Card$Type:[I

    invoke-interface {p2}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/musicplayer/cards/Card$Type;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 289
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "unrecognized type %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p2}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 290
    goto :goto_0

    .line 263
    :pswitch_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 264
    goto :goto_0

    .line 266
    :cond_2
    const/16 v1, 0x12

    .line 267
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.android.music.xdi.intent.PLAY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v5, "container"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v1, "id_string"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v0, "name"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v0, "art_uri"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v2

    .line 299
    goto :goto_0

    .line 270
    :pswitch_1
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_3
    const/16 v1, 0x13

    .line 274
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 277
    :pswitch_2
    const-string v0, "id_string"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-nez v0, :cond_5

    .line 279
    const-string v0, "id"

    invoke-virtual {v2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 280
    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    move-object v0, v1

    .line 281
    goto/16 :goto_0

    .line 283
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_5
    const/16 v1, 0x14

    .line 287
    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getXdiIntentHashCode(Landroid/content/Intent;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 323
    if-nez p1, :cond_0

    .line 324
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 336
    :goto_0
    return v0

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 328
    if-nez v0, :cond_1

    .line 329
    invoke-virtual {p1}, Landroid/content/Intent;->filterHashCode()I

    move-result v0

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->filterHashCode()I

    move-result v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "container"

    .line 333
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "id_string"

    .line 334
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "name"

    .line 335
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "art_uri"

    .line 336
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private isXdiIntentEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    .line 358
    goto :goto_0

    .line 359
    :cond_3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 360
    goto :goto_0

    .line 362
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 365
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 367
    if-eqz v2, :cond_5

    if-nez v3, :cond_6

    :cond_5
    move v0, v1

    .line 368
    goto :goto_0

    .line 371
    :cond_6
    const-string v4, "container"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "container"

    .line 372
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_7

    move v0, v1

    .line 373
    goto :goto_0

    .line 374
    :cond_7
    const-string v4, "id_string"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id_string"

    .line 375
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 374
    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v1

    .line 376
    goto :goto_0

    .line 377
    :cond_8
    const-string v4, "name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    .line 378
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    move v0, v1

    .line 379
    goto :goto_0

    .line 380
    :cond_9
    const-string v4, "art_uri"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "art_uri"

    .line 381
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 382
    goto :goto_0
.end method


# virtual methods
.method public createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/google/glass/musicplayer/cards/RadioCardView;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/musicplayer/cards/RadioCardView;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Radio;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 341
    instance-of v1, p1, Lcom/google/glass/musicplayer/cards/Radio;

    if-eqz v1, :cond_0

    .line 342
    check-cast p1, Lcom/google/glass/musicplayer/cards/Radio;

    .line 343
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    .line 344
    invoke-direct {p0, v1, v2}, Lcom/google/glass/musicplayer/cards/Radio;->isXdiIntentEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    .line 345
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Radio;->radioName:Ljava/lang/String;

    .line 346
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->artworkUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Radio;->artworkUrl:Ljava/lang/String;

    .line 347
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    .line 348
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 351
    :cond_0
    return v0
.end method

.method public getAlbumName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio$2;->$SwitchMap$com$google$glass$musicplayer$cards$Radio$RadioType:[I

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    sget v0, Lcom/google/glass/musicplayer/R$string;->radio:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/musicplayer/cards/Card;->getAlbumName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getArtistName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio$2;->$SwitchMap$com$google$glass$musicplayer$cards$Radio$RadioType:[I

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    sget v0, Lcom/google/glass/musicplayer/R$string;->radio:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/musicplayer/cards/Card;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    if-eqz v0, :cond_0

    .line 127
    sget v0, Lcom/google/glass/musicplayer/R$string;->radio:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    sget v0, Lcom/google/glass/musicplayer/R$string;->instant_mix:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getArtworkUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio$2;->$SwitchMap$com$google$glass$musicplayer$cards$Radio$RadioType:[I

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->getArtworkUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->artworkUrl:Ljava/lang/String;

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getAutoplayPriority()I
    .locals 3

    .prologue
    const/16 v2, 0x63

    .line 81
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio$2;->$SwitchMap$com$google$glass$musicplayer$cards$Radio$RadioType:[I

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return v2

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/musicplayer/cards/Card$Type;->SONG:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getRadioType()Lcom/google/glass/musicplayer/cards/Radio$RadioType;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    return-object v0
.end method

.method public getResultPriority()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x4

    return v0
.end method

.method public getSeedCard()Lcom/google/glass/musicplayer/cards/Card;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    return-object v0
.end method

.method public getTopLevelString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/google/glass/musicplayer/cards/Radio$2;->$SwitchMap$com$google$glass$musicplayer$cards$Radio$RadioType:[I

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/musicplayer/cards/Card;->getTopLevelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioName:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getType()Lcom/google/glass/musicplayer/cards/Card$Type;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->RADIO:Lcom/google/glass/musicplayer/cards/Card$Type;

    return-object v0
.end method

.method public getXdiIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 304
    const/16 v2, 0x1f

    .line 305
    const/4 v1, 0x6

    new-array v3, v1, [I

    .line 307
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v0

    .line 308
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/google/glass/musicplayer/cards/Radio;->getXdiIntentHashCode(Landroid/content/Intent;)I

    move-result v1

    aput v1, v3, v6

    .line 309
    const/4 v1, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 310
    const/4 v1, 0x3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 311
    const/4 v1, 0x4

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Radio;->artworkUrl:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 312
    const/4 v1, 0x5

    new-array v4, v6, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 315
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 316
    mul-int/2addr v1, v2

    add-int/2addr v1, v5

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return v1
.end method

.method public isBundle()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isNautilus()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    return v0
.end method

.method public setIsNautilus(Z)V
    .locals 0

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 391
    const-string v0, "seedCard: %s, xdiIntent: %s, radioType: %s, radioName: %s, artworkUrl: %s, isNautilus: %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    .line 392
    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Radio;->artworkUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    .line 393
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 391
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->seedCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/ParcelUtils;->writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 174
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->xdiIntent:Landroid/content/Intent;

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/ParcelUtils;->writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 175
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioType:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->radioName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->artworkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 179
    return-void
.end method
