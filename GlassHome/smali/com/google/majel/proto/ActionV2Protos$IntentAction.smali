.class public final Lcom/google/majel/proto/ActionV2Protos$IntentAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentAction"
.end annotation


# static fields
.field public static final INTENT_TYPE_CALL_VOICEMAIL:I = 0x9

.field public static final INTENT_TYPE_FITNESS:I = 0x2

.field public static final INTENT_TYPE_FLIGHT_CHECKIN:I = 0x6

.field public static final INTENT_TYPE_GMM_ACTION:I = 0x8

.field public static final INTENT_TYPE_PHOTO_CAPTURE:I = 0x1

.field public static final INTENT_TYPE_RESERVE_RESTAURANT:I = 0x3

.field public static final INTENT_TYPE_RESERVE_TAXI:I = 0x5

.field public static final INTENT_TYPE_SEARCH:I = 0x7

.field public static final INTENT_TYPE_VIDEO_CAPTURE:I = 0x4

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$IntentAction;


# instance fields
.field private appInstallNeededText_:Ljava/lang/String;

.field private bitField0_:I

.field private confirmationText_:Ljava/lang/String;

.field private disclaimerAppMessage_:Ljava/lang/String;

.field private disclaimerLinkTest_:Ljava/lang/String;

.field private disclaimerLinkUrl_:Ljava/lang/String;

.field private displayImageUrl_:Ljava/lang/String;

.field private displayImage_:[B

.field private displayText_:Ljava/lang/String;

.field private downloadAppMessage_:Ljava/lang/String;

.field private explicitAppPackageName_:Ljava/lang/String;

.field private explicitApp_:Z

.field public intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

.field private intentType_:I

.field private minorDisplayText_:Ljava/lang/String;

.field public supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14918
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 14919
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->clear()Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    .line 14920
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 2

    .prologue
    .line 14619
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    if-nez v0, :cond_1

    .line 14620
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 14622
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    if-nez v0, :cond_0

    .line 14623
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    .line 14625
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14627
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    return-object v0

    .line 14625
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15212
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$IntentAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 15206
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$IntentAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14923
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14924
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    .line 14925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayText_:Ljava/lang/String;

    .line 14926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->minorDisplayText_:Ljava/lang/String;

    .line 14927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->confirmationText_:Ljava/lang/String;

    .line 14928
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImage_:[B

    .line 14929
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImageUrl_:Ljava/lang/String;

    .line 14930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->appInstallNeededText_:Ljava/lang/String;

    .line 14931
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intentType_:I

    .line 14932
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitApp_:Z

    .line 14933
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitAppPackageName_:Ljava/lang/String;

    .line 14934
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$MediaItem;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    .line 14935
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->downloadAppMessage_:Ljava/lang/String;

    .line 14936
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerAppMessage_:Ljava/lang/String;

    .line 14937
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkTest_:Ljava/lang/String;

    .line 14938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkUrl_:Ljava/lang/String;

    .line 14939
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->cachedSize:I

    .line 14940
    return-object p0
.end method

.method public clearAppInstallNeededText()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14762
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->appInstallNeededText_:Ljava/lang/String;

    .line 14763
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14764
    return-object p0
.end method

.method public clearConfirmationText()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14696
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->confirmationText_:Ljava/lang/String;

    .line 14697
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14698
    return-object p0
.end method

.method public clearDisclaimerAppMessage()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerAppMessage_:Ljava/lang/String;

    .line 14870
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14871
    return-object p0
.end method

.method public clearDisclaimerLinkTest()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14891
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkTest_:Ljava/lang/String;

    .line 14892
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14893
    return-object p0
.end method

.method public clearDisclaimerLinkUrl()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkUrl_:Ljava/lang/String;

    .line 14914
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14915
    return-object p0
.end method

.method public clearDisplayImage()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14718
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImage_:[B

    .line 14719
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14720
    return-object p0
.end method

.method public clearDisplayImageUrl()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14740
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImageUrl_:Ljava/lang/String;

    .line 14741
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14742
    return-object p0
.end method

.method public clearDisplayText()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayText_:Ljava/lang/String;

    .line 14653
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14654
    return-object p0
.end method

.method public clearDownloadAppMessage()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->downloadAppMessage_:Ljava/lang/String;

    .line 14848
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14849
    return-object p0
.end method

.method public clearExplicitApp()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitApp_:Z

    .line 14801
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14802
    return-object p0
.end method

.method public clearExplicitAppPackageName()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14822
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitAppPackageName_:Ljava/lang/String;

    .line 14823
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14824
    return-object p0
.end method

.method public clearIntentType()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14781
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intentType_:I

    .line 14782
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14783
    return-object p0
.end method

.method public clearMinorDisplayText()Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1

    .prologue
    .line 14674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->minorDisplayText_:Ljava/lang/String;

    .line 14675
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14676
    return-object p0
.end method

.method public getAppInstallNeededText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14748
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->appInstallNeededText_:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14682
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->confirmationText_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerAppMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14855
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerAppMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerLinkTest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14877
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkTest_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14899
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImage()[B
    .locals 1

    .prologue
    .line 14704
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImage_:[B

    return-object v0
.end method

.method public getDisplayImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14726
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14638
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayText_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadAppMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14833
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->downloadAppMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicitApp()Z
    .locals 1

    .prologue
    .line 14789
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitApp_:Z

    return v0
.end method

.method public getExplicitAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14808
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitAppPackageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentType()I
    .locals 1

    .prologue
    .line 14770
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intentType_:I

    return v0
.end method

.method public getMinorDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14660
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->minorDisplayText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 15005
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 15006
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 15007
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 15008
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    aget-object v0, v3, v1

    .line 15009
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    if-eqz v0, :cond_0

    .line 15010
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15007
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15015
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 15016
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayText_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15019
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 15020
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImage_:[B

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 15023
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    array-length v3, v3

    if-lez v3, :cond_5

    .line 15024
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 15025
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    aget-object v0, v3, v1

    .line 15026
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    if-eqz v0, :cond_4

    .line 15027
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15024
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15032
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .end local v1    # "i":I
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 15033
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImageUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15036
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    .line 15037
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->minorDisplayText_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15040
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    .line 15041
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->confirmationText_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15044
    :cond_8
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_9

    .line 15045
    const/16 v3, 0x8

    iget v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intentType_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 15048
    :cond_9
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a

    .line 15049
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitApp_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 15052
    :cond_a
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_b

    .line 15053
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->appInstallNeededText_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15056
    :cond_b
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_c

    .line 15057
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitAppPackageName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15060
    :cond_c
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_d

    .line 15061
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->downloadAppMessage_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15064
    :cond_d
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_e

    .line 15065
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerAppMessage_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15068
    :cond_e
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_f

    .line 15069
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkTest_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15072
    :cond_f
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_10

    .line 15073
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15076
    :cond_10
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->cachedSize:I

    .line 15077
    return v2
.end method

.method public hasAppInstallNeededText()Z
    .locals 1

    .prologue
    .line 14759
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfirmationText()Z
    .locals 1

    .prologue
    .line 14693
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisclaimerAppMessage()Z
    .locals 1

    .prologue
    .line 14866
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisclaimerLinkTest()Z
    .locals 1

    .prologue
    .line 14888
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisclaimerLinkUrl()Z
    .locals 1

    .prologue
    .line 14910
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayImage()Z
    .locals 1

    .prologue
    .line 14715
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayImageUrl()Z
    .locals 1

    .prologue
    .line 14737
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayText()Z
    .locals 1

    .prologue
    .line 14649
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDownloadAppMessage()Z
    .locals 1

    .prologue
    .line 14844
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExplicitApp()Z
    .locals 1

    .prologue
    .line 14797
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExplicitAppPackageName()Z
    .locals 1

    .prologue
    .line 14819
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIntentType()Z
    .locals 1

    .prologue
    .line 14778
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinorDisplayText()Z
    .locals 1

    .prologue
    .line 14671
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 14602
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 15085
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 15086
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 15090
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 15091
    :sswitch_0
    return-object p0

    .line 15096
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 15098
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    if-nez v5, :cond_2

    move v1, v4

    .line 15099
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    .line 15101
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    if-eqz v1, :cond_1

    .line 15102
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15104
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 15105
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;-><init>()V

    aput-object v5, v2, v1

    .line 15106
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15107
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15104
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15098
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    array-length v1, v5

    goto :goto_1

    .line 15110
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;-><init>()V

    aput-object v5, v2, v1

    .line 15111
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15112
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    goto :goto_0

    .line 15116
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayText_:Ljava/lang/String;

    .line 15117
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto :goto_0

    .line 15121
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImage_:[B

    .line 15122
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto :goto_0

    .line 15126
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 15128
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    if-nez v5, :cond_5

    move v1, v4

    .line 15129
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    .line 15131
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    if-eqz v1, :cond_4

    .line 15132
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15134
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 15135
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$MediaItem;-><init>()V

    aput-object v5, v2, v1

    .line 15136
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15137
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 15134
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 15128
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    array-length v1, v5

    goto :goto_3

    .line 15140
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$MediaItem;-><init>()V

    aput-object v5, v2, v1

    .line 15141
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15142
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    goto/16 :goto_0

    .line 15146
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImageUrl_:Ljava/lang/String;

    .line 15147
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15151
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->minorDisplayText_:Ljava/lang/String;

    .line 15152
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15156
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->confirmationText_:Ljava/lang/String;

    .line 15157
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15161
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intentType_:I

    .line 15162
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15166
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitApp_:Z

    .line 15167
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15171
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->appInstallNeededText_:Ljava/lang/String;

    .line 15172
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15176
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitAppPackageName_:Ljava/lang/String;

    .line 15177
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15181
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->downloadAppMessage_:Ljava/lang/String;

    .line 15182
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15186
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerAppMessage_:Ljava/lang/String;

    .line 15187
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15191
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkTest_:Ljava/lang/String;

    .line 15192
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15196
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkUrl_:Ljava/lang/String;

    .line 15197
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    goto/16 :goto_0

    .line 15086
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
    .end sparse-switch
.end method

.method public setAppInstallNeededText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14751
    if-nez p1, :cond_0

    .line 14752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14754
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->appInstallNeededText_:Ljava/lang/String;

    .line 14755
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14756
    return-object p0
.end method

.method public setConfirmationText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14685
    if-nez p1, :cond_0

    .line 14686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14688
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->confirmationText_:Ljava/lang/String;

    .line 14689
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14690
    return-object p0
.end method

.method public setDisclaimerAppMessage(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14858
    if-nez p1, :cond_0

    .line 14859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14861
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerAppMessage_:Ljava/lang/String;

    .line 14862
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14863
    return-object p0
.end method

.method public setDisclaimerLinkTest(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14880
    if-nez p1, :cond_0

    .line 14881
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14883
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkTest_:Ljava/lang/String;

    .line 14884
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14885
    return-object p0
.end method

.method public setDisclaimerLinkUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14902
    if-nez p1, :cond_0

    .line 14903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14905
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkUrl_:Ljava/lang/String;

    .line 14906
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14907
    return-object p0
.end method

.method public setDisplayImage([B)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 14707
    if-nez p1, :cond_0

    .line 14708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14710
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImage_:[B

    .line 14711
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14712
    return-object p0
.end method

.method public setDisplayImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14729
    if-nez p1, :cond_0

    .line 14730
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14732
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImageUrl_:Ljava/lang/String;

    .line 14733
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14734
    return-object p0
.end method

.method public setDisplayText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14641
    if-nez p1, :cond_0

    .line 14642
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14644
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayText_:Ljava/lang/String;

    .line 14645
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14646
    return-object p0
.end method

.method public setDownloadAppMessage(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14836
    if-nez p1, :cond_0

    .line 14837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14839
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->downloadAppMessage_:Ljava/lang/String;

    .line 14840
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14841
    return-object p0
.end method

.method public setExplicitApp(Z)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 14792
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitApp_:Z

    .line 14793
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14794
    return-object p0
.end method

.method public setExplicitAppPackageName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14811
    if-nez p1, :cond_0

    .line 14812
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14814
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitAppPackageName_:Ljava/lang/String;

    .line 14815
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14816
    return-object p0
.end method

.method public setIntentType(I)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 14773
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intentType_:I

    .line 14774
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14775
    return-object p0
.end method

.method public setMinorDisplayText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$IntentAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14663
    if-nez p1, :cond_0

    .line 14664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14666
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->minorDisplayText_:Ljava/lang/String;

    .line 14667
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    .line 14668
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
    .line 14946
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 14947
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 14948
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intent:[Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;

    aget-object v0, v2, v1

    .line 14949
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    if-eqz v0, :cond_0

    .line 14950
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14947
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14954
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$AndroidIntent;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 14955
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14957
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 14958
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImage_:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 14960
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 14961
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 14962
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->supportedApp:[Lcom/google/majel/proto/ActionV2Protos$MediaItem;

    aget-object v0, v2, v1

    .line 14963
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    if-eqz v0, :cond_4

    .line 14964
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 14961
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14968
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$MediaItem;
    .end local v1    # "i":I
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 14969
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->displayImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14971
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 14972
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->minorDisplayText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14974
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    .line 14975
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->confirmationText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14977
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_9

    .line 14978
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->intentType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 14980
    :cond_9
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a

    .line 14981
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitApp_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 14983
    :cond_a
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    .line 14984
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->appInstallNeededText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14986
    :cond_b
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_c

    .line 14987
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->explicitAppPackageName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14989
    :cond_c
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_d

    .line 14990
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->downloadAppMessage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14992
    :cond_d
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_e

    .line 14993
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerAppMessage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14995
    :cond_e
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_f

    .line 14996
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkTest_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14998
    :cond_f
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_10

    .line 14999
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$IntentAction;->disclaimerLinkUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15001
    :cond_10
    return-void
.end method
