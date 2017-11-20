.class public final Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimelineItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;,
        Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ViewType;,
        Lcom/google/googlex/glass/common/proto/nano/TimelineItem$SmsType;,
        Lcom/google/googlex/glass/common/proto/nano/TimelineItem$SyncProtocol;,
        Lcom/google/googlex/glass/common/proto/nano/TimelineItem$SyncStatus;,
        Lcom/google/googlex/glass/common/proto/nano/TimelineItem$AttributionType;,
        Lcom/google/googlex/glass/common/proto/nano/TimelineItem$SourceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;


# instance fields
.field public attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

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

.field public creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

.field private displayTime_:J

.field private expirationTime_:J

.field public failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

.field private freshnessTime_:J

.field private glanceableContent_:Ljava/lang/String;

.field private glanceableIconUrl_:Ljava/lang/String;

.field public htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

.field private html_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private inReplyTo_:Ljava/lang/String;

.field private isBundleCover_:Z

.field private isDeleted_:Z

.field private isDirectoryCover_:Z

.field private isPinned_:Z

.field public linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

.field public location:Lcom/google/googlex/glass/common/proto/nano/Location;

.field public loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

.field public menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

.field private modifiedTime_:J

.field public notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

.field public pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

.field private pinScore_:I

.field private pinTime_:J

.field public progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

.field private requireLinkify_:Z

.field private sendToPhoneUrl_:Ljava/lang/String;

.field public shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 982
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->clear()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 983
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v0, :cond_1

    .line 217
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 222
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2322
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2316
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 6

    .prologue
    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 986
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 987
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    .line 988
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    .line 989
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    .line 990
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    .line 991
    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    .line 992
    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    .line 993
    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    .line 994
    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    .line 995
    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    .line 996
    iput-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    .line 997
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    .line 998
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    .line 999
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    .line 1001
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    .line 1002
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    .line 1003
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1004
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1005
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    .line 1006
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1007
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 1008
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/Entity;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 1009
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1010
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    .line 1011
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    .line 1012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    .line 1013
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1014
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1015
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 1016
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 1017
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 1018
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 1019
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    .line 1020
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    .line 1021
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    .line 1022
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    .line 1023
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    .line 1024
    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    .line 1025
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1026
    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    .line 1027
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    .line 1028
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    .line 1029
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    .line 1030
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    .line 1031
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    .line 1032
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    .line 1033
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 1034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    .line 1035
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    .line 1036
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1037
    iput v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cachedSize:I

    .line 1038
    return-object p0
.end method

.method public clearAttributionType()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 566
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 567
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    .line 568
    return-object p0
.end method

.method public clearBundleId()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    .line 262
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 263
    return-object p0
.end method

.method public clearCanonicalUrl()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 581
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 582
    return-object p0
.end method

.method public clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 798
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 799
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    .line 800
    return-object p0
.end method

.method public clearCloudSyncStatus()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 760
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 761
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    .line 762
    return-object p0
.end method

.method public clearCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 817
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 818
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    .line 819
    return-object p0
.end method

.method public clearCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 779
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 780
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    .line 781
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    .line 303
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 304
    return-object p0
.end method

.method public clearDisplayTime()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    .line 341
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 342
    return-object p0
.end method

.method public clearExpirationTime()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 378
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    .line 379
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 380
    return-object p0
.end method

.method public clearFreshnessTime()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    .line 398
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 399
    return-object p0
.end method

.method public clearGlanceableContent()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 941
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 942
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    .line 943
    return-object p0
.end method

.method public clearGlanceableIconUrl()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 963
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    .line 964
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    .line 965
    return-object p0
.end method

.method public clearHtml()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    .line 675
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 676
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 239
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    .line 240
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 241
    return-object p0
.end method

.method public clearInReplyTo()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 609
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 610
    return-object p0
.end method

.method public clearIsBundleCover()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    .line 284
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 285
    return-object p0
.end method

.method public clearIsDeleted()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    .line 455
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 456
    return-object p0
.end method

.method public clearIsDirectoryCover()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    .line 923
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    .line 924
    return-object p0
.end method

.method public clearIsPinned()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    .line 436
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 437
    return-object p0
.end method

.method public clearModifiedTime()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    .line 322
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 323
    return-object p0
.end method

.method public clearPinScore()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    .line 417
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 418
    return-object p0
.end method

.method public clearPinTime()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 359
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    .line 360
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 361
    return-object p0
.end method

.method public clearRequireLinkify()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    .line 901
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 902
    return-object p0
.end method

.method public clearSendToPhoneUrl()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 850
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 851
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 852
    return-object p0
.end method

.method public clearSmsType()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 836
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 837
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    .line 838
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    .line 474
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 475
    return-object p0
.end method

.method public clearSourceAccountId()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 540
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 541
    return-object p0
.end method

.method public clearSourceItemId()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 517
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 518
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 519
    return-object p0
.end method

.method public clearSourceType()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    .line 505
    return-object p0
.end method

.method public clearSpeakableText()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    .line 719
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 720
    return-object p0
.end method

.method public clearSpeakableType()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 696
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    .line 697
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 698
    return-object p0
.end method

.method public clearText()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    .line 653
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 654
    return-object p0
.end method

.method public clearTitle()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    .line 631
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 632
    return-object p0
.end method

.method public clearViewType()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2

    .prologue
    .line 877
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 878
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    .line 879
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    .line 1533
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 1534
    .local v3, "size":I
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1535
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    .line 1536
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1538
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 1539
    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    .line 1540
    invoke-static {v4, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1542
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 1543
    const/4 v4, 0x3

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    .line 1544
    invoke-static {v4, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1546
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_3

    .line 1547
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    .line 1548
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1550
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v4, :cond_4

    .line 1551
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 1552
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1554
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    array-length v4, v4

    if-lez v4, :cond_6

    .line 1555
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    .line 1556
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    aget-object v1, v4, v2

    .line 1557
    .local v1, "element":Lcom/google/googlex/glass/common/proto/nano/Entity;
    if-eqz v1, :cond_5

    .line 1558
    const/4 v4, 0x6

    .line 1559
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1555
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1563
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/nano/Entity;
    .end local v2    # "i":I
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    .line 1564
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1565
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1567
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    .line 1568
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    .line 1569
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1571
    :cond_8
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v4, v4

    if-lez v4, :cond_a

    .line 1572
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v4, v4

    if-ge v2, v4, :cond_a

    .line 1573
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    aget-object v1, v4, v2

    .line 1574
    .local v1, "element":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    if-eqz v1, :cond_9

    .line 1575
    const/16 v4, 0x9

    .line 1576
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1572
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1580
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .end local v2    # "i":I
    :cond_a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    if-eqz v4, :cond_b

    .line 1581
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 1582
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1584
    :cond_b
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v4, v4

    if-lez v4, :cond_d

    .line 1585
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v4, v4

    if-ge v2, v4, :cond_d

    .line 1586
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    aget-object v1, v4, v2

    .line 1587
    .local v1, "element":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    if-eqz v1, :cond_c

    .line 1588
    const/16 v4, 0xb

    .line 1589
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1585
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1593
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .end local v2    # "i":I
    :cond_d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    .line 1594
    const/16 v4, 0xc

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    .line 1595
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1597
    :cond_e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    .line 1598
    const/16 v4, 0xd

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    .line 1599
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1601
    :cond_f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_10

    .line 1602
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    .line 1603
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1605
    :cond_10
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_11

    .line 1606
    const/16 v4, 0xf

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    .line 1607
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1609
    :cond_11
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    if-eqz v4, :cond_12

    .line 1610
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    .line 1611
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1613
    :cond_12
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_13

    .line 1614
    const/16 v4, 0x11

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    .line 1615
    invoke-static {v4, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1617
    :cond_13
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v4, v4

    if-lez v4, :cond_15

    .line 1618
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v4, v4

    if-ge v2, v4, :cond_15

    .line 1619
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    aget-object v1, v4, v2

    .line 1620
    .restart local v1    # "element":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    if-eqz v1, :cond_14

    .line 1621
    const/16 v4, 0x12

    .line 1622
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1618
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1626
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .end local v2    # "i":I
    :cond_15
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_16

    .line 1627
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1628
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1630
    :cond_16
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_17

    .line 1631
    const/16 v4, 0x14

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    .line 1632
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1634
    :cond_17
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_18

    .line 1635
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    .line 1636
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1638
    :cond_18
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_19

    .line 1639
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    .line 1640
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1642
    :cond_19
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x200000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1a

    .line 1643
    const/16 v4, 0x18

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    .line 1644
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1646
    :cond_1a
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1b

    .line 1647
    const/16 v4, 0x19

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    .line 1648
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1650
    :cond_1b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1c

    .line 1651
    const/16 v4, 0x1c

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1652
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1654
    :cond_1c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1d

    .line 1655
    const/16 v4, 0x1d

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    .line 1656
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1658
    :cond_1d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_1e

    .line 1659
    const/16 v4, 0x1e

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1660
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1662
    :cond_1e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1f

    .line 1663
    const/16 v4, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1664
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1666
    :cond_1f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_20

    .line 1667
    const/16 v4, 0x21

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    .line 1668
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1670
    :cond_20
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_21

    .line 1671
    const/16 v4, 0x22

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    .line 1672
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1674
    :cond_21
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_22

    .line 1675
    const/16 v4, 0x23

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    .line 1676
    invoke-static {v4, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1678
    :cond_22
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_23

    .line 1679
    const/16 v4, 0x24

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    .line 1680
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1682
    :cond_23
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_24

    .line 1683
    const/16 v4, 0x25

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1684
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1686
    :cond_24
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_25

    .line 1687
    const/16 v4, 0x26

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1688
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1690
    :cond_25
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_26

    .line 1691
    const/16 v4, 0x27

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    .line 1692
    invoke-static {v4, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1694
    :cond_26
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_27

    .line 1695
    const/16 v4, 0x28

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    .line 1696
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1698
    :cond_27
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    array-length v4, v4

    if-lez v4, :cond_29

    .line 1699
    const/4 v0, 0x0

    .line 1700
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    array-length v4, v4

    if-ge v2, v4, :cond_28

    .line 1701
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    aget v1, v4, v2

    .line 1703
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1700
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1705
    .end local v1    # "element":I
    :cond_28
    add-int/2addr v3, v0

    .line 1706
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1708
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_29
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    if-eqz v4, :cond_2a

    .line 1709
    const/16 v4, 0x2a

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    .line 1710
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1712
    :cond_2a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    array-length v4, v4

    if-lez v4, :cond_2c

    .line 1713
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    array-length v4, v4

    if-ge v2, v4, :cond_2c

    .line 1714
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    aget-object v1, v4, v2

    .line 1715
    .local v1, "element":Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    if-eqz v1, :cond_2b

    .line 1716
    const/16 v4, 0x2b

    .line 1717
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1713
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1721
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    .end local v2    # "i":I
    :cond_2c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2d

    .line 1722
    const/16 v4, 0x2c

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    .line 1723
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1725
    :cond_2d
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    array-length v4, v4

    if-lez v4, :cond_2f

    .line 1726
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    array-length v4, v4

    if-ge v2, v4, :cond_2f

    .line 1727
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    aget-object v1, v4, v2

    .line 1728
    .restart local v1    # "element":Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    if-eqz v1, :cond_2e

    .line 1729
    const/16 v4, 0x2d

    .line 1730
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1726
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1734
    .end local v1    # "element":Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    .end local v2    # "i":I
    :cond_2f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    .line 1735
    const/16 v4, 0x2e

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    .line 1736
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1738
    :cond_30
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    if-eqz v4, :cond_31

    .line 1739
    const/16 v4, 0x31

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    .line 1740
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1742
    :cond_31
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_32

    .line 1743
    const/16 v4, 0x32

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    .line 1744
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1746
    :cond_32
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    if-eqz v4, :cond_33

    .line 1747
    const/16 v4, 0x33

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    .line 1748
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1750
    :cond_33
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_34

    .line 1751
    const/16 v4, 0x34

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 1752
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1754
    :cond_34
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_35

    .line 1755
    const/16 v4, 0x35

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    .line 1756
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1758
    :cond_35
    iget v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_36

    .line 1759
    const/16 v4, 0x36

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    .line 1760
    invoke-static {v4, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1762
    :cond_36
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/high16 v10, 0x10000

    const v9, 0x8000

    const/4 v2, 0x1

    const/high16 v8, -0x80000000

    const/4 v1, 0x0

    .line 1043
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 1275
    :cond_0
    :goto_0
    return v1

    .line 1046
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1049
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 1050
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    .line 1051
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1054
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    .line 1055
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1058
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    if-ne v3, v4, :cond_0

    .line 1062
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1066
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1070
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1074
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1078
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1082
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    iget-wide v6, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1086
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    if-ne v3, v4, :cond_0

    .line 1090
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    if-ne v3, v4, :cond_0

    .line 1094
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    if-ne v3, v4, :cond_0

    .line 1098
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    .line 1099
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1102
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    if-nez v3, :cond_a

    .line 1103
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    if-nez v3, :cond_0

    .line 1111
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    if-ne v3, v4, :cond_0

    .line 1115
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1116
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1119
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/2addr v3, v9

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/2addr v4, v9

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1120
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1123
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/2addr v3, v10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/2addr v4, v10

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    if-ne v3, v4, :cond_0

    .line 1127
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1128
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1131
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v3, :cond_b

    .line 1132
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v3, :cond_0

    .line 1140
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1144
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1145
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1148
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    .line 1149
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1152
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    .line 1153
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1156
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x200000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    .line 1157
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1160
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1161
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1164
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1165
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1168
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1172
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    if-nez v3, :cond_c

    .line 1173
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    if-nez v3, :cond_0

    .line 1181
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1185
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1189
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    if-nez v3, :cond_d

    .line 1190
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    if-nez v3, :cond_0

    .line 1198
    :cond_5
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    if-ne v3, v4, :cond_0

    .line 1202
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    if-ne v3, v4, :cond_0

    .line 1206
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    if-ne v3, v4, :cond_0

    .line 1210
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x8000000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    if-ne v3, v4, :cond_0

    .line 1214
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    if-ne v3, v4, :cond_0

    .line 1218
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1219
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1222
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    if-ne v3, v4, :cond_0

    .line 1226
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1230
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    if-nez v3, :cond_e

    .line 1231
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    if-nez v3, :cond_0

    .line 1239
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1243
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/2addr v3, v8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/2addr v4, v8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    if-ne v3, v4, :cond_0

    .line 1247
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1251
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    if-ne v3, v4, :cond_0

    .line 1255
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 1256
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1259
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    .line 1260
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1263
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    if-nez v3, :cond_f

    .line 1264
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    if-nez v3, :cond_0

    .line 1272
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1273
    :cond_8
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_9
    move v1, v2

    goto/16 :goto_0

    .line 1107
    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 1136
    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 1177
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/Location;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    .line 1194
    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    .line 1235
    :cond_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 1268
    :cond_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    .line 1275
    :cond_10
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getAttributionType()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    return v0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudSyncProtocol()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    return v0
.end method

.method public getCloudSyncStatus()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    return v0
.end method

.method public getCompanionSyncProtocol()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    return v0
.end method

.method public getCompanionSyncStatus()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    return v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    return-wide v0
.end method

.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    return-wide v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    return-wide v0
.end method

.method public getFreshnessTime()J
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    return-wide v0
.end method

.method public getGlanceableContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    return-object v0
.end method

.method public getGlanceableIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBundleCover()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    return v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    return v0
.end method

.method public getIsDirectoryCover()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    return-wide v0
.end method

.method public getPinScore()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    return v0
.end method

.method public getPinTime()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    return-wide v0
.end method

.method public getRequireLinkify()Z
    .locals 1

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    return v0
.end method

.method public getSendToPhoneUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsType()I
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    return v0
.end method

.method public getSpeakableText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakableType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    return v0
.end method

.method public hasAttributionType()Z
    .locals 2

    .prologue
    .line 563
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasBundleId()Z
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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
    .line 577
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasCloudSyncProtocol()Z
    .locals 2

    .prologue
    .line 795
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasCloudSyncStatus()Z
    .locals 2

    .prologue
    .line 757
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasCompanionSyncProtocol()Z
    .locals 2

    .prologue
    .line 814
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasCompanionSyncStatus()Z
    .locals 2

    .prologue
    .line 776
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 337
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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
    .line 375
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFreshnessTime()Z
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

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
    .line 938
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlanceableIconUrl()Z
    .locals 1

    .prologue
    .line 960
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 671
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasId()Z
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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
    .line 605
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasIsBundleCover()Z
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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
    .line 451
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsDirectoryCover()Z
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 432
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

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
    .line 318
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 413
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

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
    .line 356
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 897
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasSendToPhoneUrl()Z
    .locals 2

    .prologue
    .line 847
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasSmsType()Z
    .locals 2

    .prologue
    .line 833
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasSource()Z
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceAccountId()Z
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasSourceItemId()Z
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

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
    .line 500
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

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
    .line 715
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasSpeakableType()Z
    .locals 2

    .prologue
    .line 693
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasText()Z
    .locals 2

    .prologue
    .line 649
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 627
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hasViewType()Z
    .locals 2

    .prologue
    .line 874
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

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

.method public hashCode()I
    .locals 11

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/16 v10, 0x20

    const/4 v4, 0x0

    .line 1280
    const/16 v0, 0x11

    .line 1281
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1282
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1283
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1284
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v5, v1

    .line 1285
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 1286
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 1287
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 1288
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 1289
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 1290
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 1291
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    add-int v0, v1, v5

    .line 1292
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v5, v1

    .line 1293
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    add-int v0, v5, v1

    .line 1294
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1295
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    if-nez v1, :cond_4

    move v1, v4

    .line 1296
    :goto_3
    add-int v0, v5, v1

    .line 1297
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    add-int v0, v1, v5

    .line 1298
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1299
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1300
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    add-int v0, v1, v5

    .line 1301
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1302
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-nez v1, :cond_5

    move v1, v4

    .line 1303
    :goto_4
    add-int v0, v5, v1

    .line 1304
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 1305
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1306
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1307
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1308
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1309
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1310
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1311
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1312
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 1313
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1314
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    if-nez v1, :cond_6

    move v1, v4

    .line 1315
    :goto_5
    add-int v0, v5, v1

    .line 1316
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 1317
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1318
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 1319
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1320
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    if-nez v1, :cond_7

    move v1, v4

    .line 1321
    :goto_6
    add-int v0, v5, v1

    .line 1322
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    add-int v0, v1, v5

    .line 1323
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    add-int v0, v1, v5

    .line 1324
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    add-int v0, v1, v5

    .line 1325
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    add-int v0, v1, v5

    .line 1326
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    add-int v0, v1, v5

    .line 1327
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 1328
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    add-int v0, v1, v5

    .line 1329
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    .line 1330
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([I)I

    move-result v5

    add-int v0, v1, v5

    .line 1331
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    if-nez v1, :cond_8

    move v1, v4

    .line 1332
    :goto_7
    add-int v0, v5, v1

    .line 1333
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    .line 1334
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1335
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    if-eqz v1, :cond_9

    move v1, v2

    :goto_8
    add-int v0, v5, v1

    .line 1336
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    .line 1337
    invoke-static {v5}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 1338
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    if-eqz v5, :cond_a

    :goto_9
    add-int v0, v1, v2

    .line 1339
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1340
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1341
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    if-nez v1, :cond_b

    move v1, v4

    .line 1342
    :goto_a
    add-int v0, v2, v1

    .line 1343
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1344
    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1345
    :cond_0
    :goto_b
    add-int v0, v1, v4

    .line 1346
    return v0

    :cond_1
    move v1, v3

    .line 1284
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 1292
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 1293
    goto/16 :goto_2

    .line 1296
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;->hashCode()I

    move-result v1

    goto/16 :goto_3

    .line 1303
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Entity;->hashCode()I

    move-result v1

    goto/16 :goto_4

    .line 1315
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/Location;->hashCode()I

    move-result v1

    goto/16 :goto_5

    .line 1321
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;->hashCode()I

    move-result v1

    goto/16 :goto_6

    .line 1332
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;->hashCode()I

    move-result v1

    goto/16 :goto_7

    :cond_9
    move v1, v3

    .line 1335
    goto :goto_8

    :cond_a
    move v2, v3

    .line 1338
    goto :goto_9

    .line 1342
    :cond_b
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;->hashCode()I

    move-result v1

    goto :goto_a

    .line 1345
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v4

    goto :goto_b
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 21
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1770
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v15

    .line 1771
    .local v15, "tag":I
    sparse-switch v15, :sswitch_data_0

    .line 1775
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v15}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1776
    :sswitch_0
    return-object p0

    .line 1781
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    .line 1782
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1786
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    .line 1787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1791
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    .line 1792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1796
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    .line 1797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1801
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1802
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/Entity;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 1804
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1808
    :sswitch_6
    const/16 v18, 0x32

    .line 1809
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1810
    .local v4, "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    const/4 v8, 0x0

    .line 1811
    .local v8, "i":I
    :goto_1
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Lcom/google/googlex/glass/common/proto/nano/Entity;

    .line 1813
    .local v13, "newArray":[Lcom/google/googlex/glass/common/proto/nano/Entity;
    if-eqz v8, :cond_2

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1816
    :cond_2
    :goto_2
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 1817
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/Entity;-><init>()V

    aput-object v18, v13, v8

    .line 1818
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1819
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1816
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1810
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_1

    .line 1822
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Entity;
    :cond_4
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/Entity;-><init>()V

    aput-object v18, v13, v8

    .line 1823
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1824
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    goto/16 :goto_0

    .line 1828
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Entity;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x40000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1833
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    .line 1834
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x100000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1838
    :sswitch_9
    const/16 v18, 0x4a

    .line 1839
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1840
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    const/4 v8, 0x0

    .line 1841
    .restart local v8    # "i":I
    :goto_3
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 1843
    .local v13, "newArray":[Lcom/google/googlex/glass/common/proto/nano/Attachment;
    if-eqz v8, :cond_5

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1846
    :cond_5
    :goto_4
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    .line 1847
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/Attachment;-><init>()V

    aput-object v18, v13, v8

    .line 1848
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1849
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1846
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1840
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_3

    .line 1852
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :cond_7
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/Attachment;-><init>()V

    aput-object v18, v13, v8

    .line 1853
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1854
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    goto/16 :goto_0

    .line 1858
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/Attachment;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 1859
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/Location;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/Location;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 1861
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1865
    :sswitch_b
    const/16 v18, 0x5a

    .line 1866
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1867
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    const/4 v8, 0x0

    .line 1868
    .restart local v8    # "i":I
    :goto_5
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 1870
    .local v13, "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    if-eqz v8, :cond_9

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1873
    :cond_9
    :goto_6
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_b

    .line 1874
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;-><init>()V

    aput-object v18, v13, v8

    .line 1875
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1876
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1873
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1867
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_5

    .line 1879
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    :cond_b
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;-><init>()V

    aput-object v18, v13, v8

    .line 1880
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1881
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    goto/16 :goto_0

    .line 1885
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1886
    .local v10, "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1887
    .local v16, "value":I
    packed-switch v16, :pswitch_data_0

    .line 1896
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1897
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 1892
    :pswitch_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    .line 1893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x1000000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1903
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1904
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1905
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_1

    .line 1913
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1914
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 1909
    :pswitch_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    .line 1910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x4000000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1920
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1921
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1922
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_2

    .line 1930
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1931
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 1926
    :pswitch_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    .line 1927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x2000

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1937
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    .line 1938
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1942
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 1943
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    .line 1945
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1949
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    .line 1950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1954
    :sswitch_12
    const/16 v18, 0x92

    .line 1955
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 1956
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    const/4 v8, 0x0

    .line 1957
    .restart local v8    # "i":I
    :goto_7
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 1959
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    if-eqz v8, :cond_d

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1962
    :cond_d
    :goto_8
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_f

    .line 1963
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;-><init>()V

    aput-object v18, v13, v8

    .line 1964
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1965
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1962
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1956
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_7

    .line 1968
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    :cond_f
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/MenuItem;-><init>()V

    aput-object v18, v13, v8

    .line 1969
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1970
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    goto/16 :goto_0

    .line 1974
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    :sswitch_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x800000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1979
    :sswitch_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 1980
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 1981
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_3

    .line 1989
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1990
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 1985
    :pswitch_3
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    .line 1986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x10000000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1996
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    .line 1997
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2001
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    .line 2002
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x80000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2006
    :sswitch_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    .line 2007
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x200000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2011
    :sswitch_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    .line 2012
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2016
    :sswitch_19
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 2017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x20000000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2021
    :sswitch_1a
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    .line 2022
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2026
    :sswitch_1b
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 2027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2031
    :sswitch_1c
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 2032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x20000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2036
    :sswitch_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 2037
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 2038
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_4

    .line 2047
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2048
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 2043
    :pswitch_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    .line 2044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x2000000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2054
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_1e
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 2055
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 2056
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_5

    .line 2064
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2065
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 2060
    :pswitch_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    .line 2061
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x8000000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2071
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_1f
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    .line 2072
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2076
    :sswitch_20
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    .line 2077
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2081
    :sswitch_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 2082
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const v19, 0x8000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2086
    :sswitch_22
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    .line 2087
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x400000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2091
    :sswitch_23
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    .line 2092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2096
    :sswitch_24
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 2097
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 2098
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_6

    .line 2119
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 2115
    :pswitch_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    .line 2116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2126
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_25
    const/16 v18, 0x148

    .line 2127
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v11

    .line 2128
    .local v11, "length":I
    new-array v0, v11, [I

    move-object/from16 v17, v0

    .line 2129
    .local v17, "values":[I
    const/4 v6, 0x0

    .line 2130
    .local v6, "count":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    move v7, v6

    .end local v6    # "count":I
    .local v7, "count":I
    :goto_9
    if-ge v8, v11, :cond_11

    .line 2131
    if-eqz v8, :cond_10

    .line 2132
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2134
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 2135
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 2136
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_7

    .line 2141
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move v6, v7

    .line 2130
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_9

    .line 2138
    :pswitch_7
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "count":I
    .restart local v6    # "count":I
    aput v16, v17, v7

    goto :goto_a

    .line 2146
    .end local v6    # "count":I
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    .restart local v7    # "count":I
    :cond_11
    if-eqz v7, :cond_0

    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_12

    const/4 v8, 0x0

    .line 2148
    :goto_b
    if-nez v8, :cond_13

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_13

    .line 2149
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    goto/16 :goto_0

    .line 2147
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_b

    .line 2151
    :cond_13
    add-int v18, v8, v7

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 2152
    .local v13, "newArray":[I
    if-eqz v8, :cond_14

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2155
    :cond_14
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v13, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2156
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    goto/16 :goto_0

    .line 2162
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v13    # "newArray":[I
    .end local v17    # "values":[I
    :sswitch_26
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v5

    .line 2163
    .local v5, "bytes":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v12

    .line 2165
    .local v12, "limit":I
    const/4 v4, 0x0

    .line 2166
    .restart local v4    # "arrayLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v14

    .line 2167
    .local v14, "startPos":I
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v18

    if-lez v18, :cond_15

    .line 2168
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v18

    packed-switch v18, :pswitch_data_8

    goto :goto_c

    .line 2170
    :pswitch_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2174
    :cond_15
    if-eqz v4, :cond_19

    .line 2175
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_17

    const/4 v8, 0x0

    .line 2177
    .restart local v8    # "i":I
    :goto_d
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 2178
    .restart local v13    # "newArray":[I
    if-eqz v8, :cond_16

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2181
    :cond_16
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v18

    if-lez v18, :cond_18

    .line 2182
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 2183
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 2184
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_9

    .line 2189
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2190
    const/16 v18, 0x148

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_e

    .line 2176
    .end local v8    # "i":I
    .end local v10    # "initialPos":I
    .end local v13    # "newArray":[I
    .end local v16    # "value":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_d

    .line 2186
    .restart local v8    # "i":I
    .restart local v10    # "initialPos":I
    .restart local v13    # "newArray":[I
    .restart local v16    # "value":I
    :pswitch_9
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    aput v16, v13, v8

    move v8, v9

    .line 2187
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_e

    .line 2194
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :cond_18
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    .line 2196
    .end local v8    # "i":I
    .end local v13    # "newArray":[I
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 2200
    .end local v4    # "arrayLength":I
    .end local v5    # "bytes":I
    .end local v12    # "limit":I
    .end local v14    # "startPos":I
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    move-object/from16 v18, v0

    if-nez v18, :cond_1a

    .line 2201
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    .line 2203
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2207
    :sswitch_28
    const/16 v18, 0x15a

    .line 2208
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 2209
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    move-object/from16 v18, v0

    if-nez v18, :cond_1c

    const/4 v8, 0x0

    .line 2210
    .restart local v8    # "i":I
    :goto_f
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    .line 2212
    .local v13, "newArray":[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    if-eqz v8, :cond_1b

    .line 2213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2215
    :cond_1b
    :goto_10
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_1d

    .line 2216
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;-><init>()V

    aput-object v18, v13, v8

    .line 2217
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2218
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2215
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 2209
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_f

    .line 2221
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    :cond_1d
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;-><init>()V

    aput-object v18, v13, v8

    .line 2222
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2223
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    goto/16 :goto_0

    .line 2227
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    :sswitch_29
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    .line 2228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, -0x80000000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2232
    :sswitch_2a
    const/16 v18, 0x16a

    .line 2233
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 2234
    .restart local v4    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    move-object/from16 v18, v0

    if-nez v18, :cond_1f

    const/4 v8, 0x0

    .line 2235
    .restart local v8    # "i":I
    :goto_11
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    .line 2237
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    if-eqz v8, :cond_1e

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2240
    :cond_1e
    :goto_12
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_20

    .line 2241
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;-><init>()V

    aput-object v18, v13, v8

    .line 2242
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2243
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2240
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 2234
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_11

    .line 2246
    .restart local v8    # "i":I
    .restart local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    :cond_20
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/LinkSpec;-><init>()V

    aput-object v18, v13, v8

    .line 2247
    aget-object v18, v13, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2248
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    goto/16 :goto_0

    .line 2252
    .end local v4    # "arrayLength":I
    .end local v8    # "i":I
    .end local v13    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    :sswitch_2b
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 2253
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 2254
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_a

    .line 2270
    :pswitch_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 2266
    :pswitch_b
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    .line 2267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    const/high16 v19, 0x10000

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 2277
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    move-object/from16 v18, v0

    if-nez v18, :cond_21

    .line 2278
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    .line 2280
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2284
    :sswitch_2d
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    .line 2285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    goto/16 :goto_0

    .line 2289
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    move-object/from16 v18, v0

    if-nez v18, :cond_22

    .line 2290
    new-instance v18, Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    .line 2292
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2296
    :sswitch_2f
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 2297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    goto/16 :goto_0

    .line 2301
    :sswitch_30
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    .line 2302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    goto/16 :goto_0

    .line 2306
    :sswitch_31
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    .line 2307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1771
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
        0x14a -> :sswitch_26
        0x152 -> :sswitch_27
        0x15a -> :sswitch_28
        0x160 -> :sswitch_29
        0x16a -> :sswitch_2a
        0x170 -> :sswitch_2b
        0x18a -> :sswitch_2c
        0x190 -> :sswitch_2d
        0x19a -> :sswitch_2e
        0x1a2 -> :sswitch_2f
        0x1aa -> :sswitch_30
        0x1b0 -> :sswitch_31
    .end sparse-switch

    .line 1887
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1905
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1922
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1981
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2038
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 2056
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 2098
    :pswitch_data_6
    .packed-switch -0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 2136
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    .line 2168
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    .line 2184
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    .line 2254
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public setAttributionType(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 558
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    .line 559
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 560
    return-object p0
.end method

.method public setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 269
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    .line 270
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 271
    return-object p0
.end method

.method public setCanonicalUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 588
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 589
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 590
    return-object p0
.end method

.method public setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 790
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    .line 791
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 792
    return-object p0
.end method

.method public setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 752
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    .line 753
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 754
    return-object p0
.end method

.method public setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 809
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    .line 810
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 811
    return-object p0
.end method

.method public setCompanionSyncStatus(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 771
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    .line 772
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 773
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    .line 308
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 309
    return-object p0
.end method

.method public setDisplayTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 345
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    .line 346
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 347
    return-object p0
.end method

.method public setExpirationTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 383
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    .line 384
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 385
    return-object p0
.end method

.method public setFreshnessTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 402
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    .line 403
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 404
    return-object p0
.end method

.method public setGlanceableContent(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 946
    if-nez p1, :cond_0

    .line 947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 949
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    .line 950
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    .line 951
    return-object p0
.end method

.method public setGlanceableIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 968
    if-nez p1, :cond_0

    .line 969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 971
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    .line 972
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    .line 973
    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 682
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    .line 683
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 684
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    .line 248
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 249
    return-object p0
.end method

.method public setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 616
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 617
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 618
    return-object p0
.end method

.method public setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    .line 289
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 290
    return-object p0
.end method

.method public setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    .line 460
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 461
    return-object p0
.end method

.method public setIsDirectoryCover(Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 927
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    .line 928
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    .line 929
    return-object p0
.end method

.method public setIsPinned(Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    .line 441
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 442
    return-object p0
.end method

.method public setModifiedTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 326
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    .line 327
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 328
    return-object p0
.end method

.method public setPinScore(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    .line 422
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 423
    return-object p0
.end method

.method public setPinTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 364
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    .line 365
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 366
    return-object p0
.end method

.method public setRequireLinkify(Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 905
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    .line 906
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 907
    return-object p0
.end method

.method public setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
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
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 859
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 860
    return-object p0
.end method

.method public setSmsType(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 828
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    .line 829
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 830
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 481
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    .line 482
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 483
    return-object p0
.end method

.method public setSourceAccountId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 547
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 548
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 549
    return-object p0
.end method

.method public setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 525
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 526
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 527
    return-object p0
.end method

.method public setSourceType(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 495
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    .line 496
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 497
    return-object p0
.end method

.method public setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 723
    if-nez p1, :cond_0

    .line 724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 726
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    .line 727
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 728
    return-object p0
.end method

.method public setSpeakableType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 701
    if-nez p1, :cond_0

    .line 702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 704
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    .line 705
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 706
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 660
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    .line 661
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 662
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 638
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    .line 639
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 640
    return-object p0
.end method

.method public setViewType(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 869
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    .line 870
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    .line 871
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
    .line 1352
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1353
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1355
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 1356
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creationTime_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1358
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 1359
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->modifiedTime_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1361
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_3

    .line 1362
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->source_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1364
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v2, :cond_4

    .line 1365
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->creator:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1367
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 1368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 1369
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/nano/Entity;

    aget-object v0, v2, v1

    .line 1370
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/Entity;
    if-eqz v0, :cond_5

    .line 1371
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1368
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1375
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/Entity;
    .end local v1    # "i":I
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 1376
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1378
    :cond_7
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    .line 1379
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->text_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1381
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 1382
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 1383
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    aget-object v0, v2, v1

    .line 1384
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    if-eqz v0, :cond_9

    .line 1385
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1382
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1389
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .end local v1    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    if-eqz v2, :cond_b

    .line 1390
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->location:Lcom/google/googlex/glass/common/proto/nano/Location;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1392
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 1393
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 1394
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    aget-object v0, v2, v1

    .line 1395
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    if-eqz v0, :cond_c

    .line 1396
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1393
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1400
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .end local v1    # "i":I
    :cond_d
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 1401
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncStatus_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1403
    :cond_e
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    .line 1404
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->cloudSyncProtocol_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1406
    :cond_f
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_10

    .line 1407
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1409
    :cond_10
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_11

    .line 1410
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDeleted_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1412
    :cond_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    if-eqz v2, :cond_12

    .line 1413
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->notification:Lcom/google/googlex/glass/common/proto/nano/NotificationConfig;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1415
    :cond_12
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_13

    .line 1416
    const/16 v2, 0x11

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->displayTime_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1418
    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v2, v2

    if-lez v2, :cond_15

    .line 1419
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 1420
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    aget-object v0, v2, v1

    .line 1421
    .restart local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    if-eqz v0, :cond_14

    .line 1422
    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1419
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1426
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/MenuItem;
    .end local v1    # "i":I
    :cond_15
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    .line 1427
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1429
    :cond_16
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    .line 1430
    const/16 v2, 0x14

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->smsType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1432
    :cond_17
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_18

    .line 1433
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isPinned_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1435
    :cond_18
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 1436
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->title_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1438
    :cond_19
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    .line 1439
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->html_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1441
    :cond_1a
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1b

    .line 1442
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1444
    :cond_1b
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    .line 1445
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1447
    :cond_1c
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1d

    .line 1448
    const/16 v2, 0x1d

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isBundleCover_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1450
    :cond_1d
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1e

    .line 1451
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1453
    :cond_1e
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 1454
    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1456
    :cond_1f
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_20

    .line 1457
    const/16 v2, 0x21

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncStatus_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1459
    :cond_20
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_21

    .line 1460
    const/16 v2, 0x22

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->companionSyncProtocol_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1462
    :cond_21
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_22

    .line 1463
    const/16 v2, 0x23

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinTime_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1465
    :cond_22
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_23

    .line 1466
    const/16 v2, 0x24

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->pinScore_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1468
    :cond_23
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_24

    .line 1469
    const/16 v2, 0x25

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1471
    :cond_24
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    .line 1472
    const/16 v2, 0x26

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1474
    :cond_25
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_26

    .line 1475
    const/16 v2, 0x27

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->expirationTime_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1477
    :cond_26
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    .line 1478
    const/16 v2, 0x28

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->viewType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1480
    :cond_27
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-lez v2, :cond_28

    .line 1481
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-ge v1, v2, :cond_28

    .line 1482
    const/16 v2, 0x29

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->sharingFeature:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1481
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1485
    .end local v1    # "i":I
    :cond_28
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    if-eqz v2, :cond_29

    .line 1486
    const/16 v2, 0x2a

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->progressStatus:Lcom/google/googlex/glass/common/proto/nano/TimelineItem$ProgressStatus;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1488
    :cond_29
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    array-length v2, v2

    if-lez v2, :cond_2b

    .line 1489
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    array-length v2, v2

    if-ge v1, v2, :cond_2b

    .line 1490
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    aget-object v0, v2, v1

    .line 1491
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    if-eqz v0, :cond_2a

    .line 1492
    const/16 v2, 0x2b

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1489
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1496
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    .end local v1    # "i":I
    :cond_2b
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c

    .line 1497
    const/16 v2, 0x2c

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->requireLinkify_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1499
    :cond_2c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    array-length v2, v2

    if-lez v2, :cond_2e

    .line 1500
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    array-length v2, v2

    if-ge v1, v2, :cond_2e

    .line 1501
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/nano/LinkSpec;

    aget-object v0, v2, v1

    .line 1502
    .restart local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    if-eqz v0, :cond_2d

    .line 1503
    const/16 v2, 0x2d

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1500
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1507
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/LinkSpec;
    .end local v1    # "i":I
    :cond_2e
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2f

    .line 1508
    const/16 v2, 0x2e

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attributionType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1510
    :cond_2f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    if-eqz v2, :cond_30

    .line 1511
    const/16 v2, 0x31

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->failedDeliveryInfo:Lcom/google/googlex/glass/common/proto/nano/FailedDeliveryInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1513
    :cond_30
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_31

    .line 1514
    const/16 v2, 0x32

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->isDirectoryCover_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1516
    :cond_31
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    if-eqz v2, :cond_32

    .line 1517
    const/16 v2, 0x33

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->loggingAnnotations:Lcom/google/googlex/glass/common/proto/nano/LoggingAnnotations;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1519
    :cond_32
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_33

    .line 1520
    const/16 v2, 0x34

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableContent_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1522
    :cond_33
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField1_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_34

    .line 1523
    const/16 v2, 0x35

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->glanceableIconUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1525
    :cond_34
    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_35

    .line 1526
    const/16 v2, 0x36

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->freshnessTime_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1528
    :cond_35
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1529
    return-void
.end method
