.class public final Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "FlightProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flight"
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

.field private static volatile _emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;


# instance fields
.field private airlineCode_:Ljava/lang/String;

.field private airlineName_:Ljava/lang/String;

.field public arrivalAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

.field private arrivalGate_:Ljava/lang/String;

.field private arrivalTerminal_:Ljava/lang/String;

.field public arrivalTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

.field private bitField0_:I

.field public departureAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

.field private departureGate_:Ljava/lang/String;

.field private departureTerminal_:Ljava/lang/String;

.field public departureTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

.field private detailsUrl_:Ljava/lang/String;

.field public diversionAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

.field private diversionGate_:Ljava/lang/String;

.field private diversionTerminal_:Ljava/lang/String;

.field private flightNumber_:Ljava/lang/String;

.field public gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

.field private lastUpdatedSecondsSinceEpoch_:J

.field public notificationDetails:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

.field private operatingAirlineCode_:Ljava/lang/String;

.field private operatingAirlineName_:Ljava/lang/String;

.field private statusCode_:I

.field private status_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 865
    invoke-virtual {p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    .line 866
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    if-nez v0, :cond_1

    .line 507
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    sput-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    .line 512
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :cond_1
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    return-object v0

    .line 512
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1236
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1230
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 869
    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 870
    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->statusCode_:I

    .line 871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->status_:Ljava/lang/String;

    .line 872
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->lastUpdatedSecondsSinceEpoch_:J

    .line 873
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineCode_:Ljava/lang/String;

    .line 874
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineName_:Ljava/lang/String;

    .line 875
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->flightNumber_:Ljava/lang/String;

    .line 876
    iput-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    .line 877
    iput-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    .line 878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTerminal_:Ljava/lang/String;

    .line 879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureGate_:Ljava/lang/String;

    .line 880
    iput-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    .line 881
    iput-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    .line 882
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTerminal_:Ljava/lang/String;

    .line 883
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalGate_:Ljava/lang/String;

    .line 884
    iput-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    .line 885
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionTerminal_:Ljava/lang/String;

    .line 886
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionGate_:Ljava/lang/String;

    .line 887
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->detailsUrl_:Ljava/lang/String;

    .line 888
    invoke-static {}, Lcom/google/majel/proto/AgendaProtos$GmailReference;->emptyArray()[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 889
    iput-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->notificationDetails:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    .line 890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineName_:Ljava/lang/String;

    .line 891
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineCode_:Ljava/lang/String;

    .line 892
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->cachedSize:I

    .line 893
    return-object p0
.end method

.method public clearAirlineCode()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineCode_:Ljava/lang/String;

    .line 597
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 598
    return-object p0
.end method

.method public clearAirlineName()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 618
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineName_:Ljava/lang/String;

    .line 619
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 620
    return-object p0
.end method

.method public clearArrivalGate()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 740
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalGate_:Ljava/lang/String;

    .line 741
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 742
    return-object p0
.end method

.method public clearArrivalTerminal()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTerminal_:Ljava/lang/String;

    .line 719
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 720
    return-object p0
.end method

.method public clearDepartureGate()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureGate_:Ljava/lang/String;

    .line 691
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 692
    return-object p0
.end method

.method public clearDepartureTerminal()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTerminal_:Ljava/lang/String;

    .line 669
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 670
    return-object p0
.end method

.method public clearDetailsUrl()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 809
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->detailsUrl_:Ljava/lang/String;

    .line 810
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 811
    return-object p0
.end method

.method public clearDiversionGate()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionGate_:Ljava/lang/String;

    .line 788
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 789
    return-object p0
.end method

.method public clearDiversionTerminal()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionTerminal_:Ljava/lang/String;

    .line 766
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 767
    return-object p0
.end method

.method public clearFlightNumber()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 640
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->flightNumber_:Ljava/lang/String;

    .line 641
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 642
    return-object p0
.end method

.method public clearLastUpdatedSecondsSinceEpoch()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 2

    .prologue
    .line 574
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->lastUpdatedSecondsSinceEpoch_:J

    .line 575
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 576
    return-object p0
.end method

.method public clearOperatingAirlineCode()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineCode_:Ljava/lang/String;

    .line 860
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 861
    return-object p0
.end method

.method public clearOperatingAirlineName()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineName_:Ljava/lang/String;

    .line 838
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 839
    return-object p0
.end method

.method public clearStatus()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->status_:Ljava/lang/String;

    .line 556
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 557
    return-object p0
.end method

.method public clearStatusCode()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->statusCode_:I

    .line 534
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 535
    return-object p0
.end method

.method public getAirlineCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getAirlineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineName_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalGate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalGate_:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTerminal_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureGate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureGate_:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTerminal_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDiversionGate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionGate_:Ljava/lang/String;

    return-object v0
.end method

.method public getDiversionTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionTerminal_:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->flightNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdatedSecondsSinceEpoch()J
    .locals 2

    .prologue
    .line 563
    iget-wide v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->lastUpdatedSecondsSinceEpoch_:J

    return-wide v0
.end method

.method public getOperatingAirlineCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatingAirlineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 974
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 975
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 976
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->statusCode_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 979
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 980
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->status_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 983
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 984
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->lastUpdatedSecondsSinceEpoch_:J

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 987
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 988
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineCode_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 991
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    .line 992
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 995
    :cond_4
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-eqz v3, :cond_5

    .line 996
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 999
    :cond_5
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    if-eqz v3, :cond_6

    .line 1000
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1003
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_7

    .line 1004
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTerminal_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1007
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_8

    .line 1008
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureGate_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1011
    :cond_8
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-eqz v3, :cond_9

    .line 1012
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1015
    :cond_9
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    if-eqz v3, :cond_a

    .line 1016
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1019
    :cond_a
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_b

    .line 1020
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTerminal_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1023
    :cond_b
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_c

    .line 1024
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalGate_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1027
    :cond_c
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-eqz v3, :cond_d

    .line 1028
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1031
    :cond_d
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_e

    .line 1032
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionTerminal_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1035
    :cond_e
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_f

    .line 1036
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionGate_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1039
    :cond_f
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_10

    .line 1040
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->flightNumber_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1043
    :cond_10
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_11

    .line 1044
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->detailsUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1047
    :cond_11
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v3, v3

    if-lez v3, :cond_13

    .line 1048
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v3, v3

    if-ge v1, v3, :cond_13

    .line 1049
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    aget-object v0, v3, v1

    .line 1050
    .local v0, "element":Lcom/google/majel/proto/AgendaProtos$GmailReference;
    if-eqz v0, :cond_12

    .line 1051
    const/16 v3, 0x13

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1048
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1056
    .end local v0    # "element":Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .end local v1    # "i":I
    :cond_13
    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->notificationDetails:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    if-eqz v3, :cond_14

    .line 1057
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->notificationDetails:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1060
    :cond_14
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_15

    .line 1061
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1064
    :cond_15
    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_16

    .line 1065
    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineCode_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1068
    :cond_16
    iput v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->cachedSize:I

    .line 1069
    return v2
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->status_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->statusCode_:I

    return v0
.end method

.method public hasAirlineCode()Z
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 615
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 737
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

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
    .line 715
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

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
    .line 687
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

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
    .line 665
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDetailsUrl()Z
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDiversionGate()Z
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDiversionTerminal()Z
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFlightNumber()Z
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastUpdatedSecondsSinceEpoch()Z
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOperatingAirlineCode()Z
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOperatingAirlineName()Z
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusCode()Z
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

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
    .line 489
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1077
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1078
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1082
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1083
    :sswitch_0
    return-object p0

    .line 1088
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->statusCode_:I

    .line 1089
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto :goto_0

    .line 1093
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->status_:Ljava/lang/String;

    .line 1094
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto :goto_0

    .line 1098
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->lastUpdatedSecondsSinceEpoch_:J

    .line 1099
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto :goto_0

    .line 1103
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineCode_:Ljava/lang/String;

    .line 1104
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto :goto_0

    .line 1108
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineName_:Ljava/lang/String;

    .line 1109
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto :goto_0

    .line 1113
    :sswitch_6
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-nez v5, :cond_1

    .line 1114
    new-instance v5, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-direct {v5}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    .line 1116
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1120
    :sswitch_7
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    if-nez v5, :cond_2

    .line 1121
    new-instance v5, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-direct {v5}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    .line 1123
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1127
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTerminal_:Ljava/lang/String;

    .line 1128
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto :goto_0

    .line 1132
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureGate_:Ljava/lang/String;

    .line 1133
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto/16 :goto_0

    .line 1137
    :sswitch_a
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-nez v5, :cond_3

    .line 1138
    new-instance v5, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-direct {v5}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    .line 1140
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1144
    :sswitch_b
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    if-nez v5, :cond_4

    .line 1145
    new-instance v5, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-direct {v5}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    .line 1147
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1151
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTerminal_:Ljava/lang/String;

    .line 1152
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto/16 :goto_0

    .line 1156
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalGate_:Ljava/lang/String;

    .line 1157
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto/16 :goto_0

    .line 1161
    :sswitch_e
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-nez v5, :cond_5

    .line 1162
    new-instance v5, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-direct {v5}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    .line 1164
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1168
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionTerminal_:Ljava/lang/String;

    .line 1169
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto/16 :goto_0

    .line 1173
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionGate_:Ljava/lang/String;

    .line 1174
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto/16 :goto_0

    .line 1178
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->flightNumber_:Ljava/lang/String;

    .line 1179
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto/16 :goto_0

    .line 1183
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->detailsUrl_:Ljava/lang/String;

    .line 1184
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto/16 :goto_0

    .line 1188
    :sswitch_13
    const/16 v5, 0x9a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1190
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-nez v5, :cond_7

    move v1, v4

    .line 1191
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 1193
    .local v2, "newArray":[Lcom/google/majel/proto/AgendaProtos$GmailReference;
    if-eqz v1, :cond_6

    .line 1194
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1196
    :cond_6
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 1197
    new-instance v5, Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-direct {v5}, Lcom/google/majel/proto/AgendaProtos$GmailReference;-><init>()V

    aput-object v5, v2, v1

    .line 1198
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1199
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1190
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/AgendaProtos$GmailReference;
    :cond_7
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v1, v5

    goto :goto_1

    .line 1202
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/AgendaProtos$GmailReference;
    :cond_8
    new-instance v5, Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-direct {v5}, Lcom/google/majel/proto/AgendaProtos$GmailReference;-><init>()V

    aput-object v5, v2, v1

    .line 1203
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1204
    iput-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    goto/16 :goto_0

    .line 1208
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/AgendaProtos$GmailReference;
    :sswitch_14
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->notificationDetails:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    if-nez v5, :cond_9

    .line 1209
    new-instance v5, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    invoke-direct {v5}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->notificationDetails:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    .line 1211
    :cond_9
    iget-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->notificationDetails:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1215
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineName_:Ljava/lang/String;

    .line 1216
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto/16 :goto_0

    .line 1220
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineCode_:Ljava/lang/String;

    .line 1221
    iget v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    goto/16 :goto_0

    .line 1078
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

.method public setAirlineCode(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 588
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineCode_:Ljava/lang/String;

    .line 589
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 590
    return-object p0
.end method

.method public setAirlineName(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 607
    if-nez p1, :cond_0

    .line 608
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 610
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineName_:Ljava/lang/String;

    .line 611
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 612
    return-object p0
.end method

.method public setArrivalGate(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 729
    if-nez p1, :cond_0

    .line 730
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 732
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalGate_:Ljava/lang/String;

    .line 733
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 734
    return-object p0
.end method

.method public setArrivalTerminal(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 707
    if-nez p1, :cond_0

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 710
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTerminal_:Ljava/lang/String;

    .line 711
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 712
    return-object p0
.end method

.method public setDepartureGate(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 682
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureGate_:Ljava/lang/String;

    .line 683
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 684
    return-object p0
.end method

.method public setDepartureTerminal(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 660
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTerminal_:Ljava/lang/String;

    .line 661
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 662
    return-object p0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 798
    if-nez p1, :cond_0

    .line 799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 801
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->detailsUrl_:Ljava/lang/String;

    .line 802
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 803
    return-object p0
.end method

.method public setDiversionGate(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 776
    if-nez p1, :cond_0

    .line 777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 779
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionGate_:Ljava/lang/String;

    .line 780
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 781
    return-object p0
.end method

.method public setDiversionTerminal(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 754
    if-nez p1, :cond_0

    .line 755
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 757
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionTerminal_:Ljava/lang/String;

    .line 758
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 759
    return-object p0
.end method

.method public setFlightNumber(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 629
    if-nez p1, :cond_0

    .line 630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 632
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->flightNumber_:Ljava/lang/String;

    .line 633
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 634
    return-object p0
.end method

.method public setLastUpdatedSecondsSinceEpoch(J)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 566
    iput-wide p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->lastUpdatedSecondsSinceEpoch_:J

    .line 567
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 568
    return-object p0
.end method

.method public setOperatingAirlineCode(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 848
    if-nez p1, :cond_0

    .line 849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 851
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineCode_:Ljava/lang/String;

    .line 852
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 853
    return-object p0
.end method

.method public setOperatingAirlineName(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 829
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineName_:Ljava/lang/String;

    .line 830
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 831
    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 547
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->status_:Ljava/lang/String;

    .line 548
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 549
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 525
    iput p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->statusCode_:I

    .line 526
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    .line 527
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 900
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->statusCode_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 902
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 903
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->status_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 905
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 906
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->lastUpdatedSecondsSinceEpoch_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 908
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 909
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineCode_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 911
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 912
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->airlineName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 914
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-eqz v2, :cond_5

    .line 915
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 917
    :cond_5
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    if-eqz v2, :cond_6

    .line 918
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 920
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    .line 921
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureTerminal_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 923
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 924
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->departureGate_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 926
    :cond_8
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-eqz v2, :cond_9

    .line 927
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 929
    :cond_9
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    if-eqz v2, :cond_a

    .line 930
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTime:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Time;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 932
    :cond_a
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    .line 933
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalTerminal_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 935
    :cond_b
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_c

    .line 936
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->arrivalGate_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 938
    :cond_c
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-eqz v2, :cond_d

    .line 939
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionAirport:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 941
    :cond_d
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_e

    .line 942
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionTerminal_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 944
    :cond_e
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_f

    .line 945
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->diversionGate_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 947
    :cond_f
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_10

    .line 948
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->flightNumber_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 950
    :cond_10
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_11

    .line 951
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->detailsUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 953
    :cond_11
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v2, v2

    if-lez v2, :cond_13

    .line 954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 955
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->gmailReference:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    aget-object v0, v2, v1

    .line 956
    .local v0, "element":Lcom/google/majel/proto/AgendaProtos$GmailReference;
    if-eqz v0, :cond_12

    .line 957
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 954
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v0    # "element":Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .end local v1    # "i":I
    :cond_13
    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->notificationDetails:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    if-eqz v2, :cond_14

    .line 962
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->notificationDetails:Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$NotificationDetails;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 964
    :cond_14
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_15

    .line 965
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 967
    :cond_15
    iget v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_16

    .line 968
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Flight;->operatingAirlineCode_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 970
    :cond_16
    return-void
.end method
