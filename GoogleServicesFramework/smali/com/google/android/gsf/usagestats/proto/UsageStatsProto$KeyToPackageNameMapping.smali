.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyToPackageNameMapping"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPackageKey:Z

.field private hasUidName:Z

.field private packageKey_:I

.field private sharedPackageList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private uidName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->packageKey_:I

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->uidName_:Ljava/lang/String;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->cachedSize:I

    .line 137
    return-void
.end method


# virtual methods
.method public addSharedPackageList(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->cachedSize:I

    if-gez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getSerializedSize()I

    .line 243
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->cachedSize:I

    return v0
.end method

.method public getPackageKey()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->packageKey_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasPackageKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getPackageKey()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasUidName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getUidName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getSharedPackageListList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    .line 258
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 261
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    :cond_2
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->cachedSize:I

    .line 262
    return v2
.end method

.method public getSharedPackageListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->sharedPackageList_:Ljava/util/List;

    return-object v0
.end method

.method public getUidName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->uidName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasPackageKey()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasPackageKey:Z

    return v0
.end method

.method public hasUidName()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasUidName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 271
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 275
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    :sswitch_0
    return-object p0

    .line 281
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    goto :goto_0

    .line 285
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->setUidName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    goto :goto_0

    .line 289
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    invoke-direct {v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;-><init>()V

    .line 290
    .local v1, "value":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 291
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->addSharedPackageList(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 134
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    move-result-object v0

    return-object v0
.end method

.method public setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasPackageKey:Z

    .line 147
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->packageKey_:I

    .line 148
    return-object p0
.end method

.method public setUidName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasUidName:Z

    .line 164
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->uidName_:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasPackageKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getPackageKey()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->hasUidName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getUidName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->getSharedPackageListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    .line 232
    .local v0, "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 234
    .end local v0    # "element":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    :cond_2
    return-void
.end method
