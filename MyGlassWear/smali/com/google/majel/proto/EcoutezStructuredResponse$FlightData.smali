.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlightData"
.end annotation


# static fields
.field public static final STATUS_CODE_CANCELLED:I = 0x5

.field public static final STATUS_CODE_DELAYED:I = 0x4

.field public static final STATUS_CODE_DIVERTED:I = 0x6

.field public static final STATUS_CODE_LANDED:I = 0x3

.field public static final STATUS_CODE_NOT_OPERATIONAL:I = 0x8

.field public static final STATUS_CODE_ON_TIME:I = 0x2

.field public static final STATUS_CODE_REDIRECTED:I = 0x7

.field public static final STATUS_CODE_SCHEDULED:I = 0x1

.field public static final STATUS_CODE_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;


# instance fields
.field private airlineCode_:Ljava/lang/String;

.field private airlineName_:Ljava/lang/String;

.field private arrivalAirportCode_:Ljava/lang/String;

.field private arrivalAirportName_:Ljava/lang/String;

.field private arrivalGate_:Ljava/lang/String;

.field private arrivalTerminal_:Ljava/lang/String;

.field private arrivalTimeActual_:Ljava/lang/String;

.field private arrivalTimeScheduled_:Ljava/lang/String;

.field private arrivalTimeZone_:Ljava/lang/String;

.field private bitField0_:I

.field private departureAirportCode_:Ljava/lang/String;

.field private departureAirportName_:Ljava/lang/String;

.field private departureGate_:Ljava/lang/String;

.field private departureTerminal_:Ljava/lang/String;

.field private departureTimeActual_:Ljava/lang/String;

.field private departureTimeScheduled_:Ljava/lang/String;

.field private departureTimeZone_:Ljava/lang/String;

.field private flightStatsId_:Ljava/lang/String;

.field private number_:Ljava/lang/String;

.field private statusCode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3517
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3518
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3519
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2

    .prologue
    .line 3089
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    if-nez v0, :cond_1

    .line 3090
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3092
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    if-nez v0, :cond_0

    .line 3093
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    .line 3095
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3097
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    return-object v0

    .line 3095
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3813
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3807
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3522
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    .line 3524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    .line 3525
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    .line 3526
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    .line 3527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    .line 3528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    .line 3529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    .line 3530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    .line 3531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    .line 3532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    .line 3533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    .line 3534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    .line 3535
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    .line 3536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    .line 3537
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    .line 3538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    .line 3539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    .line 3540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    .line 3541
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    .line 3542
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->cachedSize:I

    .line 3543
    return-object p0
.end method

.method public clearAirlineCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    .line 3120
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3121
    return-object p0
.end method

.method public clearAirlineName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    .line 3142
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3143
    return-object p0
.end method

.method public clearArrivalAirportCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    .line 3362
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3363
    return-object p0
.end method

.method public clearArrivalAirportName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    .line 3384
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3385
    return-object p0
.end method

.method public clearArrivalGate()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    .line 3428
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3429
    return-object p0
.end method

.method public clearArrivalTerminal()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3405
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    .line 3406
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3407
    return-object p0
.end method

.method public clearArrivalTimeActual()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2

    .prologue
    .line 3471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    .line 3472
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3473
    return-object p0
.end method

.method public clearArrivalTimeScheduled()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2

    .prologue
    .line 3449
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    .line 3450
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3451
    return-object p0
.end method

.method public clearArrivalTimeZone()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2

    .prologue
    .line 3493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    .line 3494
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3495
    return-object p0
.end method

.method public clearDepartureAirportCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    .line 3208
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3209
    return-object p0
.end method

.method public clearDepartureAirportName()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    .line 3230
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3231
    return-object p0
.end method

.method public clearDepartureGate()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3273
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    .line 3274
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3275
    return-object p0
.end method

.method public clearDepartureTerminal()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    .line 3252
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3253
    return-object p0
.end method

.method public clearDepartureTimeActual()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    .line 3318
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3319
    return-object p0
.end method

.method public clearDepartureTimeScheduled()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    .line 3296
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3297
    return-object p0
.end method

.method public clearDepartureTimeZone()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    .line 3340
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3341
    return-object p0
.end method

.method public clearFlightStatsId()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    .line 3186
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3187
    return-object p0
.end method

.method public clearNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1

    .prologue
    .line 3163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    .line 3164
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3165
    return-object p0
.end method

.method public clearStatusCode()Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2

    .prologue
    .line 3512
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    .line 3513
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3514
    return-object p0
.end method

.method public getAirlineCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getAirlineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalAirportCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3347
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalAirportName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3369
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalGate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3391
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTimeActual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTimeScheduled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureAirportCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureAirportName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureGate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTimeActual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3303
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTimeScheduled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3281
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3325
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightStatsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3610
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3611
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3612
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3615
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3616
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3619
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3620
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3623
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3624
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3627
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3628
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3631
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3632
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3635
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 3636
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3639
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 3640
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3643
    :cond_7
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 3644
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3647
    :cond_8
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 3648
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3651
    :cond_9
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 3652
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3655
    :cond_a
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 3656
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3659
    :cond_b
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    .line 3660
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3663
    :cond_c
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    .line 3664
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3667
    :cond_d
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    .line 3668
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3671
    :cond_e
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    .line 3672
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3675
    :cond_f
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    .line 3676
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3679
    :cond_10
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 3680
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3683
    :cond_11
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    .line 3684
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3687
    :cond_12
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->cachedSize:I

    .line 3688
    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 3501
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    return v0
.end method

.method public hasAirlineCode()Z
    .locals 1

    .prologue
    .line 3116
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAirlineName()Z
    .locals 1

    .prologue
    .line 3138
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArrivalAirportCode()Z
    .locals 1

    .prologue
    .line 3358
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArrivalAirportName()Z
    .locals 1

    .prologue
    .line 3380
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArrivalGate()Z
    .locals 1

    .prologue
    .line 3424
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArrivalTerminal()Z
    .locals 1

    .prologue
    .line 3402
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArrivalTimeActual()Z
    .locals 2

    .prologue
    .line 3468
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArrivalTimeScheduled()Z
    .locals 2

    .prologue
    .line 3446
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArrivalTimeZone()Z
    .locals 2

    .prologue
    .line 3490
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDepartureAirportCode()Z
    .locals 1

    .prologue
    .line 3204
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDepartureAirportName()Z
    .locals 1

    .prologue
    .line 3226
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDepartureGate()Z
    .locals 1

    .prologue
    .line 3270
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDepartureTerminal()Z
    .locals 1

    .prologue
    .line 3248
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDepartureTimeActual()Z
    .locals 1

    .prologue
    .line 3314
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDepartureTimeScheduled()Z
    .locals 1

    .prologue
    .line 3292
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDepartureTimeZone()Z
    .locals 1

    .prologue
    .line 3336
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFlightStatsId()Z
    .locals 1

    .prologue
    .line 3182
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 3160
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusCode()Z
    .locals 2

    .prologue
    .line 3509
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

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
    .line 3072
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3696
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3697
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3701
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3702
    :sswitch_0
    return-object p0

    .line 3707
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    .line 3708
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto :goto_0

    .line 3712
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    .line 3713
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto :goto_0

    .line 3717
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    .line 3718
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto :goto_0

    .line 3722
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    .line 3723
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto :goto_0

    .line 3727
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    .line 3728
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto :goto_0

    .line 3732
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    .line 3733
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto :goto_0

    .line 3737
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    .line 3738
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto :goto_0

    .line 3742
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    .line 3743
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto :goto_0

    .line 3747
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    .line 3748
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3752
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    .line 3753
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3757
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    .line 3758
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3762
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    .line 3763
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3767
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    .line 3768
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3772
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    .line 3773
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3777
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    .line 3778
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3782
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    .line 3783
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3787
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    .line 3788
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3792
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    .line 3793
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3797
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    .line 3798
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    goto/16 :goto_0

    .line 3697
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
        0x98 -> :sswitch_13
    .end sparse-switch
.end method

.method public setAirlineCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3108
    if-nez p1, :cond_0

    .line 3109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3111
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    .line 3112
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3113
    return-object p0
.end method

.method public setAirlineName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3130
    if-nez p1, :cond_0

    .line 3131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3133
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    .line 3134
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3135
    return-object p0
.end method

.method public setArrivalAirportCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3350
    if-nez p1, :cond_0

    .line 3351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3353
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    .line 3354
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3355
    return-object p0
.end method

.method public setArrivalAirportName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3372
    if-nez p1, :cond_0

    .line 3373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3375
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    .line 3376
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3377
    return-object p0
.end method

.method public setArrivalGate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3416
    if-nez p1, :cond_0

    .line 3417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3419
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    .line 3420
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3421
    return-object p0
.end method

.method public setArrivalTerminal(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3394
    if-nez p1, :cond_0

    .line 3395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3397
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    .line 3398
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3399
    return-object p0
.end method

.method public setArrivalTimeActual(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3460
    if-nez p1, :cond_0

    .line 3461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3463
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    .line 3464
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3465
    return-object p0
.end method

.method public setArrivalTimeScheduled(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3438
    if-nez p1, :cond_0

    .line 3439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3441
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    .line 3442
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3443
    return-object p0
.end method

.method public setArrivalTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3482
    if-nez p1, :cond_0

    .line 3483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3485
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    .line 3486
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3487
    return-object p0
.end method

.method public setDepartureAirportCode(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3196
    if-nez p1, :cond_0

    .line 3197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3199
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    .line 3200
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3201
    return-object p0
.end method

.method public setDepartureAirportName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3218
    if-nez p1, :cond_0

    .line 3219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3221
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    .line 3222
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3223
    return-object p0
.end method

.method public setDepartureGate(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3262
    if-nez p1, :cond_0

    .line 3263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3265
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    .line 3266
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3267
    return-object p0
.end method

.method public setDepartureTerminal(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3240
    if-nez p1, :cond_0

    .line 3241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3243
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    .line 3244
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3245
    return-object p0
.end method

.method public setDepartureTimeActual(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3306
    if-nez p1, :cond_0

    .line 3307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3309
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    .line 3310
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3311
    return-object p0
.end method

.method public setDepartureTimeScheduled(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3284
    if-nez p1, :cond_0

    .line 3285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3287
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    .line 3288
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3289
    return-object p0
.end method

.method public setDepartureTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3328
    if-nez p1, :cond_0

    .line 3329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3331
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    .line 3332
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3333
    return-object p0
.end method

.method public setFlightStatsId(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3174
    if-nez p1, :cond_0

    .line 3175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3177
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    .line 3178
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3179
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3152
    if-nez p1, :cond_0

    .line 3153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3155
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    .line 3156
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3157
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3504
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    .line 3505
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    .line 3506
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
    .line 3549
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3550
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineCode_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3552
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3553
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->airlineName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3555
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3556
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->number_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3558
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3559
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->flightStatsId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3561
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3562
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportCode_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3564
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3565
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureAirportName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3567
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 3568
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTerminal_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3570
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 3571
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureGate_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3573
    :cond_7
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 3574
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeScheduled_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3576
    :cond_8
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 3577
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeActual_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3579
    :cond_9
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 3580
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->departureTimeZone_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3582
    :cond_a
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 3583
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportCode_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3585
    :cond_b
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 3586
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalAirportName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3588
    :cond_c
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 3589
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTerminal_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3591
    :cond_d
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 3592
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalGate_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3594
    :cond_e
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 3595
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeScheduled_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3597
    :cond_f
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 3598
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeActual_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3600
    :cond_10
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 3601
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->arrivalTimeZone_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3603
    :cond_11
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 3604
    const/16 v0, 0x13

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$FlightData;->statusCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3606
    :cond_12
    return-void
.end method
