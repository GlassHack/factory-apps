.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageInfo"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPkgName:Z

.field private hasVersionCode:Z

.field private pkgName_:Ljava/lang/String;

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->pkgName_:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->versionCode_:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getSerializedSize()I

    .line 76
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->cachedSize:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->pkgName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasPkgName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_1
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->cachedSize:I

    .line 91
    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->versionCode_:I

    return v0
.end method

.method public hasPkgName()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasPkgName:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 100
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :sswitch_0
    return-object p0

    .line 110
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->setPkgName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    goto :goto_0

    .line 114
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->setVersionCode(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public setPkgName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasPkgName:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->pkgName_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasVersionCode:Z

    .line 37
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->versionCode_:I

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasPkgName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 67
    :cond_1
    return-void
.end method
