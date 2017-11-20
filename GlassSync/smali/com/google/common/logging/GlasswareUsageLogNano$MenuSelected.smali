.class public final Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareUsageLogNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlasswareUsageLogNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuSelected"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;


# instance fields
.field private bitField0_:I

.field private numberOfItems_:I

.field private optionValue_:Ljava/lang/String;

.field private position_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    sput-object v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->EMPTY_ARRAY:[Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 900
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 905
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    .line 927
    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    .line 946
    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    .line 900
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1060
    new-instance v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    invoke-direct {v0}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    return-object v0
.end method


# virtual methods
.method public clearNumberOfItems()Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    .line 941
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    .line 942
    return-object p0
.end method

.method public clearOptionValue()Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 1

    .prologue
    .line 921
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    .line 922
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    .line 923
    return-object p0
.end method

.method public clearPosition()Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    .line 960
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    .line 961
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 966
    if-ne p1, p0, :cond_1

    .line 972
    :cond_0
    :goto_0
    return v1

    .line 967
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 968
    check-cast v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    .line 969
    .local v0, "other":Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    iget v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    iget v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 972
    goto :goto_0

    .line 969
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    .line 972
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 929
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    return v0
.end method

.method public getOptionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1003
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    .line 1004
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1006
    :cond_0
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1007
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    .line 1008
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1010
    :cond_1
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1011
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    .line 1012
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1014
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1015
    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->cachedSize:I

    .line 1016
    return v0
.end method

.method public hasNumberOfItems()Z
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptionValue()Z
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPosition()Z
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 976
    const/16 v0, 0x11

    .line 977
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 978
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    add-int v0, v1, v3

    .line 979
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    add-int v0, v1, v3

    .line 980
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 981
    return v0

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 980
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1025
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1029
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1030
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    .line 1033
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1035
    :sswitch_0
    return-object p0

    .line 1040
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    .line 1041
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    goto :goto_0

    .line 1045
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    .line 1046
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    goto :goto_0

    .line 1050
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    .line 1051
    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    goto :goto_0

    .line 1025
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 896
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;

    move-result-object v0

    return-object v0
.end method

.method public setNumberOfItems(I)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 932
    iput p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    .line 933
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    .line 934
    return-object p0
.end method

.method public setOptionValue(Ljava/lang/String;)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 910
    if-nez p1, :cond_0

    .line 911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 913
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    .line 914
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    .line 915
    return-object p0
.end method

.method public setPosition(I)Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 951
    iput p1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    .line 952
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    .line 953
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 987
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->optionValue_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 989
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 990
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->numberOfItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 992
    :cond_1
    iget v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 993
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->position_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 995
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/GlasswareUsageLogNano$MenuSelected;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 997
    return-void
.end method
