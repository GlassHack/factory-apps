.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerContextLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;


# instance fields
.field private bitField0_:I

.field public enabledKeyboardLanguage:[Ljava/lang/String;

.field private fieldId_:Ljava/lang/String;

.field private fieldName_:Ljava/lang/String;

.field private hint_:Ljava/lang/String;

.field private imeOptions_:I

.field private inputType_:I

.field private label_:Ljava/lang/String;

.field private languageModel_:Ljava/lang/String;

.field private selectedKeyboardLanguage_:Ljava/lang/String;

.field private singleLine_:Z

.field private voiceSearchLanguage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3055
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3056
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 3057
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 2

    .prologue
    .line 2828
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    if-nez v0, :cond_1

    .line 2829
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2831
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    if-nez v0, :cond_0

    .line 2832
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2834
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2836
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    return-object v0

    .line 2834
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3274
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3268
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3060
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 3061
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 3062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 3063
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 3064
    iput-boolean v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 3065
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 3066
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 3067
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 3068
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 3069
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 3070
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 3071
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    .line 3072
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    .line 3073
    return-object p0
.end method

.method public clearFieldId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2902
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 2903
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2904
    return-object p0
.end method

.method public clearFieldName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2880
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 2881
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2882
    return-object p0
.end method

.method public clearHint()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 2966
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2967
    return-object p0
.end method

.method public clearImeOptions()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 3003
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 3004
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 3005
    return-object p0
.end method

.method public clearInputType()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2984
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 2985
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2986
    return-object p0
.end method

.method public clearLabel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2943
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 2944
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2945
    return-object p0
.end method

.method public clearLanguageModel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 3025
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 3026
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 3027
    return-object p0
.end method

.method public clearSelectedKeyboardLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 3047
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 3048
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 3049
    return-object p0
.end method

.method public clearSingleLine()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 2922
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2923
    return-object p0
.end method

.method public clearVoiceSearchLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2858
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 2859
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2860
    return-object p0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2866
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2951
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 2992
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2973
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedKeyboardLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 3121
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 3122
    .local v4, "size":I
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 3123
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3126
    :cond_0
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 3127
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3130
    :cond_1
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 3131
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3134
    :cond_2
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 3135
    const/4 v5, 0x4

    iget-boolean v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 3138
    :cond_3
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    .line 3139
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3142
    :cond_4
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_5

    .line 3143
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3146
    :cond_5
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    .line 3147
    const/4 v5, 0x7

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 3150
    :cond_6
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_7

    .line 3151
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 3154
    :cond_7
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_8

    .line 3155
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3158
    :cond_8
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_9

    .line 3159
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3162
    :cond_9
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_c

    .line 3163
    const/4 v0, 0x0

    .line 3164
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 3165
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_b

    .line 3166
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3167
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 3168
    add-int/lit8 v0, v0, 0x1

    .line 3169
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3165
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3173
    .end local v2    # "element":Ljava/lang/String;
    :cond_b
    add-int/2addr v4, v1

    .line 3174
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3176
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_c
    iput v4, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    .line 3177
    return v4
.end method

.method public getSingleLine()Z
    .locals 1

    .prologue
    .line 2910
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    return v0
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFieldId()Z
    .locals 1

    .prologue
    .line 2899
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFieldName()Z
    .locals 1

    .prologue
    .line 2877
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHint()Z
    .locals 1

    .prologue
    .line 2962
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImeOptions()Z
    .locals 1

    .prologue
    .line 3000
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 2981
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 2940
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguageModel()Z
    .locals 1

    .prologue
    .line 3022
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectedKeyboardLanguage()Z
    .locals 1

    .prologue
    .line 3044
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSingleLine()Z
    .locals 1

    .prologue
    .line 2918
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSearchLanguage()Z
    .locals 1

    .prologue
    .line 2855
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

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
    .line 2822
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3185
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3186
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3190
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3191
    :sswitch_0
    return-object p0

    .line 3196
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 3197
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto :goto_0

    .line 3201
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 3202
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto :goto_0

    .line 3206
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 3207
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto :goto_0

    .line 3211
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 3212
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto :goto_0

    .line 3216
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 3217
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto :goto_0

    .line 3221
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 3222
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto :goto_0

    .line 3226
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 3227
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto :goto_0

    .line 3231
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 3232
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto :goto_0

    .line 3236
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 3237
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto/16 :goto_0

    .line 3241
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 3242
    iget v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    goto/16 :goto_0

    .line 3246
    :sswitch_b
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3248
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 3249
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3250
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3251
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3253
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3254
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3255
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3253
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3248
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 3258
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3259
    iput-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3186
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public setFieldId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2891
    if-nez p1, :cond_0

    .line 2892
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2894
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 2895
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2896
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2869
    if-nez p1, :cond_0

    .line 2870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2872
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 2873
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2874
    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2954
    if-nez p1, :cond_0

    .line 2955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2957
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 2958
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2959
    return-object p0
.end method

.method public setImeOptions(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2995
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 2996
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2997
    return-object p0
.end method

.method public setInputType(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2976
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 2977
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2978
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2932
    if-nez p1, :cond_0

    .line 2933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2935
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 2936
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2937
    return-object p0
.end method

.method public setLanguageModel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3014
    if-nez p1, :cond_0

    .line 3015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3017
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 3018
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 3019
    return-object p0
.end method

.method public setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3036
    if-nez p1, :cond_0

    .line 3037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3039
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 3040
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 3041
    return-object p0
.end method

.method public setSingleLine(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2913
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 2914
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2915
    return-object p0
.end method

.method public setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2847
    if-nez p1, :cond_0

    .line 2848
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2850
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 2851
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    .line 2852
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
    .line 3079
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3080
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3082
    :cond_0
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3083
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3085
    :cond_1
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 3086
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3088
    :cond_2
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 3089
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3091
    :cond_3
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 3092
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3094
    :cond_4
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 3095
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3097
    :cond_5
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 3098
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3100
    :cond_6
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 3101
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3103
    :cond_7
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    .line 3104
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3106
    :cond_8
    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    .line 3107
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3109
    :cond_9
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 3110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 3111
    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3112
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 3113
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3110
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3117
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_b
    return-void
.end method
