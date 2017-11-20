.class public final Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CommonStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CommonStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyConversionResult"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;


# instance fields
.field private baseAmount_:F

.field private baseCurrency_:Ljava/lang/String;

.field private baseSymbol_:Ljava/lang/String;

.field private bitField0_:I

.field private chartImageUrl_:Ljava/lang/String;

.field private exchangeRate_:F

.field private lhs_:Ljava/lang/String;

.field private rhs_:Ljava/lang/String;

.field private targetAmount_:F

.field private targetCurrency_:Ljava/lang/String;

.field private targetSymbol_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1125
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->clear()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 1126
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 2

    .prologue
    .line 900
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    if-nez v0, :cond_1

    .line 901
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 903
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    if-nez v0, :cond_0

    .line 904
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    sput-object v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    .line 906
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->_emptyArray:[Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    return-object v0

    .line 906
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1303
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1297
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1129
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1130
    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    .line 1131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    .line 1132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    .line 1133
    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    .line 1134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    .line 1135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    .line 1136
    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    .line 1137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    .line 1138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    .line 1139
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    .line 1140
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->cachedSize:I

    .line 1141
    return-object p0
.end method

.method public clearBaseAmount()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    .line 928
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 929
    return-object p0
.end method

.method public clearBaseCurrency()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 971
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    .line 972
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 973
    return-object p0
.end method

.method public clearBaseSymbol()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    .line 950
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 951
    return-object p0
.end method

.method public clearChartImageUrl()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    .line 1120
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1121
    return-object p0
.end method

.method public clearExchangeRate()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    .line 991
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 992
    return-object p0
.end method

.method public clearLhs()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1075
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    .line 1076
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1077
    return-object p0
.end method

.method public clearRhs()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1097
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    .line 1098
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1099
    return-object p0
.end method

.method public clearTargetAmount()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1053
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    .line 1054
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1055
    return-object p0
.end method

.method public clearTargetCurrency()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    .line 1035
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1036
    return-object p0
.end method

.method public clearTargetSymbol()Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1

    .prologue
    .line 1012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    .line 1013
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1014
    return-object p0
.end method

.method public getBaseAmount()F
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    return v0
.end method

.method public getBaseCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getChartImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeRate()F
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    return v0
.end method

.method public getLhs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    return-object v0
.end method

.method public getRhs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1181
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1182
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1183
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1186
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1187
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1190
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 1191
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1194
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 1195
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1198
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    .line 1199
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1202
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 1203
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1206
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 1207
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1210
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    .line 1211
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1214
    :cond_7
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 1215
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1218
    :cond_8
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 1219
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1222
    :cond_9
    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->cachedSize:I

    .line 1223
    return v0
.end method

.method public getTargetAmount()F
    .locals 1

    .prologue
    .line 1042
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    return v0
.end method

.method public getTargetCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBaseAmount()Z
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBaseCurrency()Z
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBaseSymbol()Z
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChartImageUrl()Z
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExchangeRate()Z
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLhs()Z
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRhs()Z
    .locals 1

    .prologue
    .line 1094
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTargetAmount()Z
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTargetCurrency()Z
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTargetSymbol()Z
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 894
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1231
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1232
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1236
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1237
    :sswitch_0
    return-object p0

    .line 1242
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    .line 1243
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto :goto_0

    .line 1247
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    .line 1248
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto :goto_0

    .line 1252
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    .line 1253
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto :goto_0

    .line 1257
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    .line 1258
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto :goto_0

    .line 1262
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    .line 1263
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto :goto_0

    .line 1267
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    .line 1268
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto :goto_0

    .line 1272
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    .line 1273
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto :goto_0

    .line 1277
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    .line 1278
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto :goto_0

    .line 1282
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    .line 1283
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto/16 :goto_0

    .line 1287
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    .line 1288
    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    goto/16 :goto_0

    .line 1232
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2d -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public setBaseAmount(F)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 919
    iput p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    .line 920
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 921
    return-object p0
.end method

.method public setBaseCurrency(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 960
    if-nez p1, :cond_0

    .line 961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 963
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    .line 964
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 965
    return-object p0
.end method

.method public setBaseSymbol(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 938
    if-nez p1, :cond_0

    .line 939
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 941
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    .line 942
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 943
    return-object p0
.end method

.method public setChartImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1108
    if-nez p1, :cond_0

    .line 1109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1111
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    .line 1112
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1113
    return-object p0
.end method

.method public setExchangeRate(F)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 982
    iput p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    .line 983
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 984
    return-object p0
.end method

.method public setLhs(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1064
    if-nez p1, :cond_0

    .line 1065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1067
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    .line 1068
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1069
    return-object p0
.end method

.method public setRhs(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1086
    if-nez p1, :cond_0

    .line 1087
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1089
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    .line 1090
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1091
    return-object p0
.end method

.method public setTargetAmount(F)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1045
    iput p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    .line 1046
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1047
    return-object p0
.end method

.method public setTargetCurrency(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1023
    if-nez p1, :cond_0

    .line 1024
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1026
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    .line 1027
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1028
    return-object p0
.end method

.method public setTargetSymbol(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1001
    if-nez p1, :cond_0

    .line 1002
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1004
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    .line 1005
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    .line 1006
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
    .line 1147
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1148
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseAmount_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1150
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1151
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseSymbol_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1153
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1154
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->exchangeRate_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1156
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 1157
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetSymbol_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1159
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 1160
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetAmount_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1162
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 1163
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->baseCurrency_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1165
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 1166
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->targetCurrency_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1168
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 1169
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->chartImageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1171
    :cond_7
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 1172
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->lhs_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1174
    :cond_8
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    .line 1175
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CurrencyConversionResult;->rhs_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1177
    :cond_9
    return-void
.end method
