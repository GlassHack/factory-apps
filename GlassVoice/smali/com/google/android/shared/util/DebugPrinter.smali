.class final Lcom/google/android/shared/util/DebugPrinter;
.super Ljava/lang/Object;
.source "DebugPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/DebugPrinter$Item;
    }
.end annotation


# static fields
.field private static final CHAR_ENTER:C = '>'

.field private static final CHAR_EXIT:C = '<'

.field private static final LOG_SIZE:I = 0xc8

.field private static final NS_MILLI:J = 0xf4240L

.field private static final NS_SECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "DebugPrinter"

.field private static final TASK_LOG_DURATION_NS:J = 0x1e8480L

.field private static final TASK_WARNING_DURATION_NS:J = 0x3f940a8L


# instance fields
.field private final mCircBuffer:[Lcom/google/android/shared/util/DebugPrinter$Item;

.field private mCircBufferPos:I

.field private final mHashcode:Ljava/util/regex/Pattern;

.field private mLastStartMessage:Ljava/lang/String;

.field private mLastTimeNs:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v1, " \\{[a-f0-9]+\\}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/shared/util/DebugPrinter;->mHashcode:Ljava/util/regex/Pattern;

    .line 59
    new-array v1, v3, [Lcom/google/android/shared/util/DebugPrinter$Item;

    iput-object v1, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBuffer:[Lcom/google/android/shared/util/DebugPrinter$Item;

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBufferPos:I

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 83
    iget-object v1, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBuffer:[Lcom/google/android/shared/util/DebugPrinter$Item;

    new-instance v2, Lcom/google/android/shared/util/DebugPrinter$Item;

    invoke-direct {v2}, Lcom/google/android/shared/util/DebugPrinter$Item;-><init>()V

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method private dumpExecutingTask(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/google/android/shared/util/DebugPrinter;->mLastStartMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "Executing task:"

    invoke-static {p2, p1, v0}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/google/android/shared/util/DebugPrinter;->mLastTimeNs:J

    sub-long v3, v0, v5

    .line 145
    .local v3, "duration":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/shared/util/DebugPrinter;->mLastStartMessage:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/shared/util/DebugPrinter;->logOrDumpLooperString(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;)V

    .line 149
    .end local v3    # "duration":J
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "Executing task: None"

    invoke-static {p2, p1, v0}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dumpFinishedTasks(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " of at least "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v2, 0x1e8480

    invoke-static {v2, v3}, Lcom/google/android/shared/util/DebugPrinter;->nsToMsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "minTime":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished tasks"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "prefix2":Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 164
    .local v11, "totalTimeNs":J
    iget-object v0, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBuffer:[Lcom/google/android/shared/util/DebugPrinter$Item;

    iget v2, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBufferPos:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/google/android/shared/util/DebugPrinter$Item;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 166
    const/4 v8, 0x0

    .line 167
    .local v8, "i":I
    iget v6, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBufferPos:I

    .local v6, "count":I
    move v7, v6

    .line 173
    .end local v6    # "count":I
    .local v7, "count":I
    :goto_0
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "count":I
    .restart local v6    # "count":I
    if-eqz v7, :cond_2

    .line 174
    iget-object v0, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBuffer:[Lcom/google/android/shared/util/DebugPrinter$Item;

    aget-object v9, v0, v8

    .line 175
    .local v9, "item":Lcom/google/android/shared/util/DebugPrinter$Item;
    add-int/lit8 v8, v8, 0x1

    const/16 v0, 0xc8

    if-ne v8, v0, :cond_0

    .line 176
    const/4 v8, 0x0

    .line 180
    :cond_0
    iget-wide v2, v9, Lcom/google/android/shared/util/DebugPrinter$Item;->mDurationNs:J

    add-long/2addr v11, v2

    .line 181
    iget-wide v3, v9, Lcom/google/android/shared/util/DebugPrinter$Item;->mDurationNs:J

    iget-object v5, v9, Lcom/google/android/shared/util/DebugPrinter$Item;->mMessage:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/shared/util/DebugPrinter;->logOrDumpLooperString(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;)V

    move v7, v6

    .line 182
    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_0

    .line 170
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v9    # "item":Lcom/google/android/shared/util/DebugPrinter$Item;
    :cond_1
    iget v8, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBufferPos:I

    .line 171
    .restart local v8    # "i":I
    const/16 v6, 0xc8

    .restart local v6    # "count":I
    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_0

    .line 183
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11, v12}, Lcom/google/android/shared/util/DebugPrinter;->nsToMsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private logOrDumpLooperString(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "durationNs"    # J
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Lcom/google/android/shared/util/DebugPrinter;->nsToMsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p5}, Lcom/google/android/shared/util/DebugPrinter;->trimLooperMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "s":Ljava/lang/String;
    invoke-static {p2, p1, v0}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private static nsToMsString(J)Ljava/lang/String;
    .locals 6
    .param p0, "ns"    # J

    .prologue
    .line 219
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%8.03fms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-float v4, p0

    const v5, 0x49742400    # 1000000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private trimLooperMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "looperMessage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 198
    move-object v0, p1

    .line 201
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    .line 202
    const-string v2, "<<<<< Finished to "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    const-string v2, "Handler "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v2, p0, Lcom/google/android/shared/util/DebugPrinter;->mHashcode:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 214
    .end local v0    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 203
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    .line 204
    const-string v2, ">>>>> Dispatching to "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 206
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v1, "All UI-thread tasks:"

    invoke-static {p2, p1, v1}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "prefix2":Ljava/lang/String;
    const-string v1, "Name in parentheses is the Handler. After that is the Runnable, which may be null. Finally, is the message number or 0"

    invoke-static {p2, v0, v1}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, v0, p2}, Lcom/google/android/shared/util/DebugPrinter;->dumpExecutingTask(Ljava/lang/String;Ljava/util/List;)V

    .line 134
    const-string v1, "Queued tasks: not shown"

    invoke-static {p2, v0, v1}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v0, p2}, Lcom/google/android/shared/util/DebugPrinter;->dumpFinishedTasks(Ljava/lang/String;Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 92
    const-string v4, "DebugPrinter"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, p1, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 93
    if-eqz p1, :cond_2

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 98
    .local v2, "now":J
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_3

    .line 99
    iget-wide v4, p0, Lcom/google/android/shared/util/DebugPrinter;->mLastTimeNs:J

    sub-long v0, v2, v4

    .line 102
    .local v0, "durationNS":J
    const-wide/32 v4, 0x1e8480

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBuffer:[Lcom/google/android/shared/util/DebugPrinter$Item;

    iget v5, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBufferPos:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/google/android/shared/util/DebugPrinter;->mLastStartMessage:Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/shared/util/DebugPrinter$Item;->set(JLjava/lang/String;)V

    .line 104
    iget v4, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBufferPos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBufferPos:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 105
    iput v7, p0, Lcom/google/android/shared/util/DebugPrinter;->mCircBufferPos:I

    .line 110
    :cond_0
    const-wide/32 v4, 0x3f940a8

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 111
    const-string v4, "DebugPrinter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Long-running UI-thread task, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Lcom/google/android/shared/util/DebugPrinter;->nsToMsString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/google/android/shared/util/DebugPrinter;->trimLooperMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 115
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/shared/util/DebugPrinter;->mLastStartMessage:Ljava/lang/String;

    .line 121
    .end local v0    # "durationNS":J
    .end local v2    # "now":J
    :cond_2
    :goto_0
    return-void

    .line 117
    .restart local v2    # "now":J
    :cond_3
    iput-wide v2, p0, Lcom/google/android/shared/util/DebugPrinter;->mLastTimeNs:J

    .line 118
    iput-object p1, p0, Lcom/google/android/shared/util/DebugPrinter;->mLastStartMessage:Ljava/lang/String;

    goto :goto_0
.end method
