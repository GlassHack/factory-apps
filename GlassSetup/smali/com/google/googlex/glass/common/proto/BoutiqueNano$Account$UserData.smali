.class public final Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "BoutiqueNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserData"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1045
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1051
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    .line 1073
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    .line 1046
    return-void
.end method


# virtual methods
.method public clearKey()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
    .locals 1

    .prologue
    .line 1067
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    .line 1068
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    .line 1069
    return-object p0
.end method

.method public clearValue()Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
    .locals 1

    .prologue
    .line 1089
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    .line 1090
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    .line 1091
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1096
    if-ne p1, p0, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return v1

    .line 1097
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1098
    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    .line 1099
    .local v0, "other":Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1100
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 1101
    goto :goto_0

    .line 1099
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    .line 1100
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    .line 1101
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1126
    const/4 v0, 0x0

    .line 1127
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1128
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    .line 1129
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1131
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1132
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    .line 1133
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1135
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1136
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->cachedSize:I

    .line 1137
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    .line 1105
    const/16 v0, 0x11

    .line 1106
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 1107
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 1108
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 1109
    return v0

    .line 1106
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 1108
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1146
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1150
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    .line 1154
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1156
    :sswitch_0
    return-object p0

    .line 1161
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    .line 1162
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    goto :goto_0

    .line 1166
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    .line 1167
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    goto :goto_0

    .line 1146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1042
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1176
    new-instance v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1056
    if-nez p1, :cond_0

    .line 1057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1059
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    .line 1060
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    .line 1061
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1078
    if-nez p1, :cond_0

    .line 1079
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1081
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    .line 1082
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    .line 1083
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
    .line 1114
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1115
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1117
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1118
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BoutiqueNano$Account$UserData;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1122
    return-void
.end method
