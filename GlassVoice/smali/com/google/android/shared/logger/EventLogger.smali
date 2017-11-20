.class public final Lcom/google/android/shared/logger/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/logger/EventLogger$LogData;,
        Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;,
        Lcom/google/android/shared/logger/EventLogger$ClearCutEventLogger;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final BREAK_DOWN_GROUP:I = 0x50000000

.field public static final CLIENT_EVENT_GROUP:I = 0x10000000

.field public static final COLLECTOR_EVENT_GROUP:I = -0x10000000

.field private static final DEBUG:Z = false

.field private static final DEBUG_LOG_LEVEL:I = 0x3

.field public static final GROUP_MASK:I = -0x10000000

.field public static final LATENCY_START_GROUP:I = 0x40000000

.field private static final MAX_EVENTS_TO_DUMP:I = 0xc8

.field public static final SOURCE_MASK:I = 0xf000000

.field public static final SOURCE_NONE:I = 0x3000000

.field public static final SOURCE_TOUCH:I = 0x1000000

.field private static final SOURCE_UNDEFINED:I = 0x0

.field public static final SOURCE_VOICE:I = 0x2000000

.field public static final SPEECH_EVENT_GROUP:I = 0x20000000

.field private static final TAG:Ljava/lang/String; = "EventLogger"

.field private static sClearCutEventLogger:Lcom/google/android/shared/logger/EventLogger$ClearCutEventLogger;

.field private static volatile sEventLoggerStore:Lcom/google/android/shared/logger/EventLoggerStore;

.field private static sOneOffEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sRequestLoggingContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/android/shared/logger/RequestLoggingContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    .line 90
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/shared/logger/EventLogger;->sOneOffEvents:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static dumpEvents()Ljava/lang/String;
    .locals 12

    .prologue
    .line 306
    invoke-static {}, Lcom/google/android/shared/logger/EventLoggerStores;->getMainEventLoggerStore()Lcom/google/android/shared/logger/MainEventLoggerStore;

    move-result-object v5

    .line 307
    .local v5, "store":Lcom/google/android/shared/logger/MainEventLoggerStore;
    invoke-virtual {v5}, Lcom/google/android/shared/logger/MainEventLoggerStore;->getResults()Lcom/google/android/shared/logger/MainEventLoggerStore$Results;

    move-result-object v3

    .line 310
    .local v3, "r":Lcom/google/android/shared/logger/MainEventLoggerStore$Results;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "MM-dd HH:mm:ss.SSS"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 316
    .local v1, "format":Ljava/text/DateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 317
    .local v6, "timeDelta":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-interface {v3}, Lcom/google/android/shared/logger/MainEventLoggerStore$Results;->size()I

    move-result v9

    add-int/lit16 v9, v9, -0xc8

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Lcom/google/android/shared/logger/MainEventLoggerStore$Results;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 319
    invoke-interface {v3, v2}, Lcom/google/android/shared/logger/MainEventLoggerStore$Results;->getEvent(I)I

    move-result v0

    .line 320
    .local v0, "event":I
    const-string v8, "  "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-interface {v3, v2}, Lcom/google/android/shared/logger/MainEventLoggerStore$Results;->getTime(I)J

    move-result-wide v10

    add-long/2addr v10, v6

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, -0x10000000

    and-int/2addr v9, v0

    invoke-static {v9}, Lcom/google/android/shared/logger/EventLogger;->getLogGroupLabel(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, 0xf000000

    and-int/2addr v9, v0

    invoke-static {v9}, Lcom/google/android/shared/logger/EventLogger;->getLogSourceLabel(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0xffffff

    and-int/2addr v9, v0

    invoke-static {v9}, Lcom/google/android/shared/util/DebugEnumUtils;->getClientEventTypeLabel(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v0    # "event":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getLogGroupLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 338
    sparse-switch p0, :sswitch_data_0

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 340
    :sswitch_0
    const-string v0, "CLIENT_EVENT_GROUP"

    goto :goto_0

    .line 342
    :sswitch_1
    const-string v0, "SPEECH_EVENT_GROUP"

    goto :goto_0

    .line 344
    :sswitch_2
    const-string v0, "LATENCY_START_GROUP"

    goto :goto_0

    .line 346
    :sswitch_3
    const-string v0, "BREAK_DOWN_GROUP"

    goto :goto_0

    .line 338
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000000 -> :sswitch_0
        0x20000000 -> :sswitch_1
        0x40000000 -> :sswitch_2
        0x50000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getLogSourceLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 355
    sparse-switch p0, :sswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 357
    :sswitch_0
    const-string v0, "SOURCE_UNDEFINED"

    goto :goto_0

    .line 359
    :sswitch_1
    const-string v0, "SOURCE_TOUCH"

    goto :goto_0

    .line 361
    :sswitch_2
    const-string v0, "SOURCE_VOICE"

    goto :goto_0

    .line 363
    :sswitch_3
    const-string v0, "SOURCE_NONE"

    goto :goto_0

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
        0x3000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getStore()Lcom/google/android/shared/logger/EventLoggerStore;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 380
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sEventLoggerStore:Lcom/google/android/shared/logger/EventLoggerStore;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/google/android/shared/logger/EventLoggerStores;->createEventStore()Lcom/google/android/shared/logger/EventLoggerStore;

    move-result-object v0

    .line 153
    .local v0, "eventLoggerStore":Lcom/google/android/shared/logger/EventLoggerStore;
    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->setStore(Lcom/google/android/shared/logger/EventLoggerStore;)V

    .line 154
    return-void
.end method

.method private static record(IIILjava/lang/Object;Z)V
    .locals 4
    .param p0, "group"    # I
    .param p1, "source"    # I
    .param p2, "event"    # I
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "oneOff"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    const v1, 0xfffffff

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 215
    const v1, -0xf000001

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 216
    const/high16 v1, -0x1000000

    and-int/2addr v1, p2

    if-nez v1, :cond_2

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 222
    or-int v1, p0, p1

    or-int v0, v1, p2

    .line 223
    .local v0, "wholeEvent":I
    if-eqz p4, :cond_3

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->shouldLog(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    :goto_3
    return-void

    .end local v0    # "wholeEvent":I
    :cond_0
    move v1, v3

    .line 214
    goto :goto_0

    :cond_1
    move v1, v3

    .line 215
    goto :goto_1

    :cond_2
    move v2, v3

    .line 216
    goto :goto_2

    .line 228
    .restart local v0    # "wholeEvent":I
    :cond_3
    sget-object v1, Lcom/google/android/shared/logger/EventLogger;->sEventLoggerStore:Lcom/google/android/shared/logger/EventLoggerStore;

    if-nez v1, :cond_4

    .line 230
    const-string v1, "EventLogger"

    const-string v2, "No EventLoggerStore set on EventLogger, event will be ignored.Initialize EventLogger in your Application#onCreate method"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 233
    :cond_4
    sget-object v1, Lcom/google/android/shared/logger/EventLogger;->sEventLoggerStore:Lcom/google/android/shared/logger/EventLoggerStore;

    invoke-interface {v1, v0, p3}, Lcom/google/android/shared/logger/EventLoggerStore;->recordEvent(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method public static recordBreakdownEvent(I)V
    .locals 3
    .param p0, "event"    # I

    .prologue
    const/4 v2, 0x0

    .line 202
    const/high16 v0, 0x50000000

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1, v2}, Lcom/google/android/shared/logger/EventLogger;->record(IIILjava/lang/Object;Z)V

    .line 203
    return-void
.end method

.method public static recordBreakdownEvent(ILjava/lang/Object;)V
    .locals 2
    .param p0, "event"    # I
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 206
    const/high16 v0, 0x50000000

    invoke-static {v0, v1, p0, p1, v1}, Lcom/google/android/shared/logger/EventLogger;->record(IIILjava/lang/Object;Z)V

    .line 207
    return-void
.end method

.method public static recordClientEvent(I)V
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(ILjava/lang/Object;)V

    .line 167
    return-void
.end method

.method public static recordClientEvent(ILjava/lang/Object;)V
    .locals 2
    .param p0, "event"    # I
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 170
    const/high16 v0, 0x10000000

    invoke-static {v0, v1, p0, p1, v1}, Lcom/google/android/shared/logger/EventLogger;->record(IIILjava/lang/Object;Z)V

    .line 171
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sClearCutEventLogger:Lcom/google/android/shared/logger/EventLogger$ClearCutEventLogger;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sClearCutEventLogger:Lcom/google/android/shared/logger/EventLogger$ClearCutEventLogger;

    invoke-interface {v0, p0, p1}, Lcom/google/android/shared/logger/EventLogger$ClearCutEventLogger;->maybeLogEventViaClearcutLogger(ILjava/lang/Object;)V

    .line 174
    :cond_0
    return-void
.end method

.method public static recordClientEventWithSource(IILjava/lang/Object;)V
    .locals 2
    .param p0, "event"    # I
    .param p1, "source"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 177
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, p2, v1}, Lcom/google/android/shared/logger/EventLogger;->record(IIILjava/lang/Object;Z)V

    .line 178
    return-void
.end method

.method public static recordGsaError(Lcom/google/android/shared/exception/GsaError;)V
    .locals 5
    .param p0, "error"    # Lcom/google/android/shared/exception/GsaError;

    .prologue
    .line 253
    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->checkNotMainThread()V

    .line 254
    const-wide/16 v0, 0x0

    .line 255
    .local v0, "requestId":J
    sget-object v3, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/shared/logger/RequestLoggingContext;

    .line 256
    .local v2, "requestLoggingContext":Lcom/google/android/shared/logger/RequestLoggingContext;
    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v2}, Lcom/google/android/shared/logger/RequestLoggingContext;->getRequestId()J

    move-result-wide v0

    .line 259
    :cond_0
    const-wide/16 v3, 0x0

    invoke-static {p0, v0, v1, v3, v4}, Lcom/google/android/shared/logger/EventLogger;->recordGsaError(Lcom/google/android/shared/exception/GsaError;JJ)V

    .line 260
    return-void
.end method

.method public static recordGsaError(Lcom/google/android/shared/exception/GsaError;JJ)V
    .locals 6
    .param p0, "error"    # Lcom/google/android/shared/exception/GsaError;
    .param p1, "requestId"    # J
    .param p3, "latencyId"    # J

    .prologue
    .line 269
    new-instance v0, Lcom/google/android/shared/logger/LatencyLoggingData;

    invoke-interface {p0}, Lcom/google/android/shared/exception/GsaError;->getErrorCode()I

    move-result v5

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/shared/logger/LatencyLoggingData;-><init>(JJI)V

    .line 271
    .local v0, "logData":Lcom/google/android/shared/logger/LatencyLoggingData;
    invoke-static {p0, v0}, Lcom/google/android/shared/logger/EventLogger;->recordGsaError(Lcom/google/android/shared/exception/GsaError;Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public static recordGsaError(Lcom/google/android/shared/exception/GsaError;Ljava/lang/Object;)V
    .locals 2
    .param p0, "error"    # Lcom/google/android/shared/exception/GsaError;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 281
    invoke-interface {p0}, Lcom/google/android/shared/exception/GsaError;->asException()Ljava/lang/Exception;

    move-result-object v0

    .line 282
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/shared/exception/GsaError;

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/android/shared/exception/GsaError;

    invoke-static {v1}, Lcom/google/android/shared/logger/EventLogger;->recordGsaError(Lcom/google/android/shared/exception/GsaError;)V

    .line 288
    :cond_0
    const-string v1, "EventLogger"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    invoke-interface {p0}, Lcom/google/android/shared/exception/GsaError;->getErrorType()I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public static recordLatencyStart(I)V
    .locals 3
    .param p0, "event"    # I

    .prologue
    const/4 v2, 0x0

    .line 195
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1, v2}, Lcom/google/android/shared/logger/EventLogger;->record(IIILjava/lang/Object;Z)V

    .line 196
    return-void
.end method

.method public static recordOneOffBreakdownEvent(I)V
    .locals 4
    .param p0, "event"    # I

    .prologue
    .line 210
    const/high16 v0, 0x50000000

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/android/shared/logger/EventLogger;->record(IIILjava/lang/Object;Z)V

    .line 211
    return-void
.end method

.method public static recordSpeechEvent(I)V
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(ILjava/lang/Object;)V

    .line 185
    return-void
.end method

.method public static recordSpeechEvent(ILjava/lang/Object;)V
    .locals 2
    .param p0, "event"    # I
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 188
    const/high16 v0, 0x20000000

    invoke-static {v0, v1, p0, p1, v1}, Lcom/google/android/shared/logger/EventLogger;->record(IIILjava/lang/Object;Z)V

    .line 189
    return-void
.end method

.method public static resetOneOff()V
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sOneOffEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 299
    return-void
.end method

.method public static setClearcutEventLogger(Lcom/google/android/shared/logger/EventLogger$ClearCutEventLogger;)V
    .locals 0
    .param p0, "clearCutEventLogger"    # Lcom/google/android/shared/logger/EventLogger$ClearCutEventLogger;

    .prologue
    .line 384
    sput-object p0, Lcom/google/android/shared/logger/EventLogger;->sClearCutEventLogger:Lcom/google/android/shared/logger/EventLogger$ClearCutEventLogger;

    .line 385
    return-void
.end method

.method public static setStore(Lcom/google/android/shared/logger/EventLoggerStore;)V
    .locals 1
    .param p0, "eventLoggerStore"    # Lcom/google/android/shared/logger/EventLoggerStore;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 375
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/shared/logger/EventLoggerStore;

    sput-object v0, Lcom/google/android/shared/logger/EventLogger;->sEventLoggerStore:Lcom/google/android/shared/logger/EventLoggerStore;

    .line 376
    return-void
.end method

.method private static declared-synchronized shouldLog(I)Z
    .locals 3
    .param p0, "wholeEvent"    # I

    .prologue
    .line 238
    const-class v1, Lcom/google/android/shared/logger/EventLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sOneOffEvents:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 242
    :goto_0
    monitor-exit v1

    return v0

    .line 241
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sOneOffEvents:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static startHandling(Lcom/google/common/util/concurrent/ListenableFuture;IIIILcom/google/android/shared/logger/LatencyLoggingData;)V
    .locals 6
    .param p1, "startEvent"    # I
    .param p2, "endEvent"    # I
    .param p3, "errorEvent"    # I
    .param p4, "errorCode"    # I
    .param p5, "data"    # Lcom/google/android/shared/logger/LatencyLoggingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;IIII",
            "Lcom/google/android/shared/logger/LatencyLoggingData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    new-instance v0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;-><init>(IIIILcom/google/android/shared/logger/LatencyLoggingData;)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 160
    return-void
.end method
