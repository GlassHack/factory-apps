.class public final Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ClientInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ClientInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation


# static fields
.field public static final CLIENT_ANDROID_AT_HOME:I = 0xd

.field public static final CLIENT_ANDROID_PHONE:I = 0x5

.field public static final CLIENT_ANDROID_TABLET:I = 0x2

.field public static final CLIENT_CLI:I = 0x3

.field public static final CLIENT_ECOUTEZ:I = 0xb

.field public static final CLIENT_GCHAT:I = 0x1

.field public static final CLIENT_GLASS:I = 0xf

.field public static final CLIENT_GOGGLES:I = 0x7

.field public static final CLIENT_GOOGLE_TV:I = 0x6

.field public static final CLIENT_GRECO2:I = 0x9

.field public static final CLIENT_HANGOUTS:I = 0xa

.field public static final CLIENT_LOADTEST:I = 0xc

.field public static final CLIENT_MAJEL_UNIVERSAL:I = 0x8

.field public static final CLIENT_PROBER:I = 0xe

.field public static final CLIENT_UNKNOWN:I = 0x0

.field public static final CLIENT_WEB:I = 0x4

.field public static final SAFESEARCH_LEVEL_MODERATE:I = 0x1

.field public static final SAFESEARCH_LEVEL_NONE:I = 0x0

.field public static final SAFESEARCH_LEVEL_STRICT:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;


# instance fields
.field private bitField0_:I

.field public browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

.field public capabilities:[I

.field private clientName_:Ljava/lang/String;

.field private clientVersionNumber_:I

.field private clientVersion_:Ljava/lang/String;

.field private client_:I

.field private countryCode_:Ljava/lang/String;

.field private deprecatedUserAgent_:Ljava/lang/String;

.field private gservicesCountryCode_:Ljava/lang/String;

.field private ipAddress_:Ljava/lang/String;

.field private languageCode_:Ljava/lang/String;

.field public previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

.field private safesearchLevel_:I

.field public screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

.field private systemTimeMs_:J

.field private timeZone_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1066
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clear()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1067
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 2

    .prologue
    .line 788
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    if-nez v0, :cond_1

    .line 789
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 791
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    if-nez v0, :cond_0

    .line 792
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    sput-object v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 794
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    return-object v0

    .line 794
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1371
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1365
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1070
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 1071
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    .line 1072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    .line 1073
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    .line 1074
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    .line 1075
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    .line 1076
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    .line 1077
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    .line 1078
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 1079
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    .line 1080
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    .line 1081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    .line 1082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    .line 1083
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    .line 1084
    iput-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 1085
    iput-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 1086
    iput-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 1087
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->cachedSize:I

    .line 1088
    return-object p0
.end method

.method public clearClient()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    .line 816
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 817
    return-object p0
.end method

.method public clearClientName()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    .line 838
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 839
    return-object p0
.end method

.method public clearClientVersion()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    .line 860
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 861
    return-object p0
.end method

.method public clearClientVersionNumber()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    .line 879
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 880
    return-object p0
.end method

.method public clearCountryCode()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    .line 926
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 927
    return-object p0
.end method

.method public clearDeprecatedUserAgent()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 1010
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    .line 1011
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 1012
    return-object p0
.end method

.method public clearGservicesCountryCode()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 947
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 948
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 949
    return-object p0
.end method

.method public clearIpAddress()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 1032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    .line 1033
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 1034
    return-object p0
.end method

.method public clearLanguageCode()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    .line 904
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 905
    return-object p0
.end method

.method public clearSafesearchLevel()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    .line 1052
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 1053
    return-object p0
.end method

.method public clearSystemTimeMs()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 2

    .prologue
    .line 966
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    .line 967
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 968
    return-object p0
.end method

.method public clearTimeZone()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 988
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    .line 989
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 990
    return-object p0
.end method

.method public getClient()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    return v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersionNumber()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeprecatedUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getGservicesCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSafesearchLevel()I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1148
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 1149
    .local v3, "size":I
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1150
    const/4 v4, 0x1

    iget v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1153
    :cond_0
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 1154
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1157
    :cond_1
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 1158
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1161
    :cond_2
    iget-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 1162
    const/4 v0, 0x0

    .line 1163
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 1164
    iget-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    aget v1, v4, v2

    .line 1165
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1168
    .end local v1    # "element":I
    :cond_3
    add-int/2addr v3, v0

    .line 1169
    iget-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1171
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_4
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    .line 1172
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1175
    :cond_5
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_6

    .line 1176
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1179
    :cond_6
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_7

    .line 1180
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1183
    :cond_7
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_8

    .line 1184
    const/16 v4, 0x8

    iget v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1187
    :cond_8
    iget-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    if-eqz v4, :cond_9

    .line 1188
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1191
    :cond_9
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_a

    .line 1192
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1195
    :cond_a
    iget-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    if-eqz v4, :cond_b

    .line 1196
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1199
    :cond_b
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_c

    .line 1200
    const/16 v4, 0xc

    iget-wide v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    invoke-static {v4, v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1203
    :cond_c
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_d

    .line 1204
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1207
    :cond_d
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_e

    .line 1208
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1211
    :cond_e
    iget-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    if-eqz v4, :cond_f

    .line 1212
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1215
    :cond_f
    iget v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_10

    .line 1216
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1219
    :cond_10
    iput v3, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->cachedSize:I

    .line 1220
    return v3
.end method

.method public getSystemTimeMs()J
    .locals 2

    .prologue
    .line 955
    iget-wide v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public hasClient()Z
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientName()Z
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientVersion()Z
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientVersionNumber()Z
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeprecatedUserAgent()Z
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGservicesCountryCode()Z
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIpAddress()Z
    .locals 1

    .prologue
    .line 1029
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguageCode()Z
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSafesearchLevel()Z
    .locals 1

    .prologue
    .line 1048
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSystemTimeMs()Z
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

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
    .line 759
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 10
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 1229
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 1233
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1234
    :sswitch_0
    return-object p0

    .line 1239
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    .line 1240
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 1244
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    .line 1245
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 1249
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    .line 1250
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto :goto_0

    .line 1254
    :sswitch_4
    const/16 v8, 0x20

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1256
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    if-nez v8, :cond_2

    move v1, v7

    .line 1257
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1258
    .local v4, "newArray":[I
    if-eqz v1, :cond_1

    .line 1259
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1261
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 1262
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1263
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1261
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1256
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    array-length v1, v8

    goto :goto_1

    .line 1266
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1267
    iput-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    goto :goto_0

    .line 1271
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1272
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1274
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 1275
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1276
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_4

    .line 1277
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1280
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1281
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    if-nez v8, :cond_6

    move v1, v7

    .line 1282
    .restart local v1    # "i":I
    :goto_4
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 1283
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_5

    .line 1284
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1286
    :cond_5
    :goto_5
    array-length v8, v4

    if-ge v1, v8, :cond_7

    .line 1287
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 1286
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1281
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_6
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    array-length v1, v8

    goto :goto_4

    .line 1289
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_7
    iput-object v4, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    .line 1290
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1294
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    .line 1295
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1299
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    .line 1300
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1304
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    .line 1305
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1309
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    .line 1310
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1314
    :sswitch_a
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    if-nez v8, :cond_8

    .line 1315
    new-instance v8, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-direct {v8}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 1317
    :cond_8
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1321
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    .line 1322
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1326
    :sswitch_c
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    if-nez v8, :cond_9

    .line 1327
    new-instance v8, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v8}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 1329
    :cond_9
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1333
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    .line 1334
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1338
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    .line 1339
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1343
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    .line 1344
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1348
    :sswitch_10
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    if-nez v8, :cond_a

    .line 1349
    new-instance v8, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-direct {v8}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 1351
    :cond_a
    iget-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1355
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 1356
    iget v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    goto/16 :goto_0

    .line 1229
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x40 -> :sswitch_9
        0x4a -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
        0x60 -> :sswitch_d
        0x6a -> :sswitch_e
        0x70 -> :sswitch_f
        0x7a -> :sswitch_10
        0x82 -> :sswitch_11
    .end sparse-switch
.end method

.method public setClient(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 807
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    .line 808
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 809
    return-object p0
.end method

.method public setClientName(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 829
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    .line 830
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 831
    return-object p0
.end method

.method public setClientVersion(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 848
    if-nez p1, :cond_0

    .line 849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 851
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    .line 852
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 853
    return-object p0
.end method

.method public setClientVersionNumber(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 870
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    .line 871
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 872
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 914
    if-nez p1, :cond_0

    .line 915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 917
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    .line 918
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 919
    return-object p0
.end method

.method public setDeprecatedUserAgent(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 999
    if-nez p1, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1002
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    .line 1003
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 1004
    return-object p0
.end method

.method public setGservicesCountryCode(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 936
    if-nez p1, :cond_0

    .line 937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 939
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 940
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 941
    return-object p0
.end method

.method public setIpAddress(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1021
    if-nez p1, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1024
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    .line 1025
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 1026
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 892
    if-nez p1, :cond_0

    .line 893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 895
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    .line 896
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 897
    return-object p0
.end method

.method public setSafesearchLevel(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1043
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    .line 1044
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 1045
    return-object p0
.end method

.method public setSystemTimeMs(J)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 958
    iput-wide p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    .line 959
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 960
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 977
    if-nez p1, :cond_0

    .line 978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 980
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    .line 981
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    .line 982
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
    .line 1094
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1095
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1097
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1098
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1100
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1101
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1103
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1105
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1108
    .end local v0    # "i":I
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1109
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1111
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1112
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1114
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_6

    .line 1115
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1117
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_7

    .line 1118
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1120
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    if-eqz v1, :cond_8

    .line 1121
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1123
    :cond_8
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    .line 1124
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1126
    :cond_9
    iget-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    if-eqz v1, :cond_a

    .line 1127
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1129
    :cond_a
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    .line 1130
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1132
    :cond_b
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_c

    .line 1133
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1135
    :cond_c
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_d

    .line 1136
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1138
    :cond_d
    iget-object v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    if-eqz v1, :cond_e

    .line 1139
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1141
    :cond_e
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_f

    .line 1142
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1144
    :cond_f
    return-void
.end method
