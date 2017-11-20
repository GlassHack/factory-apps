.class public final Lcom/google/common/a/d;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/d;


# instance fields
.field public b:[I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/common/a/c;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/google/common/a/g;

.field private m:Lcom/google/common/a/l;

.field private n:Lcom/google/common/a/n;

.field private o:Lcom/google/common/a/p;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/d;

    sput-object v0, Lcom/google/common/a/d;->a:[Lcom/google/common/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 702
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 713
    iput-wide v2, p0, Lcom/google/common/a/d;->d:J

    .line 732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    .line 754
    iput-wide v2, p0, Lcom/google/common/a/d;->f:J

    .line 773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/d;->g:Ljava/lang/String;

    .line 795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/d;->h:Ljava/lang/String;

    .line 836
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/d;->j:Ljava/lang/String;

    .line 858
    iput-boolean v1, p0, Lcom/google/common/a/d;->k:Z

    .line 953
    iput v1, p0, Lcom/google/common/a/d;->p:I

    .line 972
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/common/a/d;->b:[I

    .line 702
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/d;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1146
    sparse-switch v0, :sswitch_data_0

    .line 1150
    iget-object v1, p0, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    .line 1154
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    :sswitch_0
    return-object p0

    .line 1161
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/d;->d:J

    .line 1162
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/d;->c:I

    goto :goto_0

    .line 1166
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/d;->g:Ljava/lang/String;

    .line 1167
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/a/d;->c:I

    goto :goto_0

    .line 1171
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/d;->h:Ljava/lang/String;

    .line 1172
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/a/d;->c:I

    goto :goto_0

    .line 1176
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    if-nez v0, :cond_2

    .line 1177
    new-instance v0, Lcom/google/common/a/c;

    invoke-direct {v0}, Lcom/google/common/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    .line 1179
    :cond_2
    iget-object v0, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1183
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/d;->f:J

    .line 1184
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/a/d;->c:I

    goto :goto_0

    .line 1188
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/d;->j:Ljava/lang/String;

    .line 1189
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/a/d;->c:I

    goto :goto_0

    .line 1193
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    .line 1194
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/d;->c:I

    goto :goto_0

    .line 1198
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/a/d;->k:Z

    .line 1199
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/a/d;->c:I

    goto/16 :goto_0

    .line 1203
    :sswitch_9
    iget-object v0, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    if-nez v0, :cond_3

    .line 1204
    new-instance v0, Lcom/google/common/a/n;

    invoke-direct {v0}, Lcom/google/common/a/n;-><init>()V

    iput-object v0, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    .line 1206
    :cond_3
    iget-object v0, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1210
    :sswitch_a
    iget-object v0, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    if-nez v0, :cond_4

    .line 1211
    new-instance v0, Lcom/google/common/a/g;

    invoke-direct {v0}, Lcom/google/common/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    .line 1213
    :cond_4
    iget-object v0, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1217
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/d;->p:I

    .line 1218
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/a/d;->c:I

    goto/16 :goto_0

    .line 1222
    :sswitch_c
    const/16 v0, 0x60

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 1223
    iget-object v0, p0, Lcom/google/common/a/d;->b:[I

    array-length v0, v0

    .line 1224
    add-int/2addr v1, v0

    new-array v1, v1, [I

    .line 1225
    iget-object v2, p0, Lcom/google/common/a/d;->b:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1226
    iput-object v1, p0, Lcom/google/common/a/d;->b:[I

    .line 1227
    :goto_1
    iget-object v1, p0, Lcom/google/common/a/d;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 1228
    iget-object v1, p0, Lcom/google/common/a/d;->b:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v1, v0

    .line 1229
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1232
    :cond_5
    iget-object v1, p0, Lcom/google/common/a/d;->b:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v1, v0

    goto/16 :goto_0

    .line 1236
    :sswitch_d
    iget-object v0, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    if-nez v0, :cond_6

    .line 1237
    new-instance v0, Lcom/google/common/a/p;

    invoke-direct {v0}, Lcom/google/common/a/p;-><init>()V

    iput-object v0, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    .line 1239
    :cond_6
    iget-object v0, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1243
    :sswitch_e
    iget-object v0, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    if-nez v0, :cond_7

    .line 1244
    new-instance v0, Lcom/google/common/a/l;

    invoke-direct {v0}, Lcom/google/common/a/l;-><init>()V

    iput-object v0, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    .line 1246
    :cond_7
    iget-object v0, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
    .end sparse-switch
.end method


# virtual methods
.method public final a(J)Lcom/google/common/a/d;
    .locals 1

    .prologue
    .line 718
    iput-wide p1, p0, Lcom/google/common/a/d;->d:J

    .line 719
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/d;->c:I

    .line 720
    return-object p0
.end method

.method public final a(Lcom/google/common/a/g;)Lcom/google/common/a/d;
    .locals 1

    .prologue
    .line 882
    if-nez p1, :cond_0

    .line 883
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 885
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    .line 886
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/common/a/d;
    .locals 1

    .prologue
    .line 737
    if-nez p1, :cond_0

    .line 738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 740
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    .line 741
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/d;->c:I

    .line 742
    return-object p0
.end method

.method public final a()Lcom/google/common/a/g;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/common/a/d;
    .locals 1

    .prologue
    .line 778
    if-nez p1, :cond_0

    .line 779
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 781
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/d;->g:Ljava/lang/String;

    .line 782
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/a/d;->c:I

    .line 783
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/common/a/d;
    .locals 1

    .prologue
    .line 800
    if-nez p1, :cond_0

    .line 801
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 803
    :cond_0
    iput-object p1, p0, Lcom/google/common/a/d;->h:Ljava/lang/String;

    .line 804
    iget v0, p0, Lcom/google/common/a/d;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/a/d;->c:I

    .line 805
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 976
    if-ne p1, p0, :cond_1

    .line 993
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 978
    :cond_2
    check-cast p1, Lcom/google/common/a/d;

    .line 979
    iget-wide v2, p0, Lcom/google/common/a/d;->d:J

    iget-wide v4, p1, Lcom/google/common/a/d;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/d;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 980
    :goto_1
    iget-wide v2, p0, Lcom/google/common/a/d;->f:J

    iget-wide v4, p1, Lcom/google/common/a/d;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/common/a/d;->g:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/common/a/d;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 982
    :goto_2
    iget-object v2, p0, Lcom/google/common/a/d;->h:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/common/a/d;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 983
    :goto_3
    iget-object v2, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    if-nez v2, :cond_3

    .line 984
    :goto_4
    iget-object v2, p0, Lcom/google/common/a/d;->j:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/common/a/d;->j:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 985
    :goto_5
    iget-boolean v2, p0, Lcom/google/common/a/d;->k:Z

    iget-boolean v3, p1, Lcom/google/common/a/d;->k:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    if-nez v2, :cond_3

    .line 987
    :goto_6
    iget-object v2, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    if-nez v2, :cond_3

    .line 988
    :goto_7
    iget-object v2, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    if-nez v2, :cond_3

    .line 989
    :goto_8
    iget-object v2, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    if-nez v2, :cond_3

    .line 990
    :goto_9
    iget v2, p0, Lcom/google/common/a/d;->p:I

    iget v3, p1, Lcom/google/common/a/d;->p:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/d;->b:[I

    iget-object v3, p1, Lcom/google/common/a/d;->b:[I

    .line 992
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 993
    goto :goto_0

    .line 979
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/d;->e:Ljava/lang/String;

    .line 980
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/common/a/d;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/d;->g:Ljava/lang/String;

    .line 982
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/common/a/d;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/d;->h:Ljava/lang/String;

    .line 983
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    iget-object v3, p1, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    .line 984
    invoke-virtual {v2, v3}, Lcom/google/common/a/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/common/a/d;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/d;->j:Ljava/lang/String;

    .line 985
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    iget-object v3, p1, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    .line 987
    invoke-virtual {v2, v3}, Lcom/google/common/a/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    iget-object v3, p1, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    .line 988
    invoke-virtual {v2, v3}, Lcom/google/common/a/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    iget-object v3, p1, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    .line 989
    invoke-virtual {v2, v3}, Lcom/google/common/a/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    iget-object v3, p1, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    .line 990
    invoke-virtual {v2, v3}, Lcom/google/common/a/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_9

    .line 992
    :cond_d
    iget-object v2, p0, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    .line 993
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1073
    .line 1074
    iget v0, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    .line 1075
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/a/d;->d:J

    .line 1076
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v1

    .line 1078
    :goto_0
    iget v2, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 1079
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/a/d;->g:Ljava/lang/String;

    .line 1080
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1082
    :cond_0
    iget v2, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 1083
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/a/d;->h:Ljava/lang/String;

    .line 1084
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1086
    :cond_1
    iget-object v2, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    if-eqz v2, :cond_2

    .line 1087
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    .line 1088
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1090
    :cond_2
    iget v2, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 1091
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/common/a/d;->f:J

    .line 1092
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1094
    :cond_3
    iget v2, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_4

    .line 1095
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/common/a/d;->j:Ljava/lang/String;

    .line 1096
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1098
    :cond_4
    iget v2, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 1099
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    .line 1100
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1102
    :cond_5
    iget v2, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 1103
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/common/a/d;->k:Z

    .line 1104
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1106
    :cond_6
    iget-object v2, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    if-eqz v2, :cond_7

    .line 1107
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    .line 1108
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1110
    :cond_7
    iget-object v2, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    if-eqz v2, :cond_8

    .line 1111
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    .line 1112
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1114
    :cond_8
    iget v2, p0, Lcom/google/common/a/d;->c:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_9

    .line 1115
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/common/a/d;->p:I

    .line 1116
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1118
    :cond_9
    iget-object v2, p0, Lcom/google/common/a/d;->b:[I

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/common/a/d;->b:[I

    array-length v2, v2

    if-lez v2, :cond_b

    .line 1120
    iget-object v3, p0, Lcom/google/common/a/d;->b:[I

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_a

    aget v5, v3, v1

    .line 1122
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 1120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1124
    :cond_a
    add-int/2addr v0, v2

    .line 1125
    iget-object v1, p0, Lcom/google/common/a/d;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1127
    :cond_b
    iget-object v1, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    if-eqz v1, :cond_c

    .line 1128
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    .line 1129
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1131
    :cond_c
    iget-object v1, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    if-eqz v1, :cond_d

    .line 1132
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    .line 1133
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1135
    :cond_d
    iget-object v1, p0, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1136
    iput v0, p0, Lcom/google/common/a/d;->cachedSize:I

    .line 1137
    return v0

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 997
    .line 998
    iget-wide v2, p0, Lcom/google/common/a/d;->d:J

    iget-wide v4, p0, Lcom/google/common/a/d;->d:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    .line 999
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 1000
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/a/d;->f:J

    iget-wide v4, p0, Lcom/google/common/a/d;->f:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 1001
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/d;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1002
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/d;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 1003
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 1004
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/d;->j:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 1005
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/common/a/d;->k:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    add-int/2addr v0, v2

    .line 1006
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 1007
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 1008
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 1009
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    if-nez v0, :cond_a

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 1010
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/d;->p:I

    add-int/2addr v0, v2

    .line 1011
    iget-object v2, p0, Lcom/google/common/a/d;->b:[I

    if-nez v2, :cond_b

    mul-int/lit8 v2, v0, 0x1f

    .line 1017
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_c

    :goto_a
    add-int/2addr v0, v1

    .line 1018
    return v0

    .line 999
    :cond_1
    iget-object v0, p0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v0, p0, Lcom/google/common/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1002
    :cond_3
    iget-object v0, p0, Lcom/google/common/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1003
    :cond_4
    iget-object v0, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    invoke-virtual {v0}, Lcom/google/common/a/c;->hashCode()I

    move-result v0

    goto :goto_3

    .line 1004
    :cond_5
    iget-object v0, p0, Lcom/google/common/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 1005
    :cond_6
    const/4 v0, 0x2

    goto :goto_5

    .line 1006
    :cond_7
    iget-object v0, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    invoke-virtual {v0}, Lcom/google/common/a/g;->hashCode()I

    move-result v0

    goto :goto_6

    .line 1007
    :cond_8
    iget-object v0, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    invoke-virtual {v0}, Lcom/google/common/a/l;->hashCode()I

    move-result v0

    goto :goto_7

    .line 1008
    :cond_9
    iget-object v0, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    invoke-virtual {v0}, Lcom/google/common/a/n;->hashCode()I

    move-result v0

    goto :goto_8

    .line 1009
    :cond_a
    iget-object v0, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    invoke-virtual {v0}, Lcom/google/common/a/p;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_b
    move v2, v0

    move v0, v1

    .line 1013
    :goto_b
    iget-object v3, p0, Lcom/google/common/a/d;->b:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1014
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/common/a/d;->b:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1017
    :cond_c
    iget-object v1, p0, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/google/common/a/d;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 1023
    iget v0, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1024
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/common/a/d;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1026
    :cond_0
    iget v0, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 1027
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/a/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1029
    :cond_1
    iget v0, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 1030
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/a/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1032
    :cond_2
    iget-object v0, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    if-eqz v0, :cond_3

    .line 1033
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/a/d;->i:Lcom/google/common/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1035
    :cond_3
    iget v0, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 1036
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/common/a/d;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1038
    :cond_4
    iget v0, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1039
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/a/d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1041
    :cond_5
    iget v0, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 1042
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1044
    :cond_6
    iget v0, p0, Lcom/google/common/a/d;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 1045
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/common/a/d;->k:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1047
    :cond_7
    iget-object v0, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    if-eqz v0, :cond_8

    .line 1048
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/a/d;->n:Lcom/google/common/a/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1050
    :cond_8
    iget-object v0, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    if-eqz v0, :cond_9

    .line 1051
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/a/d;->l:Lcom/google/common/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1053
    :cond_9
    iget v0, p0, Lcom/google/common/a/d;->c:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    .line 1054
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/common/a/d;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1056
    :cond_a
    iget-object v0, p0, Lcom/google/common/a/d;->b:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/common/a/d;->b:[I

    array-length v0, v0

    if-lez v0, :cond_b

    .line 1057
    iget-object v1, p0, Lcom/google/common/a/d;->b:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_b

    aget v3, v1, v0

    .line 1058
    const/16 v4, 0xc

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :cond_b
    iget-object v0, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    if-eqz v0, :cond_c

    .line 1062
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/common/a/d;->o:Lcom/google/common/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1064
    :cond_c
    iget-object v0, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    if-eqz v0, :cond_d

    .line 1065
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/common/a/d;->m:Lcom/google/common/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1067
    :cond_d
    iget-object v0, p0, Lcom/google/common/a/d;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1069
    return-void
.end method
