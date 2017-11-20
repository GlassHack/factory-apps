.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassUserEventProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto$ExperimentId;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# instance fields
.field private bitField0_:I

.field private bootCount_:I

.field private eventData_:Ljava/lang/String;

.field private eventSerial_:J

.field private eventSoftwareVersion_:Ljava/lang/String;

.field private eventTimeMs_:J

.field private eventType_:Ljava/lang/String;

.field public experimentId:[I

.field private glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

.field private hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

.field private isDogfood_:Z

.field private music_:Lcom/google/common/logging/MusicLogNano$Music;

.field private performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

.field private timezone_:Ljava/lang/String;

.field private tts_:Lcom/google/common/logging/TtsLogNano$Tts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

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
    iput-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    .line 732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 754
    iput-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    .line 773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 836
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 858
    iput-boolean v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    .line 953
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    .line 972
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    .line 702
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1255
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    return-object v0
.end method


# virtual methods
.method public clearBootCount()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    .line 967
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 968
    return-object p0
.end method

.method public clearEventData()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 811
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 812
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 813
    return-object p0
.end method

.method public clearEventSerial()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 2

    .prologue
    .line 767
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    .line 768
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 769
    return-object p0
.end method

.method public clearEventSoftwareVersion()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 852
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 853
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 854
    return-object p0
.end method

.method public clearEventTimeMs()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 2

    .prologue
    .line 726
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    .line 727
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 728
    return-object p0
.end method

.method public clearEventType()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 790
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 791
    return-object p0
.end method

.method public clearGlasswareUsage()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 893
    return-object p0
.end method

.method public clearHotwordCompilation()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    .line 912
    return-object p0
.end method

.method public clearIsDogfood()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    .line 872
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 873
    return-object p0
.end method

.method public clearMusic()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    .line 931
    return-object p0
.end method

.method public clearPerformanceStats()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 833
    return-object p0
.end method

.method public clearTimezone()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 748
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 749
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 750
    return-object p0
.end method

.method public clearTts()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    .line 950
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 976
    if-ne p1, p0, :cond_1

    .line 993
    :cond_0
    :goto_0
    return v1

    .line 977
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 978
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 979
    .local v0, "other":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 980
    :goto_1
    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 982
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 983
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v3, :cond_3

    .line 984
    :goto_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 985
    :goto_5
    iget-boolean v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    if-nez v3, :cond_3

    .line 987
    :goto_6
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    if-nez v3, :cond_3

    .line 988
    :goto_7
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    if-nez v3, :cond_3

    .line 989
    :goto_8
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    if-nez v3, :cond_3

    .line 990
    :goto_9
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    .line 992
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 993
    goto/16 :goto_0

    .line 979
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 980
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 982
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 983
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 984
    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 985
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 987
    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    .line 988
    invoke-virtual {v3, v4}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    .line 989
    invoke-virtual {v3, v4}, Lcom/google/common/logging/MusicLogNano$Music;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    .line 990
    invoke-virtual {v3, v4}, Lcom/google/common/logging/TtsLogNano$Tts;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_9

    .line 992
    :cond_d
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    .line 993
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getBootCount()I
    .locals 1

    .prologue
    .line 955
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    return v0
.end method

.method public getEventData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSerial()J
    .locals 2

    .prologue
    .line 756
    iget-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    return-wide v0
.end method

.method public getEventSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimeMs()J
    .locals 2

    .prologue
    .line 715
    iget-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    return-wide v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    return-object v0
.end method

.method public getGlasswareUsage()Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    return-object v0
.end method

.method public getHotwordCompilation()Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    return-object v0
.end method

.method public getIsDogfood()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    return v0
.end method

.method public getMusic()Lcom/google/common/logging/MusicLogNano$Music;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    return-object v0
.end method

.method public getPerformanceStats()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1073
    const/4 v2, 0x0

    .line 1074
    .local v2, "size":I
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1075
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    .line 1076
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1078
    :cond_0
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 1079
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 1080
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1082
    :cond_1
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2

    .line 1083
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 1084
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1086
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-eqz v3, :cond_3

    .line 1087
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 1088
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1090
    :cond_3
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 1091
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    .line 1092
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1094
    :cond_4
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    .line 1095
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 1096
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1098
    :cond_5
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 1099
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 1100
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1102
    :cond_6
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_7

    .line 1103
    const/16 v3, 0x8

    iget-boolean v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    .line 1104
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1106
    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    if-eqz v3, :cond_8

    .line 1107
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    .line 1108
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1110
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    if-eqz v3, :cond_9

    .line 1111
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 1112
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1114
    :cond_9
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a

    .line 1115
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    .line 1116
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1118
    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    array-length v3, v3

    if-lez v3, :cond_c

    .line 1119
    const/4 v0, 0x0

    .line 1120
    .local v0, "dataSize":I
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_b

    aget v1, v4, v3

    .line 1122
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 1120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1124
    .end local v1    # "element":I
    :cond_b
    add-int/2addr v2, v0

    .line 1125
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 1127
    .end local v0    # "dataSize":I
    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    if-eqz v3, :cond_d

    .line 1128
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    .line 1129
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1131
    :cond_d
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    if-eqz v3, :cond_e

    .line 1132
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    .line 1133
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1135
    :cond_e
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1136
    iput v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->cachedSize:I

    .line 1137
    return v2
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    return-object v0
.end method

.method public getTts()Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    return-object v0
.end method

.method public hasBootCount()Z
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventData()Z
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventSerial()Z
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventSoftwareVersion()Z
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventTimeMs()Z
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 786
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlasswareUsage()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHotwordCompilation()Z
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsDogfood()Z
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMusic()Z
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPerformanceStats()Z
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimezone()Z
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTts()Z
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 997
    const/16 v1, 0x11

    .line 998
    .local v1, "result":I
    iget-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    iget-wide v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit16 v1, v2, 0x20f

    .line 999
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 1000
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    iget-wide v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 1001
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 1002
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 1003
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 1004
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 1005
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_5
    add-int v1, v4, v2

    .line 1006
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    if-nez v2, :cond_7

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 1007
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    if-nez v2, :cond_8

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 1008
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    if-nez v2, :cond_9

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 1009
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    if-nez v2, :cond_a

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 1010
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    add-int v1, v2, v4

    .line 1011
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    if-nez v2, :cond_b

    mul-int/lit8 v1, v1, 0x1f

    .line 1017
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_c

    :goto_a
    add-int v1, v2, v3

    .line 1018
    return v1

    .line 999
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 1002
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 1003
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->hashCode()I

    move-result v2

    goto :goto_3

    .line 1004
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 1005
    :cond_6
    const/4 v2, 0x2

    goto :goto_5

    .line 1006
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    invoke-virtual {v2}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;->hashCode()I

    move-result v2

    goto :goto_6

    .line 1007
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    invoke-virtual {v2}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->hashCode()I

    move-result v2

    goto :goto_7

    .line 1008
    :cond_9
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    invoke-virtual {v2}, Lcom/google/common/logging/MusicLogNano$Music;->hashCode()I

    move-result v2

    goto :goto_8

    .line 1009
    :cond_a
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    invoke-virtual {v2}, Lcom/google/common/logging/TtsLogNano$Tts;->hashCode()I

    move-result v2

    goto :goto_9

    .line 1013
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1014
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    aget v4, v4, v0

    add-int v1, v2, v4

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1017
    .end local v0    # "i":I
    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_a
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1146
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1150
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_1

    .line 1151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    .line 1154
    :cond_1
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1156
    :sswitch_0
    return-object p0

    .line 1161
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    .line 1162
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    goto :goto_0

    .line 1166
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 1167
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    goto :goto_0

    .line 1171
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 1172
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    goto :goto_0

    .line 1176
    :sswitch_4
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v4, :cond_2

    .line 1177
    new-instance v4, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v4}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 1179
    :cond_2
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1183
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    .line 1184
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    goto :goto_0

    .line 1188
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 1189
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    goto :goto_0

    .line 1193
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 1194
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    goto :goto_0

    .line 1198
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    .line 1199
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    goto/16 :goto_0

    .line 1203
    :sswitch_9
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    if-nez v4, :cond_3

    .line 1204
    new-instance v4, Lcom/google/common/logging/MusicLogNano$Music;

    invoke-direct {v4}, Lcom/google/common/logging/MusicLogNano$Music;-><init>()V

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    .line 1206
    :cond_3
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1210
    :sswitch_a
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    if-nez v4, :cond_4

    .line 1211
    new-instance v4, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    invoke-direct {v4}, Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;-><init>()V

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 1213
    :cond_4
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1217
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    .line 1218
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    goto/16 :goto_0

    .line 1222
    :sswitch_c
    const/16 v4, 0x60

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1223
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    array-length v1, v4

    .line 1224
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1225
    .local v2, "newArray":[I
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1226
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    .line 1227
    :goto_1
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_5

    .line 1228
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1229
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1232
    :cond_5
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_0

    .line 1236
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_d
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    if-nez v4, :cond_6

    .line 1237
    new-instance v4, Lcom/google/common/logging/TtsLogNano$Tts;

    invoke-direct {v4}, Lcom/google/common/logging/TtsLogNano$Tts;-><init>()V

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    .line 1239
    :cond_6
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1243
    :sswitch_e
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    if-nez v4, :cond_7

    .line 1244
    new-instance v4, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    invoke-direct {v4}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;-><init>()V

    iput-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    .line 1246
    :cond_7
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1146
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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public setBootCount(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 958
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    .line 959
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 960
    return-object p0
.end method

.method public setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 800
    if-nez p1, :cond_0

    .line 801
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 803
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 804
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 805
    return-object p0
.end method

.method public setEventSerial(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 759
    iput-wide p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    .line 760
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 761
    return-object p0
.end method

.method public setEventSoftwareVersion(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 841
    if-nez p1, :cond_0

    .line 842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 844
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 845
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 846
    return-object p0
.end method

.method public setEventTimeMs(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 718
    iput-wide p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    .line 719
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 720
    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 778
    if-nez p1, :cond_0

    .line 779
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 781
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 782
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 783
    return-object p0
.end method

.method public setGlasswareUsage(Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .prologue
    .line 882
    if-nez p1, :cond_0

    .line 883
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 885
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    .line 886
    return-object p0
.end method

.method public setHotwordCompilation(Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    .prologue
    .line 901
    if-nez p1, :cond_0

    .line 902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 904
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    .line 905
    return-object p0
.end method

.method public setIsDogfood(Z)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 863
    iput-boolean p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    .line 864
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 865
    return-object p0
.end method

.method public setMusic(Lcom/google/common/logging/MusicLogNano$Music;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Lcom/google/common/logging/MusicLogNano$Music;

    .prologue
    .line 920
    if-nez p1, :cond_0

    .line 921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 923
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    .line 924
    return-object p0
.end method

.method public setPerformanceStats(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .prologue
    .line 822
    if-nez p1, :cond_0

    .line 823
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 825
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 826
    return-object p0
.end method

.method public setTimezone(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 737
    if-nez p1, :cond_0

    .line 738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 740
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 741
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    .line 742
    return-object p0
.end method

.method public setTts(Lcom/google/common/logging/TtsLogNano$Tts;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Lcom/google/common/logging/TtsLogNano$Tts;

    .prologue
    .line 939
    if-nez p1, :cond_0

    .line 940
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 942
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    .line 943
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1023
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1024
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1026
    :cond_0
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 1027
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1029
    :cond_1
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 1030
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1032
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-eqz v1, :cond_3

    .line 1033
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1035
    :cond_3
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 1036
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1038
    :cond_4
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1039
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1041
    :cond_5
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 1042
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->timezone_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1044
    :cond_6
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 1045
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->isDogfood_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1047
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    if-eqz v1, :cond_8

    .line 1048
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->music_:Lcom/google/common/logging/MusicLogNano$Music;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1050
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    if-eqz v1, :cond_9

    .line 1051
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->glasswareUsage_:Lcom/google/common/logging/GlasswareUsageLogNano$GlasswareUsage;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1053
    :cond_9
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_a

    .line 1054
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->bootCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1056
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    array-length v1, v1

    if-lez v1, :cond_b

    .line 1057
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->experimentId:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_b

    aget v0, v2, v1

    .line 1058
    .local v0, "element":I
    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1057
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1061
    .end local v0    # "element":I
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    if-eqz v1, :cond_c

    .line 1062
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->tts_:Lcom/google/common/logging/TtsLogNano$Tts;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1064
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    if-eqz v1, :cond_d

    .line 1065
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hotwordCompilation_:Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1067
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1069
    return-void
.end method
