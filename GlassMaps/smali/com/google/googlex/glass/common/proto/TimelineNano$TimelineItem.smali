.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# instance fields
.field public attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field private attributionType_:I

.field private bitField0_:I

.field private bitField1_:I

.field private bundleId_:Ljava/lang/String;

.field private canonicalUrl_:Ljava/lang/String;

.field private cloudSyncProtocol_:I

.field private cloudSyncStatus_:I

.field private companionSyncProtocol_:I

.field private companionSyncStatus_:I

.field private creationTime_:J

.field private creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private displayTime_:J

.field private expirationTime_:J

.field private failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

.field private glanceableContent_:Ljava/lang/String;

.field public htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

.field private html_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private inReplyTo_:Ljava/lang/String;

.field private isBundleCover_:Z

.field private isDeleted_:Z

.field private isDirectoryCover_:Z

.field private isPinned_:Z

.field public linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

.field private location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

.field private loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

.field public menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

.field private modifiedTime_:J

.field private notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

.field public pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

.field private pinScore_:I

.field private pinTime_:J

.field private progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

.field private requireLinkify_:Z

.field private sendToPhoneUrl_:Ljava/lang/String;

.field public shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field public sharingFeature:[I

.field private smsType_:I

.field private sourceAccountId_:Ljava/lang/String;

.field private sourceItemId_:Ljava/lang/String;

.field private sourceType_:I

.field private source_:Ljava/lang/String;

.field private speakableText_:Ljava/lang/String;

.field private speakableType_:Ljava/lang/String;

.field private text_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private viewType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 238
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 257
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 276
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 295
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 314
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 333
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 352
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 371
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 390
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 450
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 513
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    .line 532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 573
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 620
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 642
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 664
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 708
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 730
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 733
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 755
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 774
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 793
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 812
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 831
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 850
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 872
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 891
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 913
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    .line 935
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 938
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 1969
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 1963
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method


# virtual methods
.method public final clearAttributionType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    .line 527
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 528
    return-object p0
.end method

.method public final clearBundleId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 233
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 234
    return-object p0
.end method

.method public final clearCanonicalUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 549
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 550
    return-object p0
.end method

.method public final clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 807
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 808
    return-object p0
.end method

.method public final clearCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 768
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 769
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 770
    return-object p0
.end method

.method public final clearCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 825
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 826
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 827
    return-object p0
.end method

.method public final clearCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 788
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 789
    return-object p0
.end method

.method public final clearCreationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 270
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 271
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 272
    return-object p0
.end method

.method public final clearCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 570
    return-object p0
.end method

.method public final clearDisplayTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 309
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 310
    return-object p0
.end method

.method public final clearExpirationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 347
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 348
    return-object p0
.end method

.method public final clearFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 447
    return-object p0
.end method

.method public final clearGlanceableContent()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 973
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 974
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    .line 975
    return-object p0
.end method

.method public final clearHtml()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 659
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 660
    return-object p0
.end method

.method public final clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 211
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 212
    return-object p0
.end method

.method public final clearInReplyTo()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 592
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 593
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 594
    return-object p0
.end method

.method public final clearIsBundleCover()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 252
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 253
    return-object p0
.end method

.method public final clearIsDeleted()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 404
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 405
    return-object p0
.end method

.method public final clearIsDirectoryCover()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    .line 952
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 953
    return-object p0
.end method

.method public final clearIsPinned()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 385
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 386
    return-object p0
.end method

.method public final clearLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 727
    return-object p0
.end method

.method public final clearLoggingAnnotations()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 995
    return-object p0
.end method

.method public final clearModifiedTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 290
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 291
    return-object p0
.end method

.method public final clearNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 752
    return-object p0
.end method

.method public final clearPinScore()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 366
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 367
    return-object p0
.end method

.method public final clearPinTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 327
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 328
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 329
    return-object p0
.end method

.method public final clearProgressStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 910
    return-object p0
.end method

.method public final clearRequireLinkify()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    .line 930
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 931
    return-object p0
.end method

.method public final clearSendToPhoneUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 866
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 867
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 868
    return-object p0
.end method

.method public final clearSmsType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 844
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 845
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 846
    return-object p0
.end method

.method public final clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 425
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 426
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 427
    return-object p0
.end method

.method public final clearSourceAccountId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 507
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 508
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 509
    return-object p0
.end method

.method public final clearSourceItemId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 486
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 487
    return-object p0
.end method

.method public final clearSourceType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 464
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 465
    return-object p0
.end method

.method public final clearSpeakableText()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 702
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 703
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 704
    return-object p0
.end method

.method public final clearSpeakableType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 681
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 682
    return-object p0
.end method

.method public final clearText()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 636
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 637
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 638
    return-object p0
.end method

.method public final clearTitle()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 614
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 615
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 616
    return-object p0
.end method

.method public final clearViewType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 885
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 886
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 887
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 999
    if-ne p1, p0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v0

    .line 1000
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1001
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1002
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1003
    :goto_2
    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1013
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-nez v2, :cond_3

    .line 1014
    :goto_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1016
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1017
    :goto_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1019
    :goto_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_3

    .line 1020
    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1021
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1022
    :goto_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1023
    :goto_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1024
    :goto_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1025
    :goto_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1026
    :goto_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    if-nez v2, :cond_11

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1027
    :goto_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1028
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v2, :cond_12

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v2, :cond_3

    .line 1029
    :goto_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1030
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1031
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v2, :cond_13

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v2, :cond_3

    .line 1032
    :goto_10
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    if-nez v2, :cond_14

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1038
    :goto_11
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 1040
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v2, :cond_15

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v2, :cond_3

    .line 1041
    :goto_12
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1042
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1044
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    if-nez v2, :cond_16

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1046
    :goto_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-nez v2, :cond_3

    .line 1047
    :goto_14
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_18

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1048
    goto/16 :goto_0

    .line 1002
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 1003
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 1013
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 1014
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1016
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1017
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1019
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1020
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_8

    .line 1021
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1022
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 1023
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 1024
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 1025
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_c

    :cond_10
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1026
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_d

    :cond_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1027
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_e

    .line 1028
    :cond_12
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 1029
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_f

    .line 1031
    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 1032
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_10

    :cond_14
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1038
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_11

    .line 1040
    :cond_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 1041
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_12

    .line 1044
    :cond_16
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 1046
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_13

    :cond_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 1047
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_14

    :cond_18
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    .line 1048
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getAttributionType()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    return v0
.end method

.method public final getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanonicalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public final getCloudSyncProtocol()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    return v0
.end method

.method public final getCloudSyncStatus()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    return v0
.end method

.method public final getCompanionSyncProtocol()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    return v0
.end method

.method public final getCompanionSyncStatus()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    return v0
.end method

.method public final getCreationTime()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    return-wide v0
.end method

.method public final getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public final getDisplayTime()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    return-wide v0
.end method

.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    return-wide v0
.end method

.method public final getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    return-object v0
.end method

.method public final getGlanceableContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    return-object v0
.end method

.method public final getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public final getInReplyTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsBundleCover()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    return v0
.end method

.method public final getIsDeleted()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    return v0
.end method

.method public final getIsDirectoryCover()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    return v0
.end method

.method public final getIsPinned()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    return v0
.end method

.method public final getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-object v0
.end method

.method public final getLoggingAnnotations()Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    return-object v0
.end method

.method public final getModifiedTime()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    return-wide v0
.end method

.method public final getNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    return-object v0
.end method

.method public final getPinScore()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    return v0
.end method

.method public final getPinTime()J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    return-wide v0
.end method

.method public final getProgressStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    return-object v0
.end method

.method public final getRequireLinkify()Z
    .locals 1

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    return v0
.end method

.method public final getSendToPhoneUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1310
    .line 1311
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_34

    .line 1312
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 1313
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1315
    :goto_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 1316
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 1317
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1319
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 1320
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 1321
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1323
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2

    .line 1324
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 1325
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1327
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v2, :cond_3

    .line 1328
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1329
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1331
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v2, :cond_5

    .line 1332
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    .line 1333
    if-eqz v5, :cond_4

    .line 1334
    const/4 v6, 0x6

    .line 1335
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1332
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1339
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 1340
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1341
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1343
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 1344
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 1345
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1347
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v2, :cond_9

    .line 1348
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_9

    aget-object v5, v3, v2

    .line 1349
    if-eqz v5, :cond_8

    .line 1350
    const/16 v6, 0x9

    .line 1351
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1348
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1355
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v2, :cond_a

    .line 1356
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 1357
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1359
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v2, :cond_c

    .line 1360
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v4, v3

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_c

    aget-object v5, v3, v2

    .line 1361
    if-eqz v5, :cond_b

    .line 1362
    const/16 v6, 0xb

    .line 1363
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1360
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1367
    :cond_c
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    .line 1368
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 1369
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1371
    :cond_d
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 1372
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 1373
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1375
    :cond_e
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_f

    .line 1376
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 1377
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1379
    :cond_f
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_10

    .line 1380
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 1381
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1383
    :cond_10
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v2, :cond_11

    .line 1384
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 1385
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1387
    :cond_11
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_12

    .line 1388
    const/16 v2, 0x11

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 1389
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1391
    :cond_12
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v2, :cond_14

    .line 1392
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v4, v3

    move v2, v1

    :goto_4
    if-ge v2, v4, :cond_14

    aget-object v5, v3, v2

    .line 1393
    if-eqz v5, :cond_13

    .line 1394
    const/16 v6, 0x12

    .line 1395
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1392
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1399
    :cond_14
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    .line 1400
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1401
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1403
    :cond_15
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    .line 1404
    const/16 v2, 0x14

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 1405
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1407
    :cond_16
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_17

    .line 1408
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 1409
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1411
    :cond_17
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    .line 1412
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 1413
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1415
    :cond_18
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 1416
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 1417
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1419
    :cond_19
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1a

    .line 1420
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 1421
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1423
    :cond_1a
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1b

    .line 1424
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1425
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1427
    :cond_1b
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1c

    .line 1428
    const/16 v2, 0x1d

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 1429
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1431
    :cond_1c
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_1d

    .line 1432
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1433
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1435
    :cond_1d
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1e

    .line 1436
    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1437
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1439
    :cond_1e
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 1440
    const/16 v2, 0x21

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 1441
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1443
    :cond_1f
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_20

    .line 1444
    const/16 v2, 0x22

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 1445
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1447
    :cond_20
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_21

    .line 1448
    const/16 v2, 0x23

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 1449
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1451
    :cond_21
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_22

    .line 1452
    const/16 v2, 0x24

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 1453
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1455
    :cond_22
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_23

    .line 1456
    const/16 v2, 0x25

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1457
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1459
    :cond_23
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_24

    .line 1460
    const/16 v2, 0x26

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1461
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1463
    :cond_24
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_25

    .line 1464
    const/16 v2, 0x27

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 1465
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1467
    :cond_25
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_26

    .line 1468
    const/16 v2, 0x28

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 1469
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1471
    :cond_26
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-lez v2, :cond_28

    .line 1473
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_5
    if-ge v2, v5, :cond_27

    aget v6, v4, v2

    .line 1475
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 1473
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1477
    :cond_27
    add-int/2addr v0, v3

    .line 1478
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 1480
    :cond_28
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v2, :cond_29

    .line 1481
    const/16 v2, 0x2a

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 1482
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1484
    :cond_29
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v2, :cond_2b

    .line 1485
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v4, v3

    move v2, v1

    :goto_6
    if-ge v2, v4, :cond_2b

    aget-object v5, v3, v2

    .line 1486
    if-eqz v5, :cond_2a

    .line 1487
    const/16 v6, 0x2b

    .line 1488
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1485
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1492
    :cond_2b
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c

    .line 1493
    const/16 v2, 0x2c

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    .line 1494
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1496
    :cond_2c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v2, :cond_2e

    .line 1497
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v3, v2

    :goto_7
    if-ge v1, v3, :cond_2e

    aget-object v4, v2, v1

    .line 1498
    if-eqz v4, :cond_2d

    .line 1499
    const/16 v5, 0x2d

    .line 1500
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1497
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1504
    :cond_2e
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2f

    .line 1505
    const/16 v1, 0x2e

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    .line 1506
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1508
    :cond_2f
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-eqz v1, :cond_30

    .line 1509
    const/16 v1, 0x31

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 1510
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1512
    :cond_30
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_31

    .line 1513
    const/16 v1, 0x32

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    .line 1514
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1516
    :cond_31
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-eqz v1, :cond_32

    .line 1517
    const/16 v1, 0x33

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 1518
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1520
    :cond_32
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    .line 1521
    const/16 v1, 0x34

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 1522
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1524
    :cond_33
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1525
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cachedSize:I

    .line 1526
    return v0

    :cond_34
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getSmsType()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    return v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceType()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    return v0
.end method

.method public final getSpeakableText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpeakableType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewType()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    return v0
.end method

.method public final hasAttributionType()Z
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasBundleId()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCanonicalUrl()Z
    .locals 2

    .prologue
    .line 545
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCloudSyncProtocol()Z
    .locals 2

    .prologue
    .line 803
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCloudSyncStatus()Z
    .locals 2

    .prologue
    .line 765
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCompanionSyncProtocol()Z
    .locals 2

    .prologue
    .line 822
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCompanionSyncStatus()Z
    .locals 2

    .prologue
    .line 784
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCreationTime()Z
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCreator()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasDisplayTime()Z
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasExpirationTime()Z
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasFailedDeliveryInfo()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasGlanceableContent()Z
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasHtml()Z
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasId()Z
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasInReplyTo()Z
    .locals 2

    .prologue
    .line 589
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsBundleCover()Z
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsDeleted()Z
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsDirectoryCover()Z
    .locals 2

    .prologue
    .line 948
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsPinned()Z
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLocation()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLoggingAnnotations()Z
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasModifiedTime()Z
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNotification()Z
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPinScore()Z
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPinTime()Z
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasProgressStatus()Z
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRequireLinkify()Z
    .locals 2

    .prologue
    .line 926
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSendToPhoneUrl()Z
    .locals 2

    .prologue
    .line 863
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSmsType()Z
    .locals 2

    .prologue
    .line 841
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSource()Z
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSourceAccountId()Z
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSourceItemId()Z
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSourceType()Z
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSpeakableText()Z
    .locals 2

    .prologue
    .line 699
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSpeakableType()Z
    .locals 2

    .prologue
    .line 677
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasText()Z
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTitle()Z
    .locals 2

    .prologue
    .line 611
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasViewType()Z
    .locals 2

    .prologue
    .line 882
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1052
    .line 1053
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1054
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 1055
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    if-eqz v0, :cond_9

    move v0, v2

    :goto_2
    add-int/2addr v0, v4

    .line 1056
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 1057
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 1058
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 1059
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 1060
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 1061
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    add-int/2addr v0, v4

    .line 1062
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_3
    add-int/2addr v0, v4

    .line 1063
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    if-eqz v0, :cond_b

    move v0, v2

    :goto_4
    add-int/2addr v0, v4

    .line 1064
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_5
    add-int/2addr v0, v4

    .line 1065
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-nez v0, :cond_d

    move v0, v1

    :goto_6
    add-int/2addr v0, v4

    .line 1066
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    add-int/2addr v0, v4

    .line 1067
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    if-nez v0, :cond_e

    move v0, v1

    :goto_7
    add-int/2addr v0, v4

    .line 1068
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v1

    :goto_8
    add-int/2addr v0, v4

    .line 1069
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    add-int/2addr v0, v4

    .line 1070
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_9
    add-int/2addr v0, v4

    .line 1071
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_11

    move v0, v1

    :goto_a
    add-int/2addr v0, v4

    .line 1072
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v4, :cond_12

    mul-int/lit8 v4, v0, 0x1f

    .line 1078
    :cond_0
    mul-int/lit8 v4, v4, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    if-nez v0, :cond_14

    move v0, v1

    :goto_b
    add-int/2addr v0, v4

    .line 1079
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    if-nez v0, :cond_15

    move v0, v1

    :goto_c
    add-int/2addr v0, v4

    .line 1080
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    if-nez v0, :cond_16

    move v0, v1

    :goto_d
    add-int/2addr v0, v4

    .line 1081
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    if-nez v0, :cond_17

    move v0, v1

    :goto_e
    add-int/2addr v0, v4

    .line 1082
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_f
    add-int/2addr v0, v4

    .line 1083
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v1

    :goto_10
    add-int/2addr v0, v4

    .line 1084
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v4, :cond_1a

    mul-int/lit8 v4, v0, 0x1f

    .line 1090
    :cond_1
    mul-int/lit8 v4, v4, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v0, :cond_1c

    move v0, v1

    :goto_11
    add-int/2addr v0, v4

    .line 1091
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v4, :cond_1d

    mul-int/lit8 v4, v0, 0x1f

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v0, :cond_1f

    mul-int/lit8 v4, v4, 0x1f

    .line 1103
    :cond_3
    mul-int/lit8 v4, v4, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v0, :cond_21

    move v0, v1

    :goto_12
    add-int/2addr v0, v4

    .line 1104
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    add-int/2addr v0, v4

    .line 1105
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    add-int/2addr v0, v4

    .line 1106
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    add-int/2addr v0, v4

    .line 1107
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    add-int/2addr v0, v4

    .line 1108
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    add-int/2addr v0, v4

    .line 1109
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    if-nez v0, :cond_22

    move v0, v1

    :goto_13
    add-int/2addr v0, v4

    .line 1110
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    add-int/2addr v0, v4

    .line 1111
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-nez v4, :cond_23

    mul-int/lit8 v4, v0, 0x1f

    .line 1117
    :cond_4
    mul-int/lit8 v4, v4, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v0, :cond_24

    move v0, v1

    :goto_14
    add-int/2addr v0, v4

    .line 1118
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v4, :cond_25

    mul-int/lit8 v4, v0, 0x1f

    .line 1124
    :cond_5
    mul-int/lit8 v4, v4, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    if-eqz v0, :cond_27

    move v0, v2

    :goto_15
    add-int/2addr v0, v4

    .line 1125
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v4, :cond_28

    mul-int/lit8 v4, v0, 0x1f

    .line 1131
    :cond_6
    mul-int/lit8 v0, v4, 0x1f

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    if-eqz v4, :cond_2a

    :goto_16
    add-int/2addr v0, v2

    .line 1132
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    if-nez v0, :cond_2b

    move v0, v1

    :goto_17
    add-int/2addr v0, v2

    .line 1133
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-nez v0, :cond_2c

    move v0, v1

    :goto_18
    add-int/2addr v0, v2

    .line 1134
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2d

    :goto_19
    add-int/2addr v0, v1

    .line 1135
    return v0

    .line 1053
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 1054
    :cond_8
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_9
    move v0, v3

    .line 1055
    goto/16 :goto_2

    :cond_a
    move v0, v3

    .line 1062
    goto/16 :goto_3

    :cond_b
    move v0, v3

    .line 1063
    goto/16 :goto_4

    .line 1064
    :cond_c
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_5

    .line 1065
    :cond_d
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->hashCode()I

    move-result v0

    goto/16 :goto_6

    .line 1067
    :cond_e
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    .line 1068
    :cond_f
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_8

    .line 1070
    :cond_10
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    .line 1071
    :cond_11
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_12
    move v4, v0

    move v0, v1

    .line 1074
    :goto_1a
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 1075
    mul-int/lit8 v5, v4, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v4, v4, v0

    if-nez v4, :cond_13

    move v4, v1

    :goto_1b
    add-int/2addr v4, v5

    .line 1074
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1075
    :cond_13
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v4

    goto :goto_1b

    .line 1078
    :cond_14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_b

    .line 1079
    :cond_15
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_c

    .line 1080
    :cond_16
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_d

    .line 1081
    :cond_17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_e

    .line 1082
    :cond_18
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_f

    .line 1083
    :cond_19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_10

    :cond_1a
    move v4, v0

    move v0, v1

    .line 1086
    :goto_1c
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 1087
    mul-int/lit8 v5, v4, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v4, v4, v0

    if-nez v4, :cond_1b

    move v4, v1

    :goto_1d
    add-int/2addr v4, v5

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1087
    :cond_1b
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hashCode()I

    move-result v4

    goto :goto_1d

    .line 1090
    :cond_1c
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hashCode()I

    move-result v0

    goto/16 :goto_11

    :cond_1d
    move v4, v0

    move v0, v1

    .line 1093
    :goto_1e
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 1094
    mul-int/lit8 v5, v4, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v4, v4, v0

    if-nez v4, :cond_1e

    move v4, v1

    :goto_1f
    add-int/2addr v4, v5

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1094
    :cond_1e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hashCode()I

    move-result v4

    goto :goto_1f

    :cond_1f
    move v0, v1

    .line 1099
    :goto_20
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 1100
    mul-int/lit8 v5, v4, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v4, v4, v0

    if-nez v4, :cond_20

    move v4, v1

    :goto_21
    add-int/2addr v4, v5

    .line 1099
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1100
    :cond_20
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hashCode()I

    move-result v4

    goto :goto_21

    .line 1103
    :cond_21
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->hashCode()I

    move-result v0

    goto/16 :goto_12

    .line 1109
    :cond_22
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_13

    :cond_23
    move v4, v0

    move v0, v1

    .line 1113
    :goto_22
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 1114
    mul-int/lit8 v4, v4, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    aget v5, v5, v0

    add-int/2addr v4, v5

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1117
    :cond_24
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->hashCode()I

    move-result v0

    goto/16 :goto_14

    :cond_25
    move v4, v0

    move v0, v1

    .line 1120
    :goto_23
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v5, v5

    if-ge v0, v5, :cond_5

    .line 1121
    mul-int/lit8 v5, v4, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v4, v4, v0

    if-nez v4, :cond_26

    move v4, v1

    :goto_24
    add-int/2addr v4, v5

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1121
    :cond_26
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->hashCode()I

    move-result v4

    goto :goto_24

    :cond_27
    move v0, v3

    .line 1124
    goto/16 :goto_15

    :cond_28
    move v4, v0

    move v0, v1

    .line 1127
    :goto_25
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v5, v5

    if-ge v0, v5, :cond_6

    .line 1128
    mul-int/lit8 v5, v4, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v4, v4, v0

    if-nez v4, :cond_29

    move v4, v1

    :goto_26
    add-int/2addr v4, v5

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1128
    :cond_29
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->hashCode()I

    move-result v4

    goto :goto_26

    :cond_2a
    move v2, v3

    .line 1131
    goto/16 :goto_16

    .line 1132
    :cond_2b
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_17

    .line 1133
    :cond_2c
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->hashCode()I

    move-result v0

    goto/16 :goto_18

    .line 1134
    :cond_2d
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto/16 :goto_19
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1534
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1535
    sparse-switch v0, :sswitch_data_0

    .line 1539
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    .line 1543
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1545
    :sswitch_0
    return-object p0

    .line 1550
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 1551
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1555
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 1556
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1560
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 1561
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1565
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 1566
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1570
    :sswitch_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_2

    .line 1571
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1573
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1577
    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1578
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_4

    move v0, v1

    .line 1579
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1580
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v3, :cond_3

    .line 1581
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1583
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1584
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 1585
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v3, v2, v0

    .line 1586
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1587
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1584
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1578
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v0, v0

    goto :goto_1

    .line 1590
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v3, v2, v0

    .line 1591
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1595
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1596
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1600
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 1601
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1605
    :sswitch_9
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1606
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v0, :cond_7

    move v0, v1

    .line 1607
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1608
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v3, :cond_6

    .line 1609
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1611
    :cond_6
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1612
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    .line 1613
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    aput-object v3, v2, v0

    .line 1614
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1615
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1612
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1606
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v0, v0

    goto :goto_3

    .line 1618
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    aput-object v3, v2, v0

    .line 1619
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1623
    :sswitch_a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v0, :cond_9

    .line 1624
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 1626
    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1630
    :sswitch_b
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1631
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v0, :cond_b

    move v0, v1

    .line 1632
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1633
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v3, :cond_a

    .line 1634
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1636
    :cond_a
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1637
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_c

    .line 1638
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v3, v2, v0

    .line 1639
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1640
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1637
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1631
    :cond_b
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v0, v0

    goto :goto_5

    .line 1643
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v3, v2, v0

    .line 1644
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1648
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1649
    if-eqz v0, :cond_d

    if-eq v0, v4, :cond_d

    if-eq v0, v5, :cond_d

    if-ne v0, v6, :cond_e

    .line 1653
    :cond_d
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 1654
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1656
    :cond_e
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    goto/16 :goto_0

    .line 1661
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1662
    if-eqz v0, :cond_f

    if-eq v0, v4, :cond_f

    if-ne v0, v5, :cond_10

    .line 1665
    :cond_f
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 1666
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1668
    :cond_10
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    goto/16 :goto_0

    .line 1673
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1674
    if-eqz v0, :cond_11

    if-eq v0, v4, :cond_11

    if-ne v0, v5, :cond_12

    .line 1677
    :cond_11
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 1678
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1680
    :cond_12
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    goto/16 :goto_0

    .line 1685
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 1686
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1690
    :sswitch_10
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v0, :cond_13

    .line 1691
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 1693
    :cond_13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1697
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 1698
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1702
    :sswitch_12
    const/16 v0, 0x92

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1703
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v0, :cond_15

    move v0, v1

    .line 1704
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1705
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v3, :cond_14

    .line 1706
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1708
    :cond_14
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1709
    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_16

    .line 1710
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v3, v2, v0

    .line 1711
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1712
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1709
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1703
    :cond_15
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v0, v0

    goto :goto_7

    .line 1715
    :cond_16
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v3, v2, v0

    .line 1716
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1720
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1721
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1725
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1726
    if-eqz v0, :cond_17

    if-eq v0, v4, :cond_17

    if-ne v0, v5, :cond_18

    .line 1729
    :cond_17
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 1730
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x8000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1732
    :cond_18
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    goto/16 :goto_0

    .line 1737
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 1738
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1742
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 1743
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1747
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 1748
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1752
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 1753
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1757
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1758
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1762
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 1763
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1767
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1768
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1772
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1773
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1777
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1778
    if-eqz v0, :cond_19

    if-eq v0, v4, :cond_19

    if-eq v0, v5, :cond_19

    if-ne v0, v6, :cond_1a

    .line 1782
    :cond_19
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 1783
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1785
    :cond_1a
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    goto/16 :goto_0

    .line 1790
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1791
    if-eqz v0, :cond_1b

    if-eq v0, v4, :cond_1b

    if-ne v0, v5, :cond_1c

    .line 1794
    :cond_1b
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 1795
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1797
    :cond_1c
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    goto/16 :goto_0

    .line 1802
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 1803
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1807
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 1808
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1812
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1813
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1817
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1818
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1822
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 1823
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1827
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1828
    if-eq v0, v7, :cond_1d

    if-eqz v0, :cond_1d

    if-eq v0, v4, :cond_1d

    if-eq v0, v5, :cond_1d

    if-eq v0, v6, :cond_1d

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1d

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1d

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1d

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1d

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1d

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1e

    .line 1844
    :cond_1d
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 1845
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1847
    :cond_1e
    iput v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    goto/16 :goto_0

    .line 1852
    :sswitch_25
    const/16 v0, 0x148

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1853
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v0, v0

    .line 1854
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 1855
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1856
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 1857
    :goto_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1f

    .line 1858
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    .line 1859
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1857
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1862
    :cond_1f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v0

    goto/16 :goto_0

    .line 1866
    :sswitch_26
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v0, :cond_20

    .line 1867
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 1869
    :cond_20
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1873
    :sswitch_27
    const/16 v0, 0x15a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1874
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v0, :cond_22

    move v0, v1

    .line 1875
    :goto_a
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1876
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v3, :cond_21

    .line 1877
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1879
    :cond_21
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1880
    :goto_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_23

    .line 1881
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v3, v2, v0

    .line 1882
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1883
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1880
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1874
    :cond_22
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v0, v0

    goto :goto_a

    .line 1886
    :cond_23
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v3, v2, v0

    .line 1887
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1891
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    .line 1892
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1896
    :sswitch_29
    const/16 v0, 0x16a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1897
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v0, :cond_25

    move v0, v1

    .line 1898
    :goto_c
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1899
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v3, :cond_24

    .line 1900
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1902
    :cond_24
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1903
    :goto_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_26

    .line 1904
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v3, v2, v0

    .line 1905
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1906
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1903
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1897
    :cond_25
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v0, v0

    goto :goto_c

    .line 1909
    :cond_26
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v3, v2, v0

    .line 1910
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1914
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1915
    if-eqz v0, :cond_27

    if-eq v0, v4, :cond_27

    if-eq v0, v5, :cond_27

    if-eq v0, v6, :cond_27

    const/4 v2, 0x4

    if-eq v0, v2, :cond_27

    const/4 v2, 0x6

    if-eq v0, v2, :cond_27

    const/4 v2, 0x7

    if-eq v0, v2, :cond_27

    const/16 v2, 0x8

    if-eq v0, v2, :cond_27

    const/16 v2, 0x9

    if-eq v0, v2, :cond_27

    const/16 v2, 0xa

    if-eq v0, v2, :cond_27

    const/16 v2, 0xb

    if-ne v0, v2, :cond_28

    .line 1926
    :cond_27
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    .line 1927
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1929
    :cond_28
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    goto/16 :goto_0

    .line 1934
    :sswitch_2b
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-nez v0, :cond_29

    .line 1935
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 1937
    :cond_29
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1941
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    .line 1942
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1946
    :sswitch_2d
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-nez v0, :cond_2a

    .line 1947
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 1949
    :cond_2a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1953
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 1954
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    goto/16 :goto_0

    .line 1535
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xba -> :sswitch_16
        0xc2 -> :sswitch_17
        0xca -> :sswitch_18
        0xe2 -> :sswitch_19
        0xe8 -> :sswitch_1a
        0xf2 -> :sswitch_1b
        0xfa -> :sswitch_1c
        0x108 -> :sswitch_1d
        0x110 -> :sswitch_1e
        0x118 -> :sswitch_1f
        0x120 -> :sswitch_20
        0x12a -> :sswitch_21
        0x132 -> :sswitch_22
        0x138 -> :sswitch_23
        0x140 -> :sswitch_24
        0x148 -> :sswitch_25
        0x152 -> :sswitch_26
        0x15a -> :sswitch_27
        0x160 -> :sswitch_28
        0x16a -> :sswitch_29
        0x170 -> :sswitch_2a
        0x18a -> :sswitch_2b
        0x190 -> :sswitch_2c
        0x19a -> :sswitch_2d
        0x1a2 -> :sswitch_2e
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public final setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 518
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    .line 519
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 520
    return-object p0
.end method

.method public final setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 225
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 226
    return-object p0
.end method

.method public final setCanonicalUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 541
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 542
    return-object p0
.end method

.method public final setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 798
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 799
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 800
    return-object p0
.end method

.method public final setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 760
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 761
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 762
    return-object p0
.end method

.method public final setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 817
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 818
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 819
    return-object p0
.end method

.method public final setCompanionSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 779
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 780
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 781
    return-object p0
.end method

.method public final setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 262
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 263
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 264
    return-object p0
.end method

.method public final setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 559
    if-nez p1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 562
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 563
    return-object p0
.end method

.method public final setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 300
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 301
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 302
    return-object p0
.end method

.method public final setExpirationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 338
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 339
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 340
    return-object p0
.end method

.method public final setFailedDeliveryInfo(Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 439
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 440
    return-object p0
.end method

.method public final setGlanceableContent(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 962
    if-nez p1, :cond_0

    .line 963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 965
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 966
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    .line 967
    return-object p0
.end method

.method public final setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 650
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 651
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 652
    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 203
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 204
    return-object p0
.end method

.method public final setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 582
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 584
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 585
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 586
    return-object p0
.end method

.method public final setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 244
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 245
    return-object p0
.end method

.method public final setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 397
    return-object p0
.end method

.method public final setIsDirectoryCover(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 943
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    .line 944
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 945
    return-object p0
.end method

.method public final setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 377
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 378
    return-object p0
.end method

.method public final setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 716
    if-nez p1, :cond_0

    .line 717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 719
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 720
    return-object p0
.end method

.method public final setLoggingAnnotations(Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 984
    if-nez p1, :cond_0

    .line 985
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 987
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 988
    return-object p0
.end method

.method public final setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 281
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 282
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 283
    return-object p0
.end method

.method public final setNotification(Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 741
    if-nez p1, :cond_0

    .line 742
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 744
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 745
    return-object p0
.end method

.method public final setPinScore(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 357
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 358
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 359
    return-object p0
.end method

.method public final setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 319
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 320
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 321
    return-object p0
.end method

.method public final setProgressStatus(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 899
    if-nez p1, :cond_0

    .line 900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 902
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 903
    return-object p0
.end method

.method public final setRequireLinkify(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    .line 922
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 923
    return-object p0
.end method

.method public final setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 855
    if-nez p1, :cond_0

    .line 856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 858
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 859
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 860
    return-object p0
.end method

.method public final setSmsType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 836
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 837
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 838
    return-object p0
.end method

.method public final setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 417
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 418
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 419
    return-object p0
.end method

.method public final setSourceAccountId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 499
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 500
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 501
    return-object p0
.end method

.method public final setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 474
    if-nez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 477
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 478
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 479
    return-object p0
.end method

.method public final setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 455
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 456
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 457
    return-object p0
.end method

.method public final setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 691
    if-nez p1, :cond_0

    .line 692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 694
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 695
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 696
    return-object p0
.end method

.method public final setSpeakableType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 670
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 672
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 673
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 674
    return-object p0
.end method

.method public final setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 628
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 629
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 630
    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 606
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 607
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 608
    return-object p0
.end method

.method public final setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 877
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 878
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 879
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1140
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1141
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1143
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 1144
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1146
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 1147
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1149
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    .line 1150
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1152
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_4

    .line 1153
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1155
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v1, :cond_6

    .line 1156
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_6

    aget-object v4, v2, v1

    .line 1157
    if-eqz v4, :cond_5

    .line 1158
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1156
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 1163
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1165
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 1166
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1168
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v1, :cond_a

    .line 1169
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    .line 1170
    if-eqz v4, :cond_9

    .line 1171
    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1169
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1175
    :cond_a
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v1, :cond_b

    .line 1176
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1178
    :cond_b
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v1, :cond_d

    .line 1179
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_d

    aget-object v4, v2, v1

    .line 1180
    if-eqz v4, :cond_c

    .line 1181
    const/16 v5, 0xb

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1179
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1185
    :cond_d
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    .line 1186
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1188
    :cond_e
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 1189
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1191
    :cond_f
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_10

    .line 1192
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1194
    :cond_10
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_11

    .line 1195
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1197
    :cond_11
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v1, :cond_12

    .line 1198
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1200
    :cond_12
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_13

    .line 1201
    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1203
    :cond_13
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v1, :cond_15

    .line 1204
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v3, v2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_15

    aget-object v4, v2, v1

    .line 1205
    if-eqz v4, :cond_14

    .line 1206
    const/16 v5, 0x12

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1204
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1210
    :cond_15
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    .line 1211
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1213
    :cond_16
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    .line 1214
    const/16 v1, 0x14

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1216
    :cond_17
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_18

    .line 1217
    const/16 v1, 0x15

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1219
    :cond_18
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_19

    .line 1220
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1222
    :cond_19
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1a

    .line 1223
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1225
    :cond_1a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 1226
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1228
    :cond_1b
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 1229
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1231
    :cond_1c
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1d

    .line 1232
    const/16 v1, 0x1d

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1234
    :cond_1d
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1e

    .line 1235
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1237
    :cond_1e
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1f

    .line 1238
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1240
    :cond_1f
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_20

    .line 1241
    const/16 v1, 0x21

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1243
    :cond_20
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_21

    .line 1244
    const/16 v1, 0x22

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1246
    :cond_21
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_22

    .line 1247
    const/16 v1, 0x23

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1249
    :cond_22
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_23

    .line 1250
    const/16 v1, 0x24

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1252
    :cond_23
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_24

    .line 1253
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1255
    :cond_24
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_25

    .line 1256
    const/16 v1, 0x26

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1258
    :cond_25
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_26

    .line 1259
    const/16 v1, 0x27

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1261
    :cond_26
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_27

    .line 1262
    const/16 v1, 0x28

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1264
    :cond_27
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v1, v1

    if-lez v1, :cond_28

    .line 1265
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v3, v2

    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_28

    aget v4, v2, v1

    .line 1266
    const/16 v5, 0x29

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1265
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1269
    :cond_28
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v1, :cond_29

    .line 1270
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1272
    :cond_29
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v1, :cond_2b

    .line 1273
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_2b

    aget-object v4, v2, v1

    .line 1274
    if-eqz v4, :cond_2a

    .line 1275
    const/16 v5, 0x2b

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1273
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1279
    :cond_2b
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_2c

    .line 1280
    const/16 v1, 0x2c

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1282
    :cond_2c
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v1, :cond_2e

    .line 1283
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v2, v1

    :goto_6
    if-ge v0, v2, :cond_2e

    aget-object v3, v1, v0

    .line 1284
    if-eqz v3, :cond_2d

    .line 1285
    const/16 v4, 0x2d

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1283
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1289
    :cond_2e
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2f

    .line 1290
    const/16 v0, 0x2e

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1292
    :cond_2f
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-eqz v0, :cond_30

    .line 1293
    const/16 v0, 0x31

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1295
    :cond_30
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_31

    .line 1296
    const/16 v0, 0x32

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1298
    :cond_31
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-eqz v0, :cond_32

    .line 1299
    const/16 v0, 0x33

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1301
    :cond_32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_33

    .line 1302
    const/16 v0, 0x34

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1304
    :cond_33
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1306
    return-void
.end method
