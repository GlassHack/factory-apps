.class public final Lcom/google/glass/timeline/TimelineItemUtils;
.super Ljava/lang/Object;
.source "TimelineItemUtils.java"


# static fields
.field public static final ATTRIBUTION_ICON_MIME_TYPE:Ljava/lang/String; = "application/glass+attribution+icon"

.field public static final BUNDLE_PAGE_PREFIX:Ljava/lang/String; = ":"

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final MUSIC_METADATA_PROTO_MIME_TYPE:Ljava/lang/String; = "proto/glass+music"

.field public static final NON_DATABASE_ITEM_ID_PREFIX:Ljava/lang/String; = "com.google.glass.non-database-item-id-prefix"

.field public static final PHONE_CALL_PROTO_MIME_TYPE:Ljava/lang/String; = "application/vnd.google-glass.phone-call-proto"

.field public static final PROFILE_PHOTO_MIME_TYPE:Ljava/lang/String; = "application/glass+profile+photo"

.field public static final SEARCH_HTML_MIME_TYPE:Ljava/lang/String; = "application/glass+html"

.field public static final SEARCH_PROTO_MIME_TYPE:Ljava/lang/String; = "proto/search"

.field private static final SOURCE_REDACTED:Ljava/lang/String; = "***"

.field public static final STREAM_URL_CONTENT_TYPE:Ljava/lang/String; = "video/vnd.google-glass.stream-url"

.field public static final SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

.field public static final SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

.field public static final SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

.field public static final TEXT_CONTINUED_ID_POSTFIX:Ljava/lang/String; = ":cont"

.field public static final VOICE_AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/wav"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/mp4"

    aput-object v1, v0, v2

    const-string v1, "video/vnd.google-glass.stream-url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemUtils;->combineSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttachment(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;)V
    .locals 3
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    if-nez v1, :cond_0

    .line 305
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 308
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    goto :goto_0
.end method

.method public static addAttachments(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/util/List;)V
    .locals 3
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    const/4 v2, 0x0

    .line 317
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    if-nez v1, :cond_0

    .line 318
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 324
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 321
    .local v0, "allAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    goto :goto_0
.end method

.method public static addLinkSpec(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/LinkSpec;)V
    .locals 3
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "spec"    # Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    if-nez v1, :cond_0

    .line 331
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    .local v0, "linkSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/LinkSpec;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    goto :goto_0
.end method

.method public static addMenuItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;I)V
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "action"    # I

    .prologue
    .line 360
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;-><init>()V

    .line 361
    .local v0, "menuItem":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 362
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/MenuItem;)V

    .line 363
    return-void
.end method

.method public static addMenuItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/MenuItem;)V
    .locals 3
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "menuItem"    # Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    if-nez v1, :cond_0

    .line 370
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 376
    :goto_0
    return-void

    .line 372
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 373
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/MenuItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    goto :goto_0
.end method

.method public static addMenuItems(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/util/List;)V
    .locals 3
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/MenuItem;>;"
    const/4 v2, 0x0

    .line 382
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    if-nez v1, :cond_0

    .line 383
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 389
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 386
    .local v0, "allMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/MenuItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    goto :goto_0
.end method

.method public static addShareTarget(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;)V
    .locals 3
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "shareTarget"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v1, :cond_0

    .line 292
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/nano/Entity;

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 298
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Entity;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/nano/Entity;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    goto :goto_0
.end method

.method public static addSharingFeature(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;I)V
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "sharingFeature"    # I

    .prologue
    .line 343
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    if-nez v2, :cond_0

    .line 344
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 348
    .local v1, "sharingFeatures":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput p1, v1, v2

    .line 352
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    goto :goto_0
.end method

.method public static canSyncToCompanion(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasCompanionSyncProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCompanionSyncProtocol()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 3
    .param p0, "original"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 253
    if-nez p0, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 257
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t clone timeline item"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static combineSupportedTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->canSyncToCompanion(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCompanionSyncStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAttachmentOfType(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v3}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 520
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 521
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    aget-object v0, v3, v1

    .line 522
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :goto_1
    return-object v0

    .line 520
    .restart local v0    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "contentTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/nano/Attachment;>;"
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v7}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 540
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v5, v7

    .local v5, "n":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 541
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    aget-object v0, v7, v3

    .line 542
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    const/4 v4, 0x0

    .local v4, "ii":I
    array-length v6, p1

    .local v6, "nn":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 543
    aget-object v2, p1, v4

    .line 544
    .local v2, "contentType":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 545
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 540
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 550
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .end local v3    # "i":I
    .end local v4    # "ii":I
    .end local v5    # "n":I
    .end local v6    # "nn":I
    :cond_2
    return-object v1
.end method

.method public static getDeliveryTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J
    .locals 3
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    const-wide/16 v0, 0x0

    .line 151
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-wide v0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->hasDeliveryTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->getDeliveryTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getDisplayTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    const-wide/16 v0, 0x0

    .line 143
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasDisplayTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getDisplayTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getModifiedTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getFirstMenuItemWithActionOfType(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;I)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "menuItemAction"    # I

    .prologue
    .line 585
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-static {v3}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 586
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 587
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    aget-object v1, v3, v0

    .line 588
    .local v1, "menuItem":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->getAction()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 594
    .end local v0    # "i":I
    .end local v1    # "menuItem":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .end local v2    # "n":I
    :goto_1
    return-object v1

    .line 586
    .restart local v0    # "i":I
    .restart local v1    # "menuItem":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .restart local v2    # "n":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    .end local v0    # "i":I
    .end local v1    # "menuItem":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getFreshnessTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    const-wide/16 v0, 0x0

    .line 132
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasFreshnessTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getFreshnessTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 484
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 485
    :cond_0
    const/4 v1, 0x0

    .line 488
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-object v1

    .line 417
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 418
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 422
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMediaFileNames(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Ljava/util/Set;
    .locals 6
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    new-instance v1, Lcom/google/android/util/ArraySet;

    invoke-direct {v1}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 603
    .local v1, "mediaFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 604
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 605
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    invoke-static {v0}, Lcom/google/glass/timeline/AttachmentUtils;->isPhoto(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/google/glass/timeline/AttachmentUtils;->isVideo(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 606
    :cond_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :cond_2
    return-object v1
.end method

.method public static getMenuItemFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-object v1

    .line 453
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 454
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 458
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-result-object v1

    goto :goto_0
.end method

.method static getPinScore(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)I
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasPinScore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getPinScore()I

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getPinTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasPinTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getPinTime()J

    move-result-wide v0

    .line 109
    :goto_0
    return-wide v0

    .line 107
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 109
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getRedactedSource(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Ljava/lang/String;
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "rawSource":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 273
    const/4 v0, 0x0

    .line 284
    .end local v0    # "rawSource":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 276
    .restart local v0    # "rawSource":Ljava/lang/String;
    :cond_1
    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    const-string v0, "device:***"

    goto :goto_0

    .line 280
    :cond_2
    const-string v1, "companion:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string v0, "companion:***"

    goto :goto_0
.end method

.method public static getViewType(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)I
    .locals 6
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":cont"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v0

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasViewType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 706
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getViewType()I

    move-result v0

    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasHtml()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 711
    const/4 v0, 0x4

    goto :goto_0

    .line 715
    :cond_3
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "application/vnd.google-glass.phone-call-proto"

    aput-object v5, v4, v0

    invoke-static {p0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 717
    goto :goto_0

    .line 721
    :cond_4
    sget-object v4, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 723
    const/4 v0, 0x3

    goto :goto_0

    .line 727
    :cond_5
    sget-object v4, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    .line 729
    goto :goto_0

    .line 735
    :cond_6
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionSms(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 736
    goto :goto_0

    .line 741
    :cond_7
    new-array v4, v3, [I

    const/16 v5, 0x8

    aput v5, v4, v0

    invoke-static {p0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;[I)Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    .line 742
    goto :goto_0

    .line 747
    :cond_8
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 749
    goto :goto_0

    .line 747
    nop

    :array_0
    .array-data 4
        0x2
        0x6
    .end array-data
.end method

.method public static varargs hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "contentTypes"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 496
    if-nez p0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v3

    .line 500
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 501
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v2, v4

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 502
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    aget-object v0, v4, v1

    .line 503
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/glass/timeline/TimelineItemUtils;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    const/4 v3, 0x1

    goto :goto_0

    .line 501
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static hasBundleId(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 164
    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasBundleId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;[I)Z
    .locals 7
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "menuItemActions"    # [I

    .prologue
    .line 563
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-static {v6}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v4, v6

    .local v4, "n":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 565
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    aget-object v2, v6, v0

    .line 566
    .local v2, "menuItem":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v5, p1

    .local v5, "nn":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 567
    aget v3, p1, v1

    .line 568
    .local v3, "menuItemAction":I
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->getAction()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 569
    const/4 v6, 0x1

    .line 574
    .end local v0    # "i":I
    .end local v1    # "ii":I
    .end local v2    # "menuItem":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .end local v3    # "menuItemAction":I
    .end local v4    # "n":I
    .end local v5    # "nn":I
    :goto_2
    return v6

    .line 566
    .restart local v0    # "i":I
    .restart local v1    # "ii":I
    .restart local v2    # "menuItem":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .restart local v3    # "menuItemAction":I
    .restart local v4    # "n":I
    .restart local v5    # "nn":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 564
    .end local v3    # "menuItemAction":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "i":I
    .end local v1    # "ii":I
    .end local v2    # "menuItem":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .end local v4    # "n":I
    .end local v5    # "nn":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static isCompanionReceivedMms(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 243
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isCompanionMmsEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 231
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isCompanionSmsEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompanionSms(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const/4 v0, 0x1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isCompanionSmsEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "checkedContentType"    # Ljava/lang/String;
    .param p1, "supportedContentTypes"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 669
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 670
    .local v0, "contentType":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 671
    const/4 v1, 0x1

    .line 674
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_0
    return v1

    .line 669
    .restart local v0    # "contentType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isSyncingToCloud(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCloudSyncStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCloudSyncProtocol()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncingToCompanion(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 198
    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCompanionSyncProtocol()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCompanionSyncStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modifyTimelineItemToSendToContact(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;)Z
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;

    .prologue
    .line 619
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->modifyTimelineItemToSendToContactInternal(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;)Z

    move-result v0

    return v0
.end method

.method public static modifyTimelineItemToSendToContact(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;)Z
    .locals 1
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;
    .param p2, "persona"    # Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    .prologue
    .line 629
    invoke-static {p0, p1, p2}, Lcom/google/glass/timeline/TimelineItemUtils;->modifyTimelineItemToSendToContactInternal(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;)Z

    move-result v0

    return v0
.end method

.method static modifyTimelineItemToSendToContactInternal(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;)Z
    .locals 8
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/nano/Entity;
    .param p2, "persona"    # Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 634
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/nano/Entity;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    .line 635
    .local v0, "shareTarget":Lcom/google/googlex/glass/common/proto/nano/Entity;
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/nano/Entity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 638
    if-nez p2, :cond_0

    .line 640
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/nano/Entity;)Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    move-result-object p2

    .line 643
    :cond_0
    if-eqz p2, :cond_1

    .line 644
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 645
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 646
    :cond_1
    sget-object v3, Lcom/google/glass/timeline/TimelineItemUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unable to send message as no personaId exists in the entity [source=%s, id=%s]."

    new-array v5, v7, [Ljava/lang/Object;

    .line 647
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getSource()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 646
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    :goto_0
    return v1

    .line 652
    :cond_2
    sget-object v3, Lcom/google/glass/timeline/TimelineItemUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Sending new message via Glassware [entityId=%s, glasswareId=%s, personaId=%s]."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 653
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    .line 652
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 655
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 659
    :cond_3
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 660
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Entity;)V

    move v1, v2

    .line 661
    goto :goto_0
.end method

.method public static shouldReplyViaCompanion(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 2
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getSourceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowTimestamp(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Z
    .locals 8
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 680
    if-nez p0, :cond_0

    .line 692
    :goto_0
    return v4

    .line 684
    :cond_0
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J

    move-result-wide v2

    .line 687
    .local v2, "timestamp":J
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsPinned()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasPinScore()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getPinScore()I

    move-result v5

    if-lez v5, :cond_2

    move v0, v1

    .line 692
    .local v0, "hasPinScore":Z
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasDisplayTime()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    :goto_2
    move v4, v1

    goto :goto_0

    .end local v0    # "hasPinScore":Z
    :cond_2
    move v0, v4

    .line 687
    goto :goto_1

    .restart local v0    # "hasPinScore":Z
    :cond_3
    move v1, v4

    .line 692
    goto :goto_2
.end method

.method public static tryGetFromBundle(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "logger"    # Lcom/google/glass/logging/FormattingLogger;

    .prologue
    .line 466
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 470
    :goto_0
    return-object v1

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    const-string v1, "%s: Error decoding proto [bundle=%s, key=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/google/glass/timeline/TimelineItemUtils;

    .line 469
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 468
    invoke-interface {p2, v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static tryGetFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "logger"    # Lcom/google/glass/logging/FormattingLogger;

    .prologue
    .line 396
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 400
    :goto_0
    return-object v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    const-string v1, "%s: Error decoding proto [intent=%s, key=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/google/glass/timeline/TimelineItemUtils;

    .line 399
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 398
    invoke-interface {p2, v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static tryGetMenuItemFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "logger"    # Lcom/google/glass/logging/FormattingLogger;

    .prologue
    .line 432
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getMenuItemFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 436
    :goto_0
    return-object v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    const-string v1, "%s: Error decoding proto [intent=%s, key=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/google/glass/timeline/TimelineItemUtils;

    .line 435
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 434
    invoke-interface {p2, v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    const/4 v1, 0x0

    goto :goto_0
.end method
