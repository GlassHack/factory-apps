.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizedContact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;,
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;,
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;,
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;


# instance fields
.field public address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

.field private bitField0_:I

.field private company_:Ljava/lang/String;

.field public email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

.field public name:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

.field public phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

.field private title_:Ljava/lang/String;

.field public url:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 911
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 912
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 2

    .prologue
    .line 838
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    if-nez v0, :cond_1

    .line 839
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    if-nez v0, :cond_0

    .line 842
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    .line 844
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    return-object v0

    .line 844
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1154
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1148
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    .line 917
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    .line 918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    .line 919
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    .line 920
    invoke-static {}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;->emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    .line 921
    invoke-static {}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;->emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    .line 922
    invoke-static {}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;->emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    .line 923
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->cachedSize:I

    .line 924
    return-object p0
.end method

.method public clearCompany()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 893
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    .line 894
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    .line 895
    return-object p0
.end method

.method public clearTitle()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1

    .prologue
    .line 871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    .line 872
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    .line 873
    return-object p0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 975
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 976
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    if-eqz v5, :cond_0

    .line 977
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 980
    :cond_0
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 981
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 984
    :cond_1
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 985
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 988
    :cond_2
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 989
    const/4 v0, 0x0

    .line 990
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 991
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 992
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 993
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 994
    add-int/lit8 v0, v0, 0x1

    .line 995
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 991
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 999
    .end local v2    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v4, v1

    .line 1000
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 1002
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    array-length v5, v5

    if-lez v5, :cond_7

    .line 1003
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 1004
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    aget-object v2, v5, v3

    .line 1005
    .local v2, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    if-eqz v2, :cond_6

    .line 1006
    const/4 v5, 0x5

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1003
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1011
    .end local v2    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .end local v3    # "i":I
    :cond_7
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    array-length v5, v5

    if-lez v5, :cond_9

    .line 1012
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    .line 1013
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    aget-object v2, v5, v3

    .line 1014
    .local v2, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    if-eqz v2, :cond_8

    .line 1015
    const/4 v5, 0x6

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1012
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1020
    .end local v2    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .end local v3    # "i":I
    :cond_9
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    array-length v5, v5

    if-lez v5, :cond_b

    .line 1021
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    array-length v5, v5

    if-ge v3, v5, :cond_b

    .line 1022
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    aget-object v2, v5, v3

    .line 1023
    .local v2, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    if-eqz v2, :cond_a

    .line 1024
    const/4 v5, 0x7

    invoke-static {v5, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1021
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1029
    .end local v2    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    .end local v3    # "i":I
    :cond_b
    iput v4, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->cachedSize:I

    .line 1030
    return v4
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCompany()Z
    .locals 1

    .prologue
    .line 890
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1038
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1039
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1043
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1044
    :sswitch_0
    return-object p0

    .line 1049
    :sswitch_1
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    if-nez v5, :cond_1

    .line 1050
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;-><init>()V

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    .line 1052
    :cond_1
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1056
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    .line 1057
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    goto :goto_0

    .line 1061
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    .line 1062
    iget v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    goto :goto_0

    .line 1066
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1068
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    if-nez v5, :cond_3

    move v1, v4

    .line 1069
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 1070
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1071
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1073
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 1074
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1075
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1073
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1068
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 1078
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1079
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    goto :goto_0

    .line 1083
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1085
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    if-nez v5, :cond_6

    move v1, v4

    .line 1086
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    .line 1088
    .local v2, "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    if-eqz v1, :cond_5

    .line 1089
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1091
    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 1092
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;-><init>()V

    aput-object v5, v2, v1

    .line 1093
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1094
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1091
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1085
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    :cond_6
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    array-length v1, v5

    goto :goto_3

    .line 1097
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    :cond_7
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;-><init>()V

    aput-object v5, v2, v1

    .line 1098
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1099
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    goto/16 :goto_0

    .line 1103
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1105
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    if-nez v5, :cond_9

    move v1, v4

    .line 1106
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    .line 1108
    .local v2, "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    if-eqz v1, :cond_8

    .line 1109
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    :cond_8
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    .line 1112
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;-><init>()V

    aput-object v5, v2, v1

    .line 1113
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1114
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1111
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1105
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    :cond_9
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    array-length v1, v5

    goto :goto_5

    .line 1117
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    :cond_a
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;-><init>()V

    aput-object v5, v2, v1

    .line 1118
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1119
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    goto/16 :goto_0

    .line 1123
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1125
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    if-nez v5, :cond_c

    move v1, v4

    .line 1126
    .restart local v1    # "i":I
    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    .line 1128
    .local v2, "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    if-eqz v1, :cond_b

    .line 1129
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    :cond_b
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    .line 1132
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;-><init>()V

    aput-object v5, v2, v1

    .line 1133
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1134
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1131
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1125
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    :cond_c
    iget-object v5, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    array-length v1, v5

    goto :goto_7

    .line 1137
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    :cond_d
    new-instance v5, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    invoke-direct {v5}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;-><init>()V

    aput-object v5, v2, v1

    .line 1138
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1139
    iput-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    goto/16 :goto_0

    .line 1039
    nop

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
    .end sparse-switch
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
    .line 404
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;

    move-result-object v0

    return-object v0
.end method

.method public setCompany(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 882
    if-nez p1, :cond_0

    .line 883
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 885
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    .line 886
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    .line 887
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 860
    if-nez p1, :cond_0

    .line 861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 863
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    .line 864
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    .line 865
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
    .line 930
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    if-eqz v2, :cond_0

    .line 931
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->name:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Name;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 933
    :cond_0
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 934
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->title_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 936
    :cond_1
    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 937
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->company_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 939
    :cond_2
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 940
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 941
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->url:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 942
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 943
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 940
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 947
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 948
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 949
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->email:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;

    aget-object v0, v2, v1

    .line 950
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    if-eqz v0, :cond_5

    .line 951
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 948
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 955
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$Email;
    .end local v1    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 956
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 957
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->address:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;

    aget-object v0, v2, v1

    .line 958
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    if-eqz v0, :cond_7

    .line 959
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 956
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 963
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PostalAddress;
    .end local v1    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 964
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 965
    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact;->phoneNumber:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;

    aget-object v0, v2, v1

    .line 966
    .local v0, "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    if-eqz v0, :cond_9

    .line 967
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 964
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 971
    .end local v0    # "element":Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$RecognizedContact$PhoneNumber;
    .end local v1    # "i":I
    :cond_a
    return-void
.end method
