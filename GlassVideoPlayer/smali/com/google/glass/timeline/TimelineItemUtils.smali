.class public final Lcom/google/glass/timeline/TimelineItemUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/mp4"

    aput-object v1, v0, v2

    const-string v1, "video/vnd.google-glass.stream-url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemUtils;->combineSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 299
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    goto :goto_0
.end method

.method public static addAttachments(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v0, :cond_0

    .line 309
    new-array v0, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 315
    :goto_0
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 312
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    goto :goto_0
.end method

.method public static addLinkSpec(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 328
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    goto :goto_0
.end method

.method public static addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 352
    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 353
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 354
    return-void
.end method

.method public static addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 367
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 364
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    goto :goto_0
.end method

.method public static addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v0, :cond_0

    .line 374
    new-array v0, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 380
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 377
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    goto :goto_0
.end method

.method public static addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 289
    :goto_0
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_0
.end method

.method public static addSharingFeature(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-nez v1, :cond_0

    .line 335
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v0

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 345
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 339
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aput p1, v1, v0

    .line 343
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    goto :goto_0
.end method

.method public static canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    .prologue
    .line 173
    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCompanionSyncProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncProtocol()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t clone timeline item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static combineSupportedTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2

    .prologue
    .line 198
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncStatus()I

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

.method public static getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 4

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 512
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v0, v0, v1

    .line 513
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    :goto_1
    return-object v0

    .line 511
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 518
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 529
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 530
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 532
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v5, v0, v2

    .line 533
    array-length v6, p1

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_1

    .line 534
    aget-object v7, p1, v0

    .line 535
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 536
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 531
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 541
    :cond_2
    return-object v3
.end method

.method public static getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasNotification()Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-wide v0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->hasDeliveryTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->getDeliveryTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 2

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    const-wide/16 v0, 0x0

    .line 134
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasDisplayTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getDisplayTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getFirstMenuItemWithActionOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 578
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v0, v0, v1

    .line 579
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 585
    :goto_1
    return-object v0

    .line 577
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 585
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 476
    :cond_0
    const/4 v0, 0x0

    .line 479
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-object v0

    .line 408
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 409
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 413
    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMediaFileNames(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/Set;
    .locals 6

    .prologue
    .line 593
    new-instance v1, Lcom/google/android/a/a;

    invoke-direct {v1}, Lcom/google/android/a/a;-><init>()V

    .line 594
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 596
    invoke-static {v4}, Lcom/google/glass/timeline/AttachmentUtils;->isPhoto(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/google/glass/timeline/AttachmentUtils;->isVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 597
    :cond_0
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_2
    return-object v1
.end method

.method public static getMenuItemFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 445
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 449
    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method static getPinScore(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasPinScore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getPinScore()I

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 121
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasPinTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getPinTime()J

    move-result-wide v0

    .line 111
    :goto_0
    return-wide v0

    .line 109
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 111
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 263
    if-nez v0, :cond_1

    .line 264
    const/4 v0, 0x0

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :cond_1
    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    const-string v0, "device:***"

    goto :goto_0

    .line 271
    :cond_2
    const-string v1, "companion:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const-string v0, "companion:***"

    goto :goto_0
.end method

.method public static getViewType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I
    .locals 6

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 705
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":cont"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 758
    :cond_0
    :goto_0
    return v0

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasViewType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 711
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getViewType()I

    move-result v0

    goto :goto_0

    .line 715
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasHtml()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 716
    const/4 v0, 0x4

    goto :goto_0

    .line 720
    :cond_3
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "application/vnd.google-glass.phone-call-proto"

    aput-object v5, v4, v0

    invoke-static {p0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 722
    goto :goto_0

    .line 726
    :cond_4
    sget-object v4, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 728
    const/4 v0, 0x3

    goto :goto_0

    .line 732
    :cond_5
    sget-object v4, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    .line 734
    goto :goto_0

    .line 740
    :cond_6
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 741
    goto :goto_0

    .line 746
    :cond_7
    new-array v4, v3, [I

    const/16 v5, 0x8

    aput v5, v4, v0

    invoke-static {p0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[I)Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    .line 747
    goto :goto_0

    .line 752
    :cond_8
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 754
    goto :goto_0

    .line 752
    nop

    :array_0
    .array-data 4
        0x2
        0x6
    .end array-data
.end method

.method public static varargs hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 487
    if-nez p0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 493
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v3, v3, v1

    .line 494
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/glass/timeline/TimelineItemUtils;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 495
    const/4 v0, 0x1

    goto :goto_0

    .line 492
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasBundleId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 554
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v3, v1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 556
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v4, v1, v2

    .line 557
    array-length v5, p1

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_2

    .line 558
    aget v6, p1, v1

    .line 559
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 560
    const/4 v0, 0x1

    .line 565
    :cond_0
    return v0

    .line 557
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 555
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static hasSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    .prologue
    .line 615
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompanionReceivedMms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    .prologue
    .line 234
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isCompanionMmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    .prologue
    .line 222
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isCompanionSmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const/4 v0, 0x1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isCompanionSmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 674
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 675
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 676
    const/4 v0, 0x1

    .line 679
    :cond_0
    return v0

    .line 674
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isSyncingToCloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncingToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2

    .prologue
    .line 189
    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncProtocol()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modifyTimelineItemToSendToContact(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->modifyTimelineItemToSendToContactInternal(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z

    move-result v0

    return v0
.end method

.method public static modifyTimelineItemToSendToContact(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z
    .locals 1

    .prologue
    .line 634
    invoke-static {p0, p1, p2}, Lcom/google/glass/timeline/TimelineItemUtils;->modifyTimelineItemToSendToContactInternal(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z

    move-result v0

    return v0
.end method

.method static modifyTimelineItemToSendToContactInternal(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 639
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 640
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 643
    if-nez p2, :cond_0

    .line 645
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object p2

    .line 648
    :cond_0
    if-eqz p2, :cond_1

    .line 649
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 650
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 651
    :cond_1
    sget-object v2, Lcom/google/glass/timeline/TimelineItemUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to send message as no personaId exists in the entity [source=%s, id=%s]."

    new-array v4, v7, [Ljava/lang/Object;

    .line 652
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 651
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    :goto_0
    return v0

    .line 657
    :cond_2
    sget-object v3, Lcom/google/glass/timeline/TimelineItemUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Sending new message via Glassware [entityId=%s, glasswareId=%s, personaId=%s]."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 658
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 657
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 660
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 664
    :cond_3
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 665
    invoke-static {p0, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    move v0, v1

    .line 666
    goto :goto_0
.end method

.method public static shouldReplyViaCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceType()I

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

.method public static shouldShowTimestamp(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 685
    if-nez p0, :cond_0

    .line 697
    :goto_0
    return v1

    .line 689
    :cond_0
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v3

    .line 692
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasPinScore()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getPinScore()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v0

    .line 697
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasDisplayTime()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 692
    goto :goto_1

    :cond_3
    move v0, v1

    .line 697
    goto :goto_2
.end method

.method public static tryGetFromBundle(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5

    .prologue
    .line 457
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    const-string v1, "%s: Error decoding proto [bundle=%s, key=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/google/glass/timeline/TimelineItemUtils;

    .line 460
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 459
    invoke-interface {p2, v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryGetFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5

    .prologue
    .line 387
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    const-string v1, "%s: Error decoding proto [intent=%s, key=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/google/glass/timeline/TimelineItemUtils;

    .line 390
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 389
    invoke-interface {p2, v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryGetMenuItemFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 5

    .prologue
    .line 423
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getMenuItemFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    const-string v1, "%s: Error decoding proto [intent=%s, key=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/google/glass/timeline/TimelineItemUtils;

    .line 426
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 425
    invoke-interface {p2, v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    const/4 v0, 0x0

    goto :goto_0
.end method
