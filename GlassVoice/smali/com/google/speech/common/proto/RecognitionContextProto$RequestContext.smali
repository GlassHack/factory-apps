.class public final Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognitionContextProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/proto/RecognitionContextProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;,
        Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;,
        Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;,
        Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;,
        Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContact;,
        Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;,
        Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Grammar;,
        Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;,
        Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$Phrase;
    }
.end annotation


# static fields
.field public static final CONTEXT_TYPE_GRAMMARS:I = 0x1

.field public static final CONTEXT_TYPE_GRAMMAR_FSTS:I = 0x4

.field public static final CONTEXT_TYPE_GRAMMAR_IDS:I = 0x3

.field public static final CONTEXT_TYPE_PHRASES:I = 0x0

.field public static final CONTEXT_TYPE_TOP_CONTACTS:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field public grammarFstsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

.field public grammarIdsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

.field public grammarsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

.field private name_:Ljava/lang/String;

.field public phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

.field public topContactsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1154
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    .line 1155
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 2

    .prologue
    .line 1065
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    if-nez v0, :cond_1

    .line 1066
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1068
    :try_start_0
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    if-nez v0, :cond_0

    .line 1069
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    sput-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    .line 1071
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    :cond_1
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    return-object v0

    .line 1071
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1316
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1310
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1158
    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    .line 1159
    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->type_:I

    .line 1160
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->name_:Ljava/lang/String;

    .line 1161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->confidence_:F

    .line 1162
    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    .line 1163
    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    .line 1164
    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->topContactsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

    .line 1165
    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarIdsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

    .line 1166
    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarFstsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    .line 1167
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->cachedSize:I

    .line 1168
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->confidence_:F

    .line 1134
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    .line 1135
    return-object p0
.end method

.method public clearName()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 1

    .prologue
    .line 1114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->name_:Ljava/lang/String;

    .line 1115
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    .line 1116
    return-object p0
.end method

.method public clearType()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 1

    .prologue
    .line 1092
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->type_:I

    .line 1093
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    .line 1094
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->confidence_:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1202
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1203
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1204
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1207
    :cond_0
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1208
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1211
    :cond_1
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1212
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->confidence_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1215
    :cond_2
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    if-eqz v1, :cond_3

    .line 1216
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1219
    :cond_3
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    if-eqz v1, :cond_4

    .line 1220
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1223
    :cond_4
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->topContactsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

    if-eqz v1, :cond_5

    .line 1224
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->topContactsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1227
    :cond_5
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarIdsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

    if-eqz v1, :cond_6

    .line 1228
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarIdsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1231
    :cond_6
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarFstsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    if-eqz v1, :cond_7

    .line 1232
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarFstsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1235
    :cond_7
    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->cachedSize:I

    .line 1236
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1081
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->type_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1089
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1244
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1245
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1249
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1250
    :sswitch_0
    return-object p0

    .line 1255
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->type_:I

    .line 1256
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    goto :goto_0

    .line 1260
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->name_:Ljava/lang/String;

    .line 1261
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    goto :goto_0

    .line 1265
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->confidence_:F

    .line 1266
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    goto :goto_0

    .line 1270
    :sswitch_4
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    if-nez v1, :cond_1

    .line 1271
    new-instance v1, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    invoke-direct {v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;-><init>()V

    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    .line 1273
    :cond_1
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1277
    :sswitch_5
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    if-nez v1, :cond_2

    .line 1278
    new-instance v1, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    invoke-direct {v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;-><init>()V

    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    .line 1280
    :cond_2
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1284
    :sswitch_6
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->topContactsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

    if-nez v1, :cond_3

    .line 1285
    new-instance v1, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

    invoke-direct {v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;-><init>()V

    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->topContactsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

    .line 1287
    :cond_3
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->topContactsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1291
    :sswitch_7
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarIdsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

    if-nez v1, :cond_4

    .line 1292
    new-instance v1, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

    invoke-direct {v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;-><init>()V

    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarIdsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

    .line 1294
    :cond_4
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarIdsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1298
    :sswitch_8
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarFstsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    if-nez v1, :cond_5

    .line 1299
    new-instance v1, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    invoke-direct {v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;-><init>()V

    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarFstsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    .line 1301
    :cond_5
    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarFstsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1245
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public setConfidence(F)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1125
    iput p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->confidence_:F

    .line 1126
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    .line 1127
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1103
    if-nez p1, :cond_0

    .line 1104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1106
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->name_:Ljava/lang/String;

    .line 1107
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    .line 1108
    return-object p0
.end method

.method public setType(I)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1084
    iput p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->type_:I

    .line 1085
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    .line 1086
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1175
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1177
    :cond_0
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1178
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1180
    :cond_1
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1181
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->confidence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1183
    :cond_2
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    if-eqz v0, :cond_3

    .line 1184
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->phrasesContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$PhrasesContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1186
    :cond_3
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    if-eqz v0, :cond_4

    .line 1187
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarsContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1189
    :cond_4
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->topContactsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

    if-eqz v0, :cond_5

    .line 1190
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->topContactsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$TopContactsContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1192
    :cond_5
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarIdsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

    if-eqz v0, :cond_6

    .line 1193
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarIdsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarIdsContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1195
    :cond_6
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarFstsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    if-eqz v0, :cond_7

    .line 1196
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;->grammarFstsContext:Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1198
    :cond_7
    return-void
.end method
