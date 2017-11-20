.class public final Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognitionContextProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/proto/RecognitionContextProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionContext"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;


# instance fields
.field public additionalCanonicalLanguage:[Ljava/lang/String;

.field public additionalRawLanguage:[Ljava/lang/String;

.field private applicationName_:Ljava/lang/String;

.field private bitField0_:I

.field private canonicalLanguage_:Ljava/lang/String;

.field private clientApplicationId_:Ljava/lang/String;

.field private clientId_:Ljava/lang/String;

.field public enabledKeyboardLanguage:[Ljava/lang/String;

.field private fieldId_:Ljava/lang/String;

.field private fieldName_:Ljava/lang/String;

.field private hardware_:Ljava/lang/String;

.field private hasGrxmlGrammar_:Z

.field private hint_:Ljava/lang/String;

.field private imeOptions_:I

.field private inputType_:I

.field private label_:Ljava/lang/String;

.field private languageModel_:Ljava/lang/String;

.field private language_:Ljava/lang/String;

.field private rawLanguage_:Ljava/lang/String;

.field private referer_:Ljava/lang/String;

.field public requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

.field private selectedKeyboardLanguage_:Ljava/lang/String;

.field private singleLine_:Z

.field private userAgent_:Ljava/lang/String;

.field private voiceSearchLanguage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1779
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1780
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clear()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 1781
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2

    .prologue
    .line 1326
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    if-nez v0, :cond_1

    .line 1327
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1329
    :try_start_0
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    if-nez v0, :cond_0

    .line 1330
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    sput-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 1332
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    :cond_1
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    return-object v0

    .line 1332
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2246
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2240
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1784
    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1785
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    .line 1786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    .line 1787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    .line 1788
    iput-boolean v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    .line 1789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    .line 1790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    .line 1791
    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    .line 1792
    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    .line 1793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    .line 1794
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    .line 1795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    .line 1796
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    .line 1797
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    .line 1798
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    .line 1799
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    .line 1800
    iput-boolean v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    .line 1801
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 1802
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    .line 1803
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    .line 1804
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    .line 1805
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    .line 1806
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    .line 1807
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    .line 1808
    invoke-static {}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->emptyArray()[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    .line 1809
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->cachedSize:I

    .line 1810
    return-object p0
.end method

.method public clearApplicationName()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1356
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    .line 1357
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1358
    return-object p0
.end method

.method public clearCanonicalLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    .line 1568
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1569
    return-object p0
.end method

.method public clearClientApplicationId()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2

    .prologue
    .line 1771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    .line 1772
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1773
    return-object p0
.end method

.method public clearClientId()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    .line 1618
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1619
    return-object p0
.end method

.method public clearFieldId()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    .line 1401
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1402
    return-object p0
.end method

.method public clearFieldName()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    .line 1379
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1380
    return-object p0
.end method

.method public clearHardware()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2

    .prologue
    .line 1749
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    .line 1750
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1751
    return-object p0
.end method

.method public clearHasGrxmlGrammar()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    .line 1637
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1638
    return-object p0
.end method

.method public clearHint()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    .line 1464
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1465
    return-object p0
.end method

.method public clearImeOptions()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1501
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    .line 1502
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1503
    return-object p0
.end method

.method public clearInputType()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1482
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    .line 1483
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1484
    return-object p0
.end method

.method public clearLabel()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    .line 1442
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1443
    return-object p0
.end method

.method public clearLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    .line 1596
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1597
    return-object p0
.end method

.method public clearLanguageModel()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    .line 1524
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1525
    return-object p0
.end method

.method public clearRawLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    .line 1546
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1547
    return-object p0
.end method

.method public clearReferer()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2

    .prologue
    .line 1705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    .line 1706
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1707
    return-object p0
.end method

.method public clearSelectedKeyboardLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 1659
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1660
    return-object p0
.end method

.method public clearSingleLine()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 1419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    .line 1420
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1421
    return-object p0
.end method

.method public clearUserAgent()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2

    .prologue
    .line 1727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    .line 1728
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1729
    return-object p0
.end method

.method public clearVoiceSearchLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2

    .prologue
    .line 1683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    .line 1684
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1685
    return-object p0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    return-object v0
.end method

.method public getHasGrxmlGrammar()Z
    .locals 1

    .prologue
    .line 1625
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 1490
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getRawLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedKeyboardLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1912
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 1913
    .local v4, "size":I
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1914
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1917
    :cond_0
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 1918
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1921
    :cond_1
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 1922
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1925
    :cond_2
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 1926
    const/4 v5, 0x4

    iget-boolean v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1929
    :cond_3
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    .line 1930
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1933
    :cond_4
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_5

    .line 1934
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1937
    :cond_5
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    .line 1938
    const/4 v5, 0x7

    iget v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1941
    :cond_6
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_7

    .line 1942
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1945
    :cond_7
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_8

    .line 1946
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1949
    :cond_8
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_9

    .line 1950
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1953
    :cond_9
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_a

    .line 1954
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1957
    :cond_a
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_b

    .line 1958
    const/16 v5, 0xc

    iget-boolean v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1961
    :cond_b
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_c

    .line 1962
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1965
    :cond_c
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_f

    .line 1966
    const/4 v0, 0x0

    .line 1967
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 1968
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_e

    .line 1969
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 1970
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 1971
    add-int/lit8 v0, v0, 0x1

    .line 1972
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1968
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1976
    .end local v2    # "element":Ljava/lang/String;
    :cond_e
    add-int/2addr v4, v1

    .line 1977
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 1979
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_f
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_10

    .line 1980
    const/16 v5, 0xf

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1983
    :cond_10
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_11

    .line 1984
    const/16 v5, 0x10

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1987
    :cond_11
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_12

    .line 1988
    const/16 v5, 0x11

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1991
    :cond_12
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_13

    .line 1992
    const/16 v5, 0x12

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1995
    :cond_13
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_14

    .line 1996
    const/16 v5, 0x13

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1999
    :cond_14
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_15

    .line 2000
    const/16 v5, 0x14

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2003
    :cond_15
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_16

    .line 2004
    const/16 v5, 0x15

    iget-object v6, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2007
    :cond_16
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    array-length v5, v5

    if-lez v5, :cond_18

    .line 2008
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    array-length v5, v5

    if-ge v3, v5, :cond_18

    .line 2009
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    aget-object v2, v5, v3

    .line 2010
    .local v2, "element":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    if-eqz v2, :cond_17

    .line 2011
    const/16 v5, 0x16

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2008
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2016
    .end local v2    # "element":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .end local v3    # "i":I
    :cond_18
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1b

    .line 2017
    const/4 v0, 0x0

    .line 2018
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 2019
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1a

    .line 2020
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 2021
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 2022
    add-int/lit8 v0, v0, 0x1

    .line 2023
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2019
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2027
    .end local v2    # "element":Ljava/lang/String;
    :cond_1a
    add-int/2addr v4, v1

    .line 2028
    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    .line 2030
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_1b
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1e

    .line 2031
    const/4 v0, 0x0

    .line 2032
    .restart local v0    # "dataCount":I
    const/4 v1, 0x0

    .line 2033
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1d

    .line 2034
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 2035
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 2036
    add-int/lit8 v0, v0, 0x1

    .line 2037
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2033
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2041
    .end local v2    # "element":Ljava/lang/String;
    :cond_1d
    add-int/2addr v4, v1

    .line 2042
    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    .line 2044
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_1e
    iput v4, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->cachedSize:I

    .line 2045
    return v4
.end method

.method public getSingleLine()Z
    .locals 1

    .prologue
    .line 1408
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApplicationName()Z
    .locals 1

    .prologue
    .line 1353
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCanonicalLanguage()Z
    .locals 1

    .prologue
    .line 1564
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientApplicationId()Z
    .locals 2

    .prologue
    .line 1768
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

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

.method public hasClientId()Z
    .locals 1

    .prologue
    .line 1614
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFieldId()Z
    .locals 1

    .prologue
    .line 1397
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFieldName()Z
    .locals 1

    .prologue
    .line 1375
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHardware()Z
    .locals 2

    .prologue
    .line 1746
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

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

.method public hasHasGrxmlGrammar()Z
    .locals 1

    .prologue
    .line 1633
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHint()Z
    .locals 1

    .prologue
    .line 1460
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImeOptions()Z
    .locals 1

    .prologue
    .line 1498
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 1479
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 1438
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 1592
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguageModel()Z
    .locals 1

    .prologue
    .line 1520
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRawLanguage()Z
    .locals 1

    .prologue
    .line 1542
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReferer()Z
    .locals 2

    .prologue
    .line 1702
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

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

.method public hasSelectedKeyboardLanguage()Z
    .locals 1

    .prologue
    .line 1655
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSingleLine()Z
    .locals 1

    .prologue
    .line 1416
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAgent()Z
    .locals 2

    .prologue
    .line 1724
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

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

.method public hasVoiceSearchLanguage()Z
    .locals 2

    .prologue
    .line 1680
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

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

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1320
    invoke-virtual {p0, p1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2053
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2054
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2058
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2059
    :sswitch_0
    return-object p0

    .line 2064
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    .line 2065
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto :goto_0

    .line 2069
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    .line 2070
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto :goto_0

    .line 2074
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    .line 2075
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto :goto_0

    .line 2079
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    .line 2080
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto :goto_0

    .line 2084
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    .line 2085
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto :goto_0

    .line 2089
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    .line 2090
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto :goto_0

    .line 2094
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    .line 2095
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto :goto_0

    .line 2099
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    .line 2100
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto :goto_0

    .line 2104
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    .line 2105
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2109
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    .line 2110
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2114
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    .line 2115
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2119
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    .line 2120
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2124
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 2125
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2129
    :sswitch_e
    const/16 v5, 0x72

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2131
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 2132
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2133
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2134
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2136
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 2137
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2138
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2136
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2131
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 2141
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2142
    iput-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    goto/16 :goto_0

    .line 2146
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    .line 2147
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2151
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    .line 2152
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2156
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    .line 2157
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2161
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    .line 2162
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2166
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    .line 2167
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2171
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    .line 2172
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2176
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    .line 2177
    iget v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    goto/16 :goto_0

    .line 2181
    :sswitch_16
    const/16 v5, 0xb2

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2183
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    if-nez v5, :cond_5

    move v1, v4

    .line 2184
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    .line 2186
    .local v2, "newArray":[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    if-eqz v1, :cond_4

    .line 2187
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2189
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 2190
    new-instance v5, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    invoke-direct {v5}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;-><init>()V

    aput-object v5, v2, v1

    .line 2191
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2192
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2189
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2183
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    :cond_5
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    array-length v1, v5

    goto :goto_3

    .line 2195
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    :cond_6
    new-instance v5, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    invoke-direct {v5}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;-><init>()V

    aput-object v5, v2, v1

    .line 2196
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2197
    iput-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    goto/16 :goto_0

    .line 2201
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    :sswitch_17
    const/16 v5, 0xba

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2203
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    if-nez v5, :cond_8

    move v1, v4

    .line 2204
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2205
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 2206
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2208
    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 2209
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2210
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2208
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2203
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    .line 2213
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2214
    iput-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    goto/16 :goto_0

    .line 2218
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_18
    const/16 v5, 0xc2

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2220
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    if-nez v5, :cond_b

    move v1, v4

    .line 2221
    .restart local v1    # "i":I
    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 2222
    .restart local v2    # "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 2223
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2225
    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    .line 2226
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2227
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2225
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2220
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_7

    .line 2230
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2231
    iput-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    goto/16 :goto_0

    .line 2054
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
    .end sparse-switch
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1345
    if-nez p1, :cond_0

    .line 1346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1348
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    .line 1349
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1350
    return-object p0
.end method

.method public setCanonicalLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1556
    if-nez p1, :cond_0

    .line 1557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1559
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    .line 1560
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1561
    return-object p0
.end method

.method public setClientApplicationId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1760
    if-nez p1, :cond_0

    .line 1761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1763
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    .line 1764
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1765
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1606
    if-nez p1, :cond_0

    .line 1607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1609
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    .line 1610
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1611
    return-object p0
.end method

.method public setFieldId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1389
    if-nez p1, :cond_0

    .line 1390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1392
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    .line 1393
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1394
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1367
    if-nez p1, :cond_0

    .line 1368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1370
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    .line 1371
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1372
    return-object p0
.end method

.method public setHardware(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1738
    if-nez p1, :cond_0

    .line 1739
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1741
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    .line 1742
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1743
    return-object p0
.end method

.method public setHasGrxmlGrammar(Z)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1628
    iput-boolean p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    .line 1629
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1630
    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1452
    if-nez p1, :cond_0

    .line 1453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1455
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    .line 1456
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1457
    return-object p0
.end method

.method public setImeOptions(I)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1493
    iput p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    .line 1494
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1495
    return-object p0
.end method

.method public setInputType(I)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1474
    iput p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    .line 1475
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1476
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1430
    if-nez p1, :cond_0

    .line 1431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1433
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    .line 1434
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1435
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1584
    if-nez p1, :cond_0

    .line 1585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1587
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    .line 1588
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1589
    return-object p0
.end method

.method public setLanguageModel(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1512
    if-nez p1, :cond_0

    .line 1513
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1515
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    .line 1516
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1517
    return-object p0
.end method

.method public setRawLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1534
    if-nez p1, :cond_0

    .line 1535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1537
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    .line 1538
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1539
    return-object p0
.end method

.method public setReferer(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1694
    if-nez p1, :cond_0

    .line 1695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1697
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    .line 1698
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1699
    return-object p0
.end method

.method public setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1647
    if-nez p1, :cond_0

    .line 1648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1650
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 1651
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1652
    return-object p0
.end method

.method public setSingleLine(Z)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1411
    iput-boolean p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    .line 1412
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1413
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1716
    if-nez p1, :cond_0

    .line 1717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1719
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    .line 1720
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1721
    return-object p0
.end method

.method public setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1672
    if-nez p1, :cond_0

    .line 1673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1675
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    .line 1676
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    .line 1677
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1816
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1817
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1819
    :cond_0
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1820
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1822
    :cond_1
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 1823
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1825
    :cond_2
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 1826
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1828
    :cond_3
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 1829
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1831
    :cond_4
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 1832
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1834
    :cond_5
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 1835
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1837
    :cond_6
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 1838
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1840
    :cond_7
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    .line 1841
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1843
    :cond_8
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_9

    .line 1844
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1846
    :cond_9
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_a

    .line 1847
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1849
    :cond_a
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_b

    .line 1850
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1852
    :cond_b
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_c

    .line 1853
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1855
    :cond_c
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_e

    .line 1856
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 1857
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1858
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1859
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1856
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1863
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_e
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    .line 1864
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1866
    :cond_f
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    .line 1867
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1869
    :cond_10
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 1870
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1872
    :cond_11
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    .line 1873
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1875
    :cond_12
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    .line 1876
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1878
    :cond_13
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_14

    .line 1879
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1881
    :cond_14
    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_15

    .line 1882
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1884
    :cond_15
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    array-length v2, v2

    if-lez v2, :cond_17

    .line 1885
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 1886
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->requestContext:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    aget-object v0, v2, v1

    .line 1887
    .local v0, "element":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    if-eqz v0, :cond_16

    .line 1888
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1885
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1892
    .end local v0    # "element":Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .end local v1    # "i":I
    :cond_17
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_19

    .line 1893
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 1894
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalRawLanguage:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1895
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 1896
    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1893
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1900
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_19
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1b

    .line 1901
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 1902
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->additionalCanonicalLanguage:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 1903
    .restart local v0    # "element":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 1904
    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1901
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1908
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method
