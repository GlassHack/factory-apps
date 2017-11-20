.class public final Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;


# instance fields
.field public account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

.field private bitField0_:I

.field private hasCompletedTutorialTask_:Z

.field public installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

.field private syncTimestampUs_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1960
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1961
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1966
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    .line 1985
    sget-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 1988
    sget-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 1991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 1961
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 1

    .prologue
    .line 2177
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 1

    .prologue
    .line 2171
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    return-object v0
.end method


# virtual methods
.method public final clearHasCompletedTutorialTask()Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 1

    .prologue
    .line 2004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 2005
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    .line 2006
    return-object p0
.end method

.method public final clearSyncTimestampUs()Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 2

    .prologue
    .line 1979
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    .line 1980
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    .line 1981
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2011
    if-ne p1, p0, :cond_1

    .line 2018
    :cond_0
    :goto_0
    return v0

    .line 2012
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2013
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    .line 2014
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 2015
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 2016
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    iget-boolean v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 2018
    goto :goto_0

    .line 2016
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    .line 2018
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getHasCompletedTutorialTask()Z
    .locals 1

    .prologue
    .line 1993
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2069
    .line 2070
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-eqz v0, :cond_1

    .line 2071
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 2072
    if-eqz v5, :cond_0

    .line 2073
    const/4 v6, 0x1

    .line 2074
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 2071
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2078
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 2079
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    .line 2080
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2082
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-eqz v2, :cond_5

    .line 2083
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    .line 2084
    if-eqz v4, :cond_4

    .line 2085
    const/4 v5, 0x3

    .line 2086
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2083
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2090
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 2091
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 2092
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2094
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2095
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->cachedSize:I

    .line 2096
    return v0
.end method

.method public final getSyncTimestampUs()J
    .locals 2

    .prologue
    .line 1968
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    return-wide v0
.end method

.method public final hasHasCompletedTutorialTask()Z
    .locals 1

    .prologue
    .line 2001
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSyncTimestampUs()Z
    .locals 1

    .prologue
    .line 1976
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2022
    .line 2023
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    .line 2024
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    .line 2030
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-nez v0, :cond_4

    mul-int/lit8 v2, v2, 0x1f

    .line 2036
    :cond_1
    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 2037
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_7

    :goto_1
    add-int/2addr v0, v1

    .line 2038
    return v0

    :cond_2
    move v2, v0

    move v0, v1

    .line 2026
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2027
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v1

    :goto_3
    add-int/2addr v2, v3

    .line 2026
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2027
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v0, v1

    .line 2032
    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2033
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v1

    :goto_5
    add-int/2addr v2, v3

    .line 2032
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2033
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;->hashCode()I

    move-result v2

    goto :goto_5

    .line 2036
    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    .line 2037
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2104
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2105
    sparse-switch v0, :sswitch_data_0

    .line 2109
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 2110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    .line 2113
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2115
    :sswitch_0
    return-object p0

    .line 2120
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2121
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-nez v0, :cond_3

    move v0, v1

    .line 2122
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 2123
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-eqz v3, :cond_2

    .line 2124
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2126
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 2127
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 2128
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;-><init>()V

    aput-object v3, v2, v0

    .line 2129
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2130
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2127
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2121
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v0, v0

    goto :goto_1

    .line 2133
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;-><init>()V

    aput-object v3, v2, v0

    .line 2134
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2138
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    .line 2139
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    goto :goto_0

    .line 2143
    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 2144
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-nez v0, :cond_6

    move v0, v1

    .line 2145
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 2146
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-eqz v3, :cond_5

    .line 2147
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2149
    :cond_5
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 2150
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_7

    .line 2151
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;-><init>()V

    aput-object v3, v2, v0

    .line 2152
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2153
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2150
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2144
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v0, v0

    goto :goto_3

    .line 2156
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    new-instance v3, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;-><init>()V

    aput-object v3, v2, v0

    .line 2157
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2161
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 2162
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 2105
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1957
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setHasCompletedTutorialTask(Z)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 1

    .prologue
    .line 1996
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 1997
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    .line 1998
    return-object p0
.end method

.method public final setSyncTimestampUs(J)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 1

    .prologue
    .line 1971
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    .line 1972
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    .line 1973
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2043
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-eqz v1, :cond_1

    .line 2044
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 2045
    if-eqz v4, :cond_0

    .line 2046
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2044
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2050
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 2051
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2053
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-eqz v1, :cond_4

    .line 2054
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 2055
    if-eqz v3, :cond_3

    .line 2056
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2054
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2060
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 2061
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2063
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2065
    return-void
.end method
