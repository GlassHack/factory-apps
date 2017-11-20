.class public final Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecurrenceProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/RecurrenceProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Recurrence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;,
        Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;,
        Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;,
        Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;,
        Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;,
        Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;
    }
.end annotation


# static fields
.field public static final FREQUENCY_DAILY:I = 0x0

.field public static final FREQUENCY_MONTHLY:I = 0x2

.field public static final FREQUENCY_WEEKLY:I = 0x1

.field public static final FREQUENCY_YEARLY:I = 0x3

.field public static final MONTH_APRIL:I = 0x4

.field public static final MONTH_AUGUST:I = 0x8

.field public static final MONTH_DECEMBER:I = 0xc

.field public static final MONTH_FEBRUARY:I = 0x2

.field public static final MONTH_JANUARY:I = 0x1

.field public static final MONTH_JULY:I = 0x7

.field public static final MONTH_JUNE:I = 0x6

.field public static final MONTH_MARCH:I = 0x3

.field public static final MONTH_MAY:I = 0x5

.field public static final MONTH_NOVEMBER:I = 0xb

.field public static final MONTH_OCTOBER:I = 0xa

.field public static final MONTH_SEPTEMBER:I = 0x9

.field public static final WEEKDAY_FRIDAY:I = 0x5

.field public static final WEEKDAY_MONDAY:I = 0x1

.field public static final WEEKDAY_SATURDAY:I = 0x6

.field public static final WEEKDAY_SUNDAY:I = 0x7

.field public static final WEEKDAY_THURSDAY:I = 0x4

.field public static final WEEKDAY_TUESDAY:I = 0x2

.field public static final WEEKDAY_WEDNESDAY:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;


# instance fields
.field private bitField0_:I

.field public dailyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

.field private every_:I

.field private frequency_:I

.field public monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

.field public recurrenceEnd:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

.field public recurrenceStart:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

.field public weeklyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

.field public yearlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1093
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1094
    invoke-virtual {p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    .line 1095
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
    .locals 2

    .prologue
    .line 1024
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-nez v0, :cond_1

    .line 1025
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1027
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    if-nez v0, :cond_0

    .line 1028
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    sput-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    .line 1030
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->_emptyArray:[Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    return-object v0

    .line 1030
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1258
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1252
    new-instance v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    invoke-direct {v0}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1098
    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    .line 1099
    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->frequency_:I

    .line 1100
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->every_:I

    .line 1101
    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceStart:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    .line 1102
    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceEnd:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    .line 1103
    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->dailyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    .line 1104
    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->weeklyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

    .line 1105
    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    .line 1106
    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->yearlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    .line 1107
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->cachedSize:I

    .line 1108
    return-object p0
.end method

.method public clearEvery()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->every_:I

    .line 1071
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    .line 1072
    return-object p0
.end method

.method public clearFrequency()Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->frequency_:I

    .line 1052
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    .line 1053
    return-object p0
.end method

.method public getEvery()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->every_:I

    return v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->frequency_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1142
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1143
    .local v0, "size":I
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1144
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->frequency_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1147
    :cond_0
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1148
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->every_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceStart:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    if-eqz v1, :cond_2

    .line 1152
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceStart:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1155
    :cond_2
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceEnd:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    if-eqz v1, :cond_3

    .line 1156
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceEnd:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1159
    :cond_3
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->dailyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    if-eqz v1, :cond_4

    .line 1160
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->dailyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1163
    :cond_4
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->weeklyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

    if-eqz v1, :cond_5

    .line 1164
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->weeklyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1167
    :cond_5
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    if-eqz v1, :cond_6

    .line 1168
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1171
    :cond_6
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->yearlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    if-eqz v1, :cond_7

    .line 1172
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->yearlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1175
    :cond_7
    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->cachedSize:I

    .line 1176
    return v0
.end method

.method public hasEvery()Z
    .locals 1

    .prologue
    .line 1067
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFrequency()Z
    .locals 1

    .prologue
    .line 1048
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1185
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1189
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1190
    :sswitch_0
    return-object p0

    .line 1195
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->frequency_:I

    .line 1196
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    goto :goto_0

    .line 1200
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->every_:I

    .line 1201
    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    goto :goto_0

    .line 1205
    :sswitch_3
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceStart:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    if-nez v1, :cond_1

    .line 1206
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceStart:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    .line 1208
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceStart:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1212
    :sswitch_4
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceEnd:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    if-nez v1, :cond_2

    .line 1213
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceEnd:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    .line 1215
    :cond_2
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceEnd:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1219
    :sswitch_5
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->dailyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    if-nez v1, :cond_3

    .line 1220
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->dailyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    .line 1222
    :cond_3
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->dailyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1226
    :sswitch_6
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->weeklyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

    if-nez v1, :cond_4

    .line 1227
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->weeklyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

    .line 1229
    :cond_4
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->weeklyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1233
    :sswitch_7
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    if-nez v1, :cond_5

    .line 1234
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    .line 1236
    :cond_5
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1240
    :sswitch_8
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->yearlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    if-nez v1, :cond_6

    .line 1241
    new-instance v1, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    invoke-direct {v1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;-><init>()V

    iput-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->yearlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    .line 1243
    :cond_6
    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->yearlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1185
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
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
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;

    move-result-object v0

    return-object v0
.end method

.method public setEvery(I)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1062
    iput p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->every_:I

    .line 1063
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    .line 1064
    return-object p0
.end method

.method public setFrequency(I)Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1043
    iput p1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->frequency_:I

    .line 1044
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    .line 1045
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
    .line 1114
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1115
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->frequency_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1117
    :cond_0
    iget v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1118
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->every_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceStart:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    if-eqz v0, :cond_2

    .line 1121
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceStart:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceStart;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1123
    :cond_2
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceEnd:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    if-eqz v0, :cond_3

    .line 1124
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->recurrenceEnd:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$RecurrenceEnd;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1126
    :cond_3
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->dailyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    if-eqz v0, :cond_4

    .line 1127
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->dailyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$DailyPattern;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1129
    :cond_4
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->weeklyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

    if-eqz v0, :cond_5

    .line 1130
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->weeklyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$WeeklyPattern;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1132
    :cond_5
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    if-eqz v0, :cond_6

    .line 1133
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->monthlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$MonthlyPattern;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1135
    :cond_6
    iget-object v0, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->yearlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    if-eqz v0, :cond_7

    .line 1136
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence;->yearlyPattern:Lcom/google/caribou/tasks/RecurrenceProtos$Recurrence$YearlyPattern;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1138
    :cond_7
    return-void
.end method
