.class public final Lcom/google/e/a/fn;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile h:[Lcom/google/e/a/fn;


# instance fields
.field public a:Lcom/google/e/a/fm;

.field public b:Lcom/google/e/a/fp;

.field public c:Lcom/google/e/a/fm;

.field public d:Lcom/google/e/a/fp;

.field public e:Lcom/google/e/a/fm;

.field public f:[Lcom/google/e/a/ci;

.field public g:Lcom/google/e/a/fo;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 865
    invoke-direct {p0}, Lcom/google/e/a/fn;->b()Lcom/google/e/a/fn;

    .line 866
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fn;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1077
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1078
    sparse-switch v0, :sswitch_data_0

    .line 1082
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    :sswitch_0
    return-object p0

    .line 1088
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/fn;->j:I

    .line 1089
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto :goto_0

    .line 1093
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->k:Ljava/lang/String;

    .line 1094
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto :goto_0

    .line 1098
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/e/a/fn;->l:J

    .line 1099
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto :goto_0

    .line 1103
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->m:Ljava/lang/String;

    .line 1104
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto :goto_0

    .line 1108
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->n:Ljava/lang/String;

    .line 1109
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto :goto_0

    .line 1113
    :sswitch_6
    iget-object v0, p0, Lcom/google/e/a/fn;->a:Lcom/google/e/a/fm;

    if-nez v0, :cond_1

    .line 1114
    new-instance v0, Lcom/google/e/a/fm;

    invoke-direct {v0}, Lcom/google/e/a/fm;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/fn;->a:Lcom/google/e/a/fm;

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/fn;->a:Lcom/google/e/a/fm;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1120
    :sswitch_7
    iget-object v0, p0, Lcom/google/e/a/fn;->b:Lcom/google/e/a/fp;

    if-nez v0, :cond_2

    .line 1121
    new-instance v0, Lcom/google/e/a/fp;

    invoke-direct {v0}, Lcom/google/e/a/fp;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/fn;->b:Lcom/google/e/a/fp;

    .line 1123
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/fn;->b:Lcom/google/e/a/fp;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1127
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->p:Ljava/lang/String;

    .line 1128
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto :goto_0

    .line 1132
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->q:Ljava/lang/String;

    .line 1133
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto/16 :goto_0

    .line 1137
    :sswitch_a
    iget-object v0, p0, Lcom/google/e/a/fn;->c:Lcom/google/e/a/fm;

    if-nez v0, :cond_3

    .line 1138
    new-instance v0, Lcom/google/e/a/fm;

    invoke-direct {v0}, Lcom/google/e/a/fm;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/fn;->c:Lcom/google/e/a/fm;

    .line 1140
    :cond_3
    iget-object v0, p0, Lcom/google/e/a/fn;->c:Lcom/google/e/a/fm;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1144
    :sswitch_b
    iget-object v0, p0, Lcom/google/e/a/fn;->d:Lcom/google/e/a/fp;

    if-nez v0, :cond_4

    .line 1145
    new-instance v0, Lcom/google/e/a/fp;

    invoke-direct {v0}, Lcom/google/e/a/fp;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/fn;->d:Lcom/google/e/a/fp;

    .line 1147
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/fn;->d:Lcom/google/e/a/fp;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1151
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->r:Ljava/lang/String;

    .line 1152
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto/16 :goto_0

    .line 1156
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->s:Ljava/lang/String;

    .line 1157
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto/16 :goto_0

    .line 1161
    :sswitch_e
    iget-object v0, p0, Lcom/google/e/a/fn;->e:Lcom/google/e/a/fm;

    if-nez v0, :cond_5

    .line 1162
    new-instance v0, Lcom/google/e/a/fm;

    invoke-direct {v0}, Lcom/google/e/a/fm;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/fn;->e:Lcom/google/e/a/fm;

    .line 1164
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/fn;->e:Lcom/google/e/a/fm;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1168
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->t:Ljava/lang/String;

    .line 1169
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto/16 :goto_0

    .line 1173
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->u:Ljava/lang/String;

    .line 1174
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto/16 :goto_0

    .line 1178
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->o:Ljava/lang/String;

    .line 1179
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto/16 :goto_0

    .line 1183
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->v:Ljava/lang/String;

    .line 1184
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto/16 :goto_0

    .line 1188
    :sswitch_13
    const/16 v0, 0x9a

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1190
    iget-object v0, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    if-nez v0, :cond_7

    move v0, v1

    .line 1191
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/e/a/ci;

    .line 1193
    if-eqz v0, :cond_6

    .line 1194
    iget-object v3, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1196
    :cond_6
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1197
    new-instance v3, Lcom/google/e/a/ci;

    invoke-direct {v3}, Lcom/google/e/a/ci;-><init>()V

    aput-object v3, v2, v0

    .line 1198
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1199
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1196
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1190
    :cond_7
    iget-object v0, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    array-length v0, v0

    goto :goto_1

    .line 1202
    :cond_8
    new-instance v3, Lcom/google/e/a/ci;

    invoke-direct {v3}, Lcom/google/e/a/ci;-><init>()V

    aput-object v3, v2, v0

    .line 1203
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1204
    iput-object v2, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    goto/16 :goto_0

    .line 1208
    :sswitch_14
    iget-object v0, p0, Lcom/google/e/a/fn;->g:Lcom/google/e/a/fo;

    if-nez v0, :cond_9

    .line 1209
    new-instance v0, Lcom/google/e/a/fo;

    invoke-direct {v0}, Lcom/google/e/a/fo;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/fn;->g:Lcom/google/e/a/fo;

    .line 1211
    :cond_9
    iget-object v0, p0, Lcom/google/e/a/fn;->g:Lcom/google/e/a/fo;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1215
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->w:Ljava/lang/String;

    .line 1216
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto/16 :goto_0

    .line 1220
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->x:Ljava/lang/String;

    .line 1221
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/e/a/fn;->i:I

    goto/16 :goto_0

    .line 1078
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/fn;
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/google/e/a/fn;->h:[Lcom/google/e/a/fn;

    if-nez v0, :cond_1

    .line 507
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    sget-object v0, Lcom/google/e/a/fn;->h:[Lcom/google/e/a/fn;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/fn;

    sput-object v0, Lcom/google/e/a/fn;->h:[Lcom/google/e/a/fn;

    .line 512
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :cond_1
    sget-object v0, Lcom/google/e/a/fn;->h:[Lcom/google/e/a/fn;

    return-object v0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/e/a/fn;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 869
    iput v0, p0, Lcom/google/e/a/fn;->i:I

    .line 870
    iput v0, p0, Lcom/google/e/a/fn;->j:I

    .line 871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->k:Ljava/lang/String;

    .line 872
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/e/a/fn;->l:J

    .line 873
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->m:Ljava/lang/String;

    .line 874
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->n:Ljava/lang/String;

    .line 875
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->o:Ljava/lang/String;

    .line 876
    iput-object v2, p0, Lcom/google/e/a/fn;->a:Lcom/google/e/a/fm;

    .line 877
    iput-object v2, p0, Lcom/google/e/a/fn;->b:Lcom/google/e/a/fp;

    .line 878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->p:Ljava/lang/String;

    .line 879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->q:Ljava/lang/String;

    .line 880
    iput-object v2, p0, Lcom/google/e/a/fn;->c:Lcom/google/e/a/fm;

    .line 881
    iput-object v2, p0, Lcom/google/e/a/fn;->d:Lcom/google/e/a/fp;

    .line 882
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->r:Ljava/lang/String;

    .line 883
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->s:Ljava/lang/String;

    .line 884
    iput-object v2, p0, Lcom/google/e/a/fn;->e:Lcom/google/e/a/fm;

    .line 885
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->t:Ljava/lang/String;

    .line 886
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->u:Ljava/lang/String;

    .line 887
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->v:Ljava/lang/String;

    .line 888
    invoke-static {}, Lcom/google/e/a/ci;->a()[Lcom/google/e/a/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    .line 889
    iput-object v2, p0, Lcom/google/e/a/fn;->g:Lcom/google/e/a/fo;

    .line 890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->w:Ljava/lang/String;

    .line 891
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/fn;->x:Ljava/lang/String;

    .line 892
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/fn;->cachedSize:I

    .line 893
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 5

    .prologue
    .line 974
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 975
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 976
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/e/a/fn;->j:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 979
    :cond_0
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 980
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/fn;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 983
    :cond_1
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 984
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/e/a/fn;->l:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 987
    :cond_2
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 988
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/fn;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 991
    :cond_3
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 992
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/e/a/fn;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 995
    :cond_4
    iget-object v1, p0, Lcom/google/e/a/fn;->a:Lcom/google/e/a/fm;

    if-eqz v1, :cond_5

    .line 996
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/e/a/fn;->a:Lcom/google/e/a/fm;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 999
    :cond_5
    iget-object v1, p0, Lcom/google/e/a/fn;->b:Lcom/google/e/a/fp;

    if-eqz v1, :cond_6

    .line 1000
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/e/a/fn;->b:Lcom/google/e/a/fp;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1003
    :cond_6
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 1004
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/e/a/fn;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1007
    :cond_7
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 1008
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/e/a/fn;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1011
    :cond_8
    iget-object v1, p0, Lcom/google/e/a/fn;->c:Lcom/google/e/a/fm;

    if-eqz v1, :cond_9

    .line 1012
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/e/a/fn;->c:Lcom/google/e/a/fm;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1015
    :cond_9
    iget-object v1, p0, Lcom/google/e/a/fn;->d:Lcom/google/e/a/fp;

    if-eqz v1, :cond_a

    .line 1016
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/e/a/fn;->d:Lcom/google/e/a/fp;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1019
    :cond_a
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    .line 1020
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/e/a/fn;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1023
    :cond_b
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c

    .line 1024
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/e/a/fn;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1027
    :cond_c
    iget-object v1, p0, Lcom/google/e/a/fn;->e:Lcom/google/e/a/fm;

    if-eqz v1, :cond_d

    .line 1028
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/e/a/fn;->e:Lcom/google/e/a/fm;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1031
    :cond_d
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_e

    .line 1032
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/e/a/fn;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1035
    :cond_e
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_f

    .line 1036
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/e/a/fn;->u:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1039
    :cond_f
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_10

    .line 1040
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/e/a/fn;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1043
    :cond_10
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_11

    .line 1044
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/e/a/fn;->v:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1047
    :cond_11
    iget-object v1, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    array-length v1, v1

    if-lez v1, :cond_14

    .line 1048
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    .line 1049
    iget-object v2, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    aget-object v2, v2, v0

    .line 1050
    if-eqz v2, :cond_12

    .line 1051
    const/16 v3, 0x13

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1048
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_13
    move v0, v1

    .line 1056
    :cond_14
    iget-object v1, p0, Lcom/google/e/a/fn;->g:Lcom/google/e/a/fo;

    if-eqz v1, :cond_15

    .line 1057
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/e/a/fn;->g:Lcom/google/e/a/fo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1060
    :cond_15
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_16

    .line 1061
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/e/a/fn;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1064
    :cond_16
    iget v1, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_17

    .line 1065
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/e/a/fn;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1068
    :cond_17
    iput v0, p0, Lcom/google/e/a/fn;->cachedSize:I

    .line 1069
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/google/e/a/fn;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/fn;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 899
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/e/a/fn;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 902
    :cond_0
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 903
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/fn;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 905
    :cond_1
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 906
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/e/a/fn;->l:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 908
    :cond_2
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 909
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/fn;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 911
    :cond_3
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 912
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/e/a/fn;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 914
    :cond_4
    iget-object v0, p0, Lcom/google/e/a/fn;->a:Lcom/google/e/a/fm;

    if-eqz v0, :cond_5

    .line 915
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/e/a/fn;->a:Lcom/google/e/a/fm;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 917
    :cond_5
    iget-object v0, p0, Lcom/google/e/a/fn;->b:Lcom/google/e/a/fp;

    if-eqz v0, :cond_6

    .line 918
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/e/a/fn;->b:Lcom/google/e/a/fp;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 920
    :cond_6
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 921
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/e/a/fn;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 923
    :cond_7
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 924
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/e/a/fn;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 926
    :cond_8
    iget-object v0, p0, Lcom/google/e/a/fn;->c:Lcom/google/e/a/fm;

    if-eqz v0, :cond_9

    .line 927
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/e/a/fn;->c:Lcom/google/e/a/fm;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 929
    :cond_9
    iget-object v0, p0, Lcom/google/e/a/fn;->d:Lcom/google/e/a/fp;

    if-eqz v0, :cond_a

    .line 930
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/e/a/fn;->d:Lcom/google/e/a/fp;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 932
    :cond_a
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    .line 933
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/e/a/fn;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 935
    :cond_b
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    .line 936
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/e/a/fn;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 938
    :cond_c
    iget-object v0, p0, Lcom/google/e/a/fn;->e:Lcom/google/e/a/fm;

    if-eqz v0, :cond_d

    .line 939
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/e/a/fn;->e:Lcom/google/e/a/fm;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 941
    :cond_d
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_e

    .line 942
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/e/a/fn;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 944
    :cond_e
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_f

    .line 945
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/e/a/fn;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 947
    :cond_f
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_10

    .line 948
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/e/a/fn;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 950
    :cond_10
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_11

    .line 951
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/e/a/fn;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 953
    :cond_11
    iget-object v0, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 954
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 955
    iget-object v1, p0, Lcom/google/e/a/fn;->f:[Lcom/google/e/a/ci;

    aget-object v1, v1, v0

    .line 956
    if-eqz v1, :cond_12

    .line 957
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 954
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_13
    iget-object v0, p0, Lcom/google/e/a/fn;->g:Lcom/google/e/a/fo;

    if-eqz v0, :cond_14

    .line 962
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/e/a/fn;->g:Lcom/google/e/a/fo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 964
    :cond_14
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_15

    .line 965
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/e/a/fn;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 967
    :cond_15
    iget v0, p0, Lcom/google/e/a/fn;->i:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_16

    .line 968
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/e/a/fn;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 970
    :cond_16
    return-void
.end method
