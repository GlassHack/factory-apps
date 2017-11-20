.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ViewType;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SmsType;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncProtocol;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncStatus;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$AttributionType;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SourceType;
    }
.end annotation


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
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

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
.method public clearAttributionType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearBundleId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearCanonicalUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 570
    return-object p0
.end method

.method public clearDisplayTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearExpirationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 447
    return-object p0
.end method

.method public clearGlanceableContent()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearHtml()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearInReplyTo()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearIsBundleCover()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearIsDeleted()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearIsDirectoryCover()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearIsPinned()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 727
    return-object p0
.end method

.method public clearLoggingAnnotations()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 995
    return-object p0
.end method

.method public clearModifiedTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 752
    return-object p0
.end method

.method public clearPinScore()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearPinTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearProgressStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 910
    return-object p0
.end method

.method public clearRequireLinkify()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearSendToPhoneUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearSmsType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearSourceAccountId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearSourceItemId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearSourceType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearSpeakableText()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearSpeakableType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearText()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearTitle()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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

.method public clearViewType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
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
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 999
    if-ne p1, p0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v1

    .line 1000
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1001
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1002
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1003
    :goto_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1013
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-nez v3, :cond_3

    .line 1014
    :goto_4
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1016
    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1017
    :goto_6
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1019
    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_3

    .line 1020
    :goto_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1021
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1022
    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1023
    :goto_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1024
    :goto_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1025
    :goto_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1026
    :goto_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1027
    :goto_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1028
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_12

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_3

    .line 1029
    :goto_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1030
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1031
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v3, :cond_3

    .line 1032
    :goto_10
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1038
    :goto_11
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 1040
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v3, :cond_3

    .line 1041
    :goto_12
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1042
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1044
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    if-nez v3, :cond_16

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1046
    :goto_13
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-nez v3, :cond_3

    .line 1047
    :goto_14
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 1048
    goto/16 :goto_0

    .line 1002
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 1003
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 1013
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 1014
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1016
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1017
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1019
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1020
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    .line 1021
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1022
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 1023
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 1024
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 1025
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_c

    :cond_10
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1026
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_d

    :cond_11
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1027
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_e

    .line 1028
    :cond_12
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 1029
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_f

    .line 1031
    :cond_13
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 1032
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_10

    :cond_14
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1038
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_11

    .line 1040
    :cond_15
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 1041
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_12

    .line 1044
    :cond_16
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 1046
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_13

    :cond_17
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 1047
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_14

    :cond_18
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    .line 1048
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getAttributionType()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    return v0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudSyncProtocol()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    return v0
.end method

.method public getCloudSyncStatus()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    return v0
.end method

.method public getCompanionSyncProtocol()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    return v0
.end method

.method public getCompanionSyncStatus()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    return v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    return-wide v0
.end method

.method public getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    return-wide v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    return-wide v0
.end method

.method public getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    return-object v0
.end method

.method public getGlanceableContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBundleCover()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    return v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    return v0
.end method

.method public getIsDirectoryCover()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    return v0
.end method

.method public getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-object v0
.end method

.method public getLoggingAnnotations()Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    return-object v0
.end method

.method public getPinScore()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    return v0
.end method

.method public getPinTime()J
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    return-wide v0
.end method

.method public getProgressStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    return-object v0
.end method

.method public getRequireLinkify()Z
    .locals 1

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    return v0
.end method

.method public getSendToPhoneUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1310
    const/4 v2, 0x0

    .line 1311
    .local v2, "size":I
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1312
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 1313
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1315
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 1316
    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 1317
    invoke-static {v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1319
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 1320
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 1321
    invoke-static {v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1323
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_3

    .line 1324
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 1325
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1327
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_4

    .line 1328
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1329
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1331
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_6

    .line 1332
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_6

    aget-object v1, v5, v4

    .line 1333
    .local v1, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v1, :cond_5

    .line 1334
    const/4 v7, 0x6

    .line 1335
    invoke-static {v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v2, v7

    .line 1332
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1339
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    .line 1340
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1341
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1343
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    .line 1344
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 1345
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1347
    :cond_8
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v4, :cond_a

    .line 1348
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_a

    aget-object v1, v5, v4

    .line 1349
    .local v1, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-eqz v1, :cond_9

    .line 1350
    const/16 v7, 0x9

    .line 1351
    invoke-static {v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v2, v7

    .line 1348
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1355
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v4, :cond_b

    .line 1356
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 1357
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1359
    :cond_b
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v4, :cond_d

    .line 1360
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v5

    move v4, v3

    :goto_2
    if-ge v4, v6, :cond_d

    aget-object v1, v5, v4

    .line 1361
    .local v1, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    if-eqz v1, :cond_c

    .line 1362
    const/16 v7, 0xb

    .line 1363
    invoke-static {v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v2, v7

    .line 1360
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1367
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    .line 1368
    const/16 v4, 0xc

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 1369
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1371
    :cond_e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    .line 1372
    const/16 v4, 0xd

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 1373
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1375
    :cond_f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_10

    .line 1376
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 1377
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1379
    :cond_10
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_11

    .line 1380
    const/16 v4, 0xf

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 1381
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1383
    :cond_11
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v4, :cond_12

    .line 1384
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 1385
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1387
    :cond_12
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_13

    .line 1388
    const/16 v4, 0x11

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 1389
    invoke-static {v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1391
    :cond_13
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v4, :cond_15

    .line 1392
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v5

    move v4, v3

    :goto_3
    if-ge v4, v6, :cond_15

    aget-object v1, v5, v4

    .line 1393
    .restart local v1    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    if-eqz v1, :cond_14

    .line 1394
    const/16 v7, 0x12

    .line 1395
    invoke-static {v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v2, v7

    .line 1392
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1399
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_15
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_16

    .line 1400
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1401
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1403
    :cond_16
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_17

    .line 1404
    const/16 v4, 0x14

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 1405
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1407
    :cond_17
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_18

    .line 1408
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 1409
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1411
    :cond_18
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_19

    .line 1412
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 1413
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1415
    :cond_19
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1a

    .line 1416
    const/16 v4, 0x18

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 1417
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1419
    :cond_1a
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1b

    .line 1420
    const/16 v4, 0x19

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 1421
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1423
    :cond_1b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1c

    .line 1424
    const/16 v4, 0x1c

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1425
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1427
    :cond_1c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1d

    .line 1428
    const/16 v4, 0x1d

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 1429
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1431
    :cond_1d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_1e

    .line 1432
    const/16 v4, 0x1e

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1433
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1435
    :cond_1e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1f

    .line 1436
    const/16 v4, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1437
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1439
    :cond_1f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_20

    .line 1440
    const/16 v4, 0x21

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 1441
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1443
    :cond_20
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_21

    .line 1444
    const/16 v4, 0x22

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 1445
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1447
    :cond_21
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_22

    .line 1448
    const/16 v4, 0x23

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 1449
    invoke-static {v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1451
    :cond_22
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_23

    .line 1452
    const/16 v4, 0x24

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 1453
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1455
    :cond_23
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_24

    .line 1456
    const/16 v4, 0x25

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1457
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1459
    :cond_24
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x200000

    and-int/2addr v4, v5

    if-eqz v4, :cond_25

    .line 1460
    const/16 v4, 0x26

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1461
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1463
    :cond_25
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_26

    .line 1464
    const/16 v4, 0x27

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 1465
    invoke-static {v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1467
    :cond_26
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_27

    .line 1468
    const/16 v4, 0x28

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 1469
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1471
    :cond_27
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v4, v4

    if-lez v4, :cond_29

    .line 1472
    const/4 v0, 0x0

    .line 1473
    .local v0, "dataSize":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v6, v5

    move v4, v3

    :goto_4
    if-ge v4, v6, :cond_28

    aget v1, v5, v4

    .line 1475
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v7

    add-int/2addr v0, v7

    .line 1473
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1477
    .end local v1    # "element":I
    :cond_28
    add-int/2addr v2, v0

    .line 1478
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 1480
    .end local v0    # "dataSize":I
    :cond_29
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v4, :cond_2a

    .line 1481
    const/16 v4, 0x2a

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 1482
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1484
    :cond_2a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v4, :cond_2c

    .line 1485
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v6, v5

    move v4, v3

    :goto_5
    if-ge v4, v6, :cond_2c

    aget-object v1, v5, v4

    .line 1486
    .local v1, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    if-eqz v1, :cond_2b

    .line 1487
    const/16 v7, 0x2b

    .line 1488
    invoke-static {v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v2, v7

    .line 1485
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1492
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_2c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_2d

    .line 1493
    const/16 v4, 0x2c

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    .line 1494
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1496
    :cond_2d
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v4, :cond_2f

    .line 1497
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v5, v4

    :goto_6
    if-ge v3, v5, :cond_2f

    aget-object v1, v4, v3

    .line 1498
    .restart local v1    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    if-eqz v1, :cond_2e

    .line 1499
    const/16 v6, 0x2d

    .line 1500
    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v2, v6

    .line 1497
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1504
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_2f
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_30

    .line 1505
    const/16 v3, 0x2e

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    .line 1506
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1508
    :cond_30
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-eqz v3, :cond_31

    .line 1509
    const/16 v3, 0x31

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 1510
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1512
    :cond_31
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_32

    .line 1513
    const/16 v3, 0x32

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    .line 1514
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1516
    :cond_32
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-eqz v3, :cond_33

    .line 1517
    const/16 v3, 0x33

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 1518
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1520
    :cond_33
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_34

    .line 1521
    const/16 v3, 0x34

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 1522
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1524
    :cond_34
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1525
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cachedSize:I

    .line 1526
    return v2
.end method

.method public getSmsType()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    return v0
.end method

.method public getSpeakableText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakableType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    return v0
.end method

.method public hasAttributionType()Z
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

.method public hasBundleId()Z
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

.method public hasCanonicalUrl()Z
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

.method public hasCloudSyncProtocol()Z
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

.method public hasCloudSyncStatus()Z
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

.method public hasCompanionSyncProtocol()Z
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

.method public hasCompanionSyncStatus()Z
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

.method public hasCreationTime()Z
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

.method public hasCreator()Z
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

.method public hasDisplayTime()Z
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

.method public hasExpirationTime()Z
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

.method public hasFailedDeliveryInfo()Z
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

.method public hasGlanceableContent()Z
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

.method public hasHtml()Z
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

.method public hasId()Z
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

.method public hasInReplyTo()Z
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

.method public hasIsBundleCover()Z
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

.method public hasIsDeleted()Z
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

.method public hasIsDirectoryCover()Z
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

.method public hasIsPinned()Z
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

.method public hasLocation()Z
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

.method public hasLoggingAnnotations()Z
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

.method public hasModifiedTime()Z
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

.method public hasNotification()Z
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

.method public hasPinScore()Z
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

.method public hasPinTime()Z
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

.method public hasProgressStatus()Z
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

.method public hasRequireLinkify()Z
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

.method public hasSendToPhoneUrl()Z
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

.method public hasSmsType()Z
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

.method public hasSource()Z
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

.method public hasSourceAccountId()Z
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

.method public hasSourceItemId()Z
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

.method public hasSourceType()Z
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

.method public hasSpeakableText()Z
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

.method public hasSpeakableType()Z
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

.method public hasText()Z
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

.method public hasTitle()Z
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

.method public hasViewType()Z
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

.method public hashCode()I
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1052
    const/16 v1, 0x11

    .line 1053
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1054
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    add-int v1, v6, v2

    .line 1055
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    if-eqz v2, :cond_9

    move v2, v4

    :goto_2
    add-int v1, v6, v2

    .line 1056
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 1057
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 1058
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 1059
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 1060
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 1061
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    add-int v1, v2, v6

    .line 1062
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    if-eqz v2, :cond_a

    move v2, v4

    :goto_3
    add-int v1, v6, v2

    .line 1063
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    if-eqz v2, :cond_b

    move v2, v4

    :goto_4
    add-int v1, v6, v2

    .line 1064
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v3

    :goto_5
    add-int v1, v6, v2

    .line 1065
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-nez v2, :cond_d

    move v2, v3

    :goto_6
    add-int v1, v6, v2

    .line 1066
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    add-int v1, v2, v6

    .line 1067
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v3

    :goto_7
    add-int v1, v6, v2

    .line 1068
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v3

    :goto_8
    add-int v1, v6, v2

    .line 1069
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    add-int v1, v2, v6

    .line 1070
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v3

    :goto_9
    add-int v1, v6, v2

    .line 1071
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_11

    move v2, v3

    :goto_a
    add-int v1, v6, v2

    .line 1072
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_12

    mul-int/lit8 v1, v1, 0x1f

    .line 1078
    :cond_0
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v3

    :goto_b
    add-int v1, v6, v2

    .line 1079
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v3

    :goto_c
    add-int v1, v6, v2

    .line 1080
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v3

    :goto_d
    add-int v1, v6, v2

    .line 1081
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    if-nez v2, :cond_17

    move v2, v3

    :goto_e
    add-int v1, v6, v2

    .line 1082
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    if-nez v2, :cond_18

    move v2, v3

    :goto_f
    add-int v1, v6, v2

    .line 1083
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    if-nez v2, :cond_19

    move v2, v3

    :goto_10
    add-int v1, v6, v2

    .line 1084
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v2, :cond_1a

    mul-int/lit8 v1, v1, 0x1f

    .line 1090
    :cond_1
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v2, :cond_1c

    move v2, v3

    :goto_11
    add-int v1, v6, v2

    .line 1091
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v2, :cond_1d

    mul-int/lit8 v1, v1, 0x1f

    .line 1097
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v2, :cond_1f

    mul-int/lit8 v1, v1, 0x1f

    .line 1103
    :cond_3
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v2, :cond_21

    move v2, v3

    :goto_12
    add-int v1, v6, v2

    .line 1104
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    add-int v1, v2, v6

    .line 1105
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    add-int v1, v2, v6

    .line 1106
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    add-int v1, v2, v6

    .line 1107
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    add-int v1, v2, v6

    .line 1108
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    add-int v1, v2, v6

    .line 1109
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    if-nez v2, :cond_22

    move v2, v3

    :goto_13
    add-int v1, v6, v2

    .line 1110
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    add-int v1, v2, v6

    .line 1111
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-nez v2, :cond_23

    mul-int/lit8 v1, v1, 0x1f

    .line 1117
    :cond_4
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v2, :cond_24

    move v2, v3

    :goto_14
    add-int v1, v6, v2

    .line 1118
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v2, :cond_25

    mul-int/lit8 v1, v1, 0x1f

    .line 1124
    :cond_5
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    if-eqz v2, :cond_27

    move v2, v4

    :goto_15
    add-int v1, v6, v2

    .line 1125
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v2, :cond_28

    mul-int/lit8 v1, v1, 0x1f

    .line 1131
    :cond_6
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    if-eqz v6, :cond_2a

    :goto_16
    add-int v1, v2, v4

    .line 1132
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    if-nez v2, :cond_2b

    move v2, v3

    :goto_17
    add-int v1, v4, v2

    .line 1133
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-nez v2, :cond_2c

    move v2, v3

    :goto_18
    add-int v1, v4, v2

    .line 1134
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_2d

    :goto_19
    add-int v1, v2, v3

    .line 1135
    return v1

    .line 1053
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1054
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :cond_9
    move v2, v5

    .line 1055
    goto/16 :goto_2

    :cond_a
    move v2, v5

    .line 1062
    goto/16 :goto_3

    :cond_b
    move v2, v5

    .line 1063
    goto/16 :goto_4

    .line 1064
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1065
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1067
    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1068
    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1070
    :cond_10
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1071
    :cond_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1074
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1075
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    if-nez v2, :cond_13

    move v2, v3

    :goto_1b
    add-int v1, v6, v2

    .line 1074
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1075
    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_1b

    .line 1078
    .end local v0    # "i":I
    :cond_14
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1079
    :cond_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 1080
    :cond_16
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 1081
    :cond_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 1082
    :cond_18
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 1083
    :cond_19
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 1086
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1087
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v2, v2, v0

    if-nez v2, :cond_1b

    move v2, v3

    :goto_1d
    add-int v1, v6, v2

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1087
    :cond_1b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hashCode()I

    move-result v2

    goto :goto_1d

    .line 1090
    .end local v0    # "i":I
    :cond_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 1093
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1094
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_1e

    move v2, v3

    :goto_1f
    add-int v1, v6, v2

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1094
    :cond_1e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hashCode()I

    move-result v2

    goto :goto_1f

    .line 1099
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_20
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1100
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    move v2, v3

    :goto_21
    add-int v1, v6, v2

    .line 1099
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1100
    :cond_20
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hashCode()I

    move-result v2

    goto :goto_21

    .line 1103
    .end local v0    # "i":I
    :cond_21
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 1109
    :cond_22
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 1113
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_22
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1114
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    aget v6, v6, v0

    add-int v1, v2, v6

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1117
    .end local v0    # "i":I
    :cond_24
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->hashCode()I

    move-result v2

    goto/16 :goto_14

    .line 1120
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 1121
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    if-nez v2, :cond_26

    move v2, v3

    :goto_24
    add-int v1, v6, v2

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1121
    :cond_26
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->hashCode()I

    move-result v2

    goto :goto_24

    .end local v0    # "i":I
    :cond_27
    move v2, v5

    .line 1124
    goto/16 :goto_15

    .line 1127
    :cond_28
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_25
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 1128
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    if-nez v2, :cond_29

    move v2, v3

    :goto_26
    add-int v1, v6, v2

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1128
    :cond_29
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->hashCode()I

    move-result v2

    goto :goto_26

    .end local v0    # "i":I
    :cond_2a
    move v4, v5

    .line 1131
    goto/16 :goto_16

    .line 1132
    :cond_2b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_17

    .line 1133
    :cond_2c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;->hashCode()I

    move-result v2

    goto/16 :goto_18

    .line 1134
    :cond_2d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto/16 :goto_19
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 12
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1534
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1535
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1539
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    if-nez v6, :cond_1

    .line 1540
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    .line 1543
    :cond_1
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1545
    :sswitch_0
    return-object p0

    .line 1550
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 1551
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1555
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 1556
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1560
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 1561
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1565
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 1566
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1570
    :sswitch_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v6, :cond_2

    .line 1571
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1573
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1577
    :sswitch_6
    const/16 v6, 0x32

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1578
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v6, :cond_4

    move v1, v5

    .line 1579
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1580
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v6, :cond_3

    .line 1581
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1583
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1584
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    .line 1585
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v7, v6, v1

    .line 1586
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1587
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1584
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1578
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v1, v6

    goto :goto_1

    .line 1590
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v7, v6, v1

    .line 1591
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1595
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1596
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1600
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 1601
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1605
    :sswitch_9
    const/16 v6, 0x4a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1606
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v6, :cond_7

    move v1, v5

    .line 1607
    .restart local v1    # "i":I
    :goto_3
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1608
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v6, :cond_6

    .line 1609
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1611
    :cond_6
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1612
    :goto_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_8

    .line 1613
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    aput-object v7, v6, v1

    .line 1614
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1615
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1612
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1606
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v1, v6

    goto :goto_3

    .line 1618
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    aput-object v7, v6, v1

    .line 1619
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1623
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :sswitch_a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v6, :cond_9

    .line 1624
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 1626
    :cond_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1630
    :sswitch_b
    const/16 v6, 0x5a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1631
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v6, :cond_b

    move v1, v5

    .line 1632
    .restart local v1    # "i":I
    :goto_5
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1633
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_a

    .line 1634
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1636
    :cond_a
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1637
    :goto_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_c

    .line 1638
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 1639
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1640
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1637
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1631
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v1, v6

    goto :goto_5

    .line 1643
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_c
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 1644
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1648
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1649
    .local v4, "temp":I
    if-eqz v4, :cond_d

    if-eq v4, v8, :cond_d

    if-eq v4, v9, :cond_d

    if-ne v4, v10, :cond_e

    .line 1653
    :cond_d
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 1654
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x800000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1656
    :cond_e
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    goto/16 :goto_0

    .line 1661
    .end local v4    # "temp":I
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1662
    .restart local v4    # "temp":I
    if-eqz v4, :cond_f

    if-eq v4, v8, :cond_f

    if-ne v4, v9, :cond_10

    .line 1665
    :cond_f
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 1666
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x2000000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1668
    :cond_10
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    goto/16 :goto_0

    .line 1673
    .end local v4    # "temp":I
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1674
    .restart local v4    # "temp":I
    if-eqz v4, :cond_11

    if-eq v4, v8, :cond_11

    if-ne v4, v9, :cond_12

    .line 1677
    :cond_11
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 1678
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1680
    :cond_12
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    goto/16 :goto_0

    .line 1685
    .end local v4    # "temp":I
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 1686
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1690
    :sswitch_10
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v6, :cond_13

    .line 1691
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 1693
    :cond_13
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1697
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 1698
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1702
    :sswitch_12
    const/16 v6, 0x92

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1703
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v6, :cond_15

    move v1, v5

    .line 1704
    .restart local v1    # "i":I
    :goto_7
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1705
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_14

    .line 1706
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1708
    :cond_14
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1709
    :goto_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_16

    .line 1710
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 1711
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1712
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1709
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1703
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_15
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v1, v6

    goto :goto_7

    .line 1715
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_16
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 1716
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1720
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1721
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x400000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1725
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1726
    .restart local v4    # "temp":I
    if-eqz v4, :cond_17

    if-eq v4, v8, :cond_17

    if-ne v4, v9, :cond_18

    .line 1729
    :cond_17
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 1730
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x8000000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1732
    :cond_18
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    goto/16 :goto_0

    .line 1737
    .end local v4    # "temp":I
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 1738
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1742
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 1743
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1747
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 1748
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x100000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1752
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 1753
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1757
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1758
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1762
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 1763
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1767
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1768
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1772
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1773
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1777
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1778
    .restart local v4    # "temp":I
    if-eqz v4, :cond_19

    if-eq v4, v8, :cond_19

    if-eq v4, v9, :cond_19

    if-ne v4, v10, :cond_1a

    .line 1782
    :cond_19
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 1783
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x1000000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1785
    :cond_1a
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    goto/16 :goto_0

    .line 1790
    .end local v4    # "temp":I
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1791
    .restart local v4    # "temp":I
    if-eqz v4, :cond_1b

    if-eq v4, v8, :cond_1b

    if-ne v4, v9, :cond_1c

    .line 1794
    :cond_1b
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 1795
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1797
    :cond_1c
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    goto/16 :goto_0

    .line 1802
    .end local v4    # "temp":I
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 1803
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1807
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 1808
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1812
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1813
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1817
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1818
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x200000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1822
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 1823
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1827
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1828
    .restart local v4    # "temp":I
    if-eq v4, v11, :cond_1d

    if-eqz v4, :cond_1d

    if-eq v4, v8, :cond_1d

    if-eq v4, v9, :cond_1d

    if-eq v4, v10, :cond_1d

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1d

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1d

    const/4 v6, 0x6

    if-eq v4, v6, :cond_1d

    const/4 v6, 0x7

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x8

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x9

    if-eq v4, v6, :cond_1d

    const/16 v6, 0xa

    if-eq v4, v6, :cond_1d

    const/16 v6, 0xb

    if-eq v4, v6, :cond_1d

    const/16 v6, 0xc

    if-eq v4, v6, :cond_1d

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1d

    const/16 v6, 0xe

    if-ne v4, v6, :cond_1e

    .line 1844
    :cond_1d
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 1845
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x20000000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1847
    :cond_1e
    iput v11, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    goto/16 :goto_0

    .line 1852
    .end local v4    # "temp":I
    :sswitch_25
    const/16 v6, 0x148

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1853
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v1, v6

    .line 1854
    .restart local v1    # "i":I
    add-int v6, v1, v0

    new-array v2, v6, [I

    .line 1855
    .local v2, "newArray":[I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1856
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 1857
    :goto_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_1f

    .line 1858
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    .line 1859
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1857
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1862
    :cond_1f
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    goto/16 :goto_0

    .line 1866
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_26
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v6, :cond_20

    .line 1867
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 1869
    :cond_20
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1873
    :sswitch_27
    const/16 v6, 0x15a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1874
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v6, :cond_22

    move v1, v5

    .line 1875
    .restart local v1    # "i":I
    :goto_a
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1876
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v6, :cond_21

    .line 1877
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1879
    :cond_21
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1880
    :goto_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_23

    .line 1881
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v7, v6, v1

    .line 1882
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1883
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1880
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1874
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_22
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v1, v6

    goto :goto_a

    .line 1886
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_23
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v7, v6, v1

    .line 1887
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1891
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    .line 1892
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1896
    :sswitch_29
    const/16 v6, 0x16a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1897
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v6, :cond_25

    move v1, v5

    .line 1898
    .restart local v1    # "i":I
    :goto_c
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1899
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v6, :cond_24

    .line 1900
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1902
    :cond_24
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1903
    :goto_d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_26

    .line 1904
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v7, v6, v1

    .line 1905
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1906
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1903
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1897
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_25
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v1, v6

    goto :goto_c

    .line 1909
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_26
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v7, v6, v1

    .line 1910
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1914
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1915
    .restart local v4    # "temp":I
    if-eqz v4, :cond_27

    if-eq v4, v8, :cond_27

    if-eq v4, v9, :cond_27

    if-eq v4, v10, :cond_27

    const/4 v6, 0x4

    if-eq v4, v6, :cond_27

    const/4 v6, 0x6

    if-eq v4, v6, :cond_27

    const/4 v6, 0x7

    if-eq v4, v6, :cond_27

    const/16 v6, 0x8

    if-eq v4, v6, :cond_27

    const/16 v6, 0x9

    if-eq v4, v6, :cond_27

    const/16 v6, 0xa

    if-eq v4, v6, :cond_27

    const/16 v6, 0xb

    if-ne v4, v6, :cond_28

    .line 1926
    :cond_27
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    .line 1927
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1929
    :cond_28
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    goto/16 :goto_0

    .line 1934
    .end local v4    # "temp":I
    :sswitch_2b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-nez v6, :cond_29

    .line 1935
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    .line 1937
    :cond_29
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1941
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    .line 1942
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, -0x80000000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1946
    :sswitch_2d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-nez v6, :cond_2a

    .line 1947
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    .line 1949
    :cond_2a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1953
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 1954
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    goto/16 :goto_0

    .line 1535
    nop

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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # I

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

.method public setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

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

.method public setCanonicalUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

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

.method public setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # I

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

.method public setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # I

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

.method public setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # I

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

.method public setCompanionSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # I

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

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # J

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

.method public setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

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

.method public setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # J

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

.method public setExpirationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # J

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

.method public setFailedDeliveryInfo(Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

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

.method public setGlanceableContent(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

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

.method public setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

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

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

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

.method public setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

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

.method public setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Z

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

.method public setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Z

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

.method public setIsDirectoryCover(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Z

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

.method public setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Z

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

.method public setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

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

.method public setLoggingAnnotations(Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

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

.method public setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # J

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

.method public setNotification(Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

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

.method public setPinScore(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # I

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

.method public setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # J

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

.method public setProgressStatus(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

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

.method public setRequireLinkify(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Z

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

.method public setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

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

.method public setSmsType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # I

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

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

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

.method public setSourceAccountId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

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

.method public setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

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

.method public setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p1, "value"    # I

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

.method public setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

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

.method public setSpeakableType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

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

.method public setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

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

.method public setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

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

.method public setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .param p1, "value"    # I

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

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1140
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1141
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1143
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 1144
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1146
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 1147
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1149
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_3

    .line 1150
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1152
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v2, :cond_4

    .line 1153
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1155
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v2, :cond_6

    .line 1156
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v0, v3, v2

    .line 1157
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v0, :cond_5

    .line 1158
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1156
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1162
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 1163
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1165
    :cond_7
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    .line 1166
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1168
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v2, :cond_a

    .line 1169
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_a

    aget-object v0, v3, v2

    .line 1170
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-eqz v0, :cond_9

    .line 1171
    const/16 v5, 0x9

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1169
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1175
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v2, :cond_b

    .line 1176
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1178
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v2, :cond_d

    .line 1179
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_d

    aget-object v0, v3, v2

    .line 1180
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    if-eqz v0, :cond_c

    .line 1181
    const/16 v5, 0xb

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1179
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1185
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_d
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 1186
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1188
    :cond_e
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    .line 1189
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1191
    :cond_f
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_10

    .line 1192
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1194
    :cond_10
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_11

    .line 1195
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1197
    :cond_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v2, :cond_12

    .line 1198
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1200
    :cond_12
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_13

    .line 1201
    const/16 v2, 0x11

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1203
    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v2, :cond_15

    .line 1204
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v4, v3

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_15

    aget-object v0, v3, v2

    .line 1205
    .restart local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    if-eqz v0, :cond_14

    .line 1206
    const/16 v5, 0x12

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1204
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1210
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_15
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    .line 1211
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1213
    :cond_16
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    .line 1214
    const/16 v2, 0x14

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1216
    :cond_17
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_18

    .line 1217
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1219
    :cond_18
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 1220
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1222
    :cond_19
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    .line 1223
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1225
    :cond_1a
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1b

    .line 1226
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1228
    :cond_1b
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    .line 1229
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1231
    :cond_1c
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1d

    .line 1232
    const/16 v2, 0x1d

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1234
    :cond_1d
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_1e

    .line 1235
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1237
    :cond_1e
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 1238
    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1240
    :cond_1f
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_20

    .line 1241
    const/16 v2, 0x21

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1243
    :cond_20
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_21

    .line 1244
    const/16 v2, 0x22

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1246
    :cond_21
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_22

    .line 1247
    const/16 v2, 0x23

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1249
    :cond_22
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_23

    .line 1250
    const/16 v2, 0x24

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1252
    :cond_23
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_24

    .line 1253
    const/16 v2, 0x25

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1255
    :cond_24
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    .line 1256
    const/16 v2, 0x26

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1258
    :cond_25
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_26

    .line 1259
    const/16 v2, 0x27

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1261
    :cond_26
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    .line 1262
    const/16 v2, 0x28

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1264
    :cond_27
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-lez v2, :cond_28

    .line 1265
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v4, v3

    move v2, v1

    :goto_4
    if-ge v2, v4, :cond_28

    aget v0, v3, v2

    .line 1266
    .local v0, "element":I
    const/16 v5, 0x29

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1265
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1269
    .end local v0    # "element":I
    :cond_28
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v2, :cond_29

    .line 1270
    const/16 v2, 0x2a

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1272
    :cond_29
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v2, :cond_2b

    .line 1273
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v4, v3

    move v2, v1

    :goto_5
    if-ge v2, v4, :cond_2b

    aget-object v0, v3, v2

    .line 1274
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    if-eqz v0, :cond_2a

    .line 1275
    const/16 v5, 0x2b

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1273
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1279
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_2b
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c

    .line 1280
    const/16 v2, 0x2c

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->requireLinkify_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1282
    :cond_2c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v2, :cond_2e

    .line 1283
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_2e

    aget-object v0, v2, v1

    .line 1284
    .restart local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    if-eqz v0, :cond_2d

    .line 1285
    const/16 v4, 0x2d

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1283
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1289
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_2e
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2f

    .line 1290
    const/16 v1, 0x2e

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attributionType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1292
    :cond_2f
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    if-eqz v1, :cond_30

    .line 1293
    const/16 v1, 0x31

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->failedDeliveryInfo_:Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1295
    :cond_30
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_31

    .line 1296
    const/16 v1, 0x32

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDirectoryCover_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1298
    :cond_31
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    if-eqz v1, :cond_32

    .line 1299
    const/16 v1, 0x33

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->loggingAnnotations_:Lcom/google/googlex/glass/common/proto/TimelineNano$LoggingAnnotations;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1301
    :cond_32
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    .line 1302
    const/16 v1, 0x34

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->glanceableContent_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1304
    :cond_33
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1306
    return-void
.end method
