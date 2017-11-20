.class public final Lcom/google/common/a/i;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/i;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/i;

    sput-object v0, Lcom/google/common/a/i;->a:[Lcom/google/common/a/i;

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

    iput-object v0, p0, Lcom/google/common/a/i;->c:Ljava/lang/String;

    .line 927
    iput v1, p0, Lcom/google/common/a/i;->d:I

    .line 946
    iput v1, p0, Lcom/google/common/a/i;->e:I

    .line 900
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/i;
    .locals 2

    .prologue
    .line 1024
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1025
    sparse-switch v0, :sswitch_data_0

    .line 1029
    iget-object v1, p0, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1030
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    .line 1033
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    :sswitch_0
    return-object p0

    .line 1040
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/i;->c:Ljava/lang/String;

    .line 1041
    iget v0, p0, Lcom/google/common/a/i;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/i;->b:I

    goto :goto_0

    .line 1045
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/i;->d:I

    .line 1046
    iget v0, p0, Lcom/google/common/a/i;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/i;->b:I

    goto :goto_0

    .line 1050
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/i;->e:I

    .line 1051
    iget v0, p0, Lcom/google/common/a/i;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/a/i;->b:I

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


# virtual methods
.method public final a(I)Lcom/google/common/a/i;
    .locals 1

    .prologue
    .line 932
    iput p1, p0, Lcom/google/common/a/i;->d:I

    .line 933
    iget v0, p0, Lcom/google/common/a/i;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/i;->b:I

    .line 934
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/common/a/i;
    .locals 1

    .prologue
    .line 910
    if-nez p1, :cond_0

    .line 911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 913
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/i;->c:Ljava/lang/String;

    .line 914
    iget v0, p0, Lcom/google/common/a/i;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/i;->b:I

    .line 915
    return-object p0
.end method

.method public final b(I)Lcom/google/common/a/i;
    .locals 1

    .prologue
    .line 951
    iput p1, p0, Lcom/google/common/a/i;->e:I

    .line 952
    iget v0, p0, Lcom/google/common/a/i;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/a/i;->b:I

    .line 953
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 966
    if-ne p1, p0, :cond_1

    .line 972
    :cond_0
    :goto_0
    return v0

    .line 967
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/i;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 968
    :cond_2
    check-cast p1, Lcom/google/common/a/i;

    .line 969
    iget-object v2, p0, Lcom/google/common/a/i;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/i;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/google/common/a/i;->d:I

    iget v3, p1, Lcom/google/common/a/i;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/i;->e:I

    iget v3, p1, Lcom/google/common/a/i;->e:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 972
    goto :goto_0

    .line 969
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/i;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    .line 972
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    iget v1, p0, Lcom/google/common/a/i;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1003
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/a/i;->c:Ljava/lang/String;

    .line 1004
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1006
    :cond_0
    iget v1, p0, Lcom/google/common/a/i;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1007
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/a/i;->d:I

    .line 1008
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1010
    :cond_1
    iget v1, p0, Lcom/google/common/a/i;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1011
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/a/i;->e:I

    .line 1012
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1014
    :cond_2
    iget-object v1, p0, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1015
    iput v0, p0, Lcom/google/common/a/i;->cachedSize:I

    .line 1016
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 976
    .line 977
    iget-object v0, p0, Lcom/google/common/a/i;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 978
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/i;->d:I

    add-int/2addr v0, v2

    .line 979
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/i;->e:I

    add-int/2addr v0, v2

    .line 980
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 981
    return v0

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/google/common/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 980
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/google/common/a/i;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 986
    iget v0, p0, Lcom/google/common/a/i;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 987
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/a/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 989
    :cond_0
    iget v0, p0, Lcom/google/common/a/i;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 990
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/a/i;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 992
    :cond_1
    iget v0, p0, Lcom/google/common/a/i;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 993
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/a/i;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 995
    :cond_2
    iget-object v0, p0, Lcom/google/common/a/i;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 997
    return-void
.end method
