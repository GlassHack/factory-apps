.class public final Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "BoutiqueNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BoutiqueNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlasswareSyncResponse"
.end annotation


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
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

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
.method public clearHasCompletedTutorialTask()Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
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

.method public clearSyncTimestampUs()Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
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
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2011
    if-ne p1, p0, :cond_1

    .line 2018
    :cond_0
    :goto_0
    return v1

    .line 2012
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2013
    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    .line 2014
    .local v0, "other":Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 2015
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 2016
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 2018
    goto :goto_0

    .line 2016
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    .line 2018
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getHasCompletedTutorialTask()Z
    .locals 1

    .prologue
    .line 1993
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2069
    const/4 v1, 0x0

    .line 2070
    .local v1, "size":I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-eqz v3, :cond_1

    .line 2071
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 2072
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    if-eqz v0, :cond_0

    .line 2073
    const/4 v6, 0x1

    .line 2074
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2071
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2078
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 2079
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    .line 2080
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 2082
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-eqz v3, :cond_4

    .line 2083
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 2084
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    if-eqz v0, :cond_3

    .line 2085
    const/4 v5, 0x3

    .line 2086
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 2083
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2090
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 2091
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 2092
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 2094
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2095
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->cachedSize:I

    .line 2096
    return v1
.end method

.method public getSyncTimestampUs()J
    .locals 2

    .prologue
    .line 1968
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    return-wide v0
.end method

.method public hasHasCompletedTutorialTask()Z
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

.method public hasSyncTimestampUs()Z
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

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2022
    const/16 v1, 0x11

    .line 2023
    .local v1, "result":I
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit16 v1, v2, 0x20f

    .line 2024
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 2030
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 2036
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    add-int v1, v4, v2

    .line 2037
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_7

    :goto_1
    add-int v1, v2, v3

    .line 2038
    return v1

    .line 2026
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2027
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

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

    .line 2032
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2033
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v4, v2

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
    .end local v0    # "i":I
    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    .line 2037
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2104
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2105
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2109
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 2110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    .line 2113
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2115
    :sswitch_0
    return-object p0

    .line 2120
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2121
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-nez v5, :cond_3

    move v1, v4

    .line 2122
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 2123
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-eqz v5, :cond_2

    .line 2124
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2126
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .line 2127
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 2128
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;-><init>()V

    aput-object v6, v5, v1

    .line 2129
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2130
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2127
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2121
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v1, v5

    goto :goto_1

    .line 2133
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;-><init>()V

    aput-object v6, v5, v1

    .line 2134
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2138
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    .line 2139
    iget v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    goto :goto_0

    .line 2143
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2144
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-nez v5, :cond_6

    move v1, v4

    .line 2145
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 2146
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-eqz v5, :cond_5

    .line 2147
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2149
    :cond_5
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    .line 2150
    :goto_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 2151
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;-><init>()V

    aput-object v6, v5, v1

    .line 2152
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2153
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2150
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2144
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    :cond_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v1, v5

    goto :goto_3

    .line 2156
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    :cond_7
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;-><init>()V

    aput-object v6, v5, v1

    .line 2157
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2161
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    .line 2162
    iget v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1957
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public setHasCompletedTutorialTask(Z)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 1
    .param p1, "value"    # Z

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

.method public setSyncTimestampUs(J)Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;
    .locals 1
    .param p1, "value"    # J

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

    .line 2043
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    if-eqz v2, :cond_1

    .line 2044
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->installedGlassware:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 2045
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    if-eqz v0, :cond_0

    .line 2046
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2044
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2050
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2051
    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->syncTimestampUs_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2053
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    if-eqz v2, :cond_4

    .line 2054
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->account:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    .line 2055
    .local v0, "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    if-eqz v0, :cond_3

    .line 2056
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2054
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2060
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 2061
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->hasCompletedTutorialTask_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2063
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$GlasswareSyncResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2065
    return-void
.end method
