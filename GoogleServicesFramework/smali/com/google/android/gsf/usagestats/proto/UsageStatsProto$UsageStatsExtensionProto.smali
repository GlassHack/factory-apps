.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsageStatsExtensionProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private dataUsage_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

.field private hasDataUsage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1904
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->dataUsage_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 1947
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->cachedSize:I

    .line 1904
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1950
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1952
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->getSerializedSize()I

    .line 1954
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->cachedSize:I

    return v0
.end method

.method public getDataUsage()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->dataUsage_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1959
    const/4 v0, 0x0

    .line 1960
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->hasDataUsage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1961
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->getDataUsage()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1964
    :cond_0
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->cachedSize:I

    .line 1965
    return v0
.end method

.method public hasDataUsage()Z
    .locals 1

    .prologue
    .line 1910
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->hasDataUsage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1974
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1978
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1979
    :sswitch_0
    return-object p0

    .line 1984
    :sswitch_1
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;-><init>()V

    .line 1985
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1986
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->setDataUsage(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    goto :goto_0

    .line 1974
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 1901
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    move-result-object v0

    return-object v0
.end method

.method public setDataUsage(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .prologue
    .line 1913
    if-nez p1, :cond_0

    .line 1914
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1916
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->hasDataUsage:Z

    .line 1917
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->dataUsage_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 1918
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
    .line 1942
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->hasDataUsage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->getDataUsage()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1945
    :cond_0
    return-void
.end method
