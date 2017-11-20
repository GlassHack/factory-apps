.class public final Lcom/google/glass/logging/FormattingLoggers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_MIN_LEVEL_FOR_DEVELOPMENT:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final IS_USER_BUILD:Z

.field private static final KEEP_TIMING_DATA:Z = true

.field private static final LONG_LOGGING_DURATION_MS:J = 0x32L

.field private static final PRINT_TIMING_DATA_EVERY_COUNT:I = 0x14

.field static final PROPERTY_KEY_MAX_LENGTH:I = 0x17
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FormattingLoggers"

.field private static final TIMING_DATA:Ljava/lang/ThreadLocal;

.field private static volatile logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;

.field private static volatile minLevelForDevelopment:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/logging/FormattingLoggers;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/logging/FormattingLoggers;->$assertionsDisabled:Z

    .line 48
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/glass/logging/FormattingLoggers;->IS_USER_BUILD:Z

    .line 58
    new-instance v0, Lcom/google/glass/logging/FormattingLoggers$1;

    invoke-direct {v0}, Lcom/google/glass/logging/FormattingLoggers$1;-><init>()V

    sput-object v0, Lcom/google/glass/logging/FormattingLoggers;->TIMING_DATA:Ljava/lang/ThreadLocal;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/logging/FormattingLoggers;->logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;

    .line 112
    const/4 v0, 0x3

    sput v0, Lcom/google/glass/logging/FormattingLoggers;->minLevelForDevelopment:I

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    return-void
.end method

.method static synthetic access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    invoke-static/range {p0 .. p5}, Lcom/google/glass/logging/FormattingLoggers;->logIfAllowed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/google/glass/logging/FormattingLoggers;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static varargs formatAndLogMessage(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 417
    if-eqz p4, :cond_0

    :try_start_0
    array-length v0, p4
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 424
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/glass/logging/FormattingLoggers;->logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;

    .line 425
    if-eqz v0, :cond_1

    .line 426
    invoke-interface {v0, p0, p1, p3, p2}, Lcom/google/glass/logging/FormattingLoggers$Listener;->onLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 466
    :goto_1
    return-void

    .line 417
    :cond_2
    :try_start_1
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p3

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    const-string v1, "FormattingLoggers"

    const-string v2, "Error formatting message. format: [%s], args: [%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    throw v0

    .line 431
    :pswitch_0
    if-eqz p2, :cond_3

    .line 432
    invoke-static {p1, p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 434
    :cond_3
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 438
    :pswitch_1
    if-eqz p2, :cond_4

    .line 439
    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 441
    :cond_4
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 445
    :pswitch_2
    if-eqz p2, :cond_5

    .line 446
    invoke-static {p1, p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 448
    :cond_5
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 452
    :pswitch_3
    if-eqz p2, :cond_6

    .line 453
    invoke-static {p1, p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 455
    :cond_6
    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 459
    :pswitch_4
    if-eqz p2, :cond_7

    .line 460
    invoke-static {p1, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 462
    :cond_7
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private static getCallerClassSimpleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x2

    .line 314
    invoke-static {v0, v1}, Lcom/google/glass/logging/StackTraceUtils;->getCallerClassName(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/google/glass/logging/StackTraceUtils;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContextLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getCallerClassSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getCallerClassSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    const-string v0, "null parent"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "null instance"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "%s[%x]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "%s/%s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    instance-of v0, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    iget-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    .line 206
    :goto_0
    new-instance v2, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v2

    .line 205
    :cond_0
    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 4

    .prologue
    .line 302
    const-string v0, "null parent"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "null childTag"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 305
    instance-of v0, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    iget-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    .line 307
    :goto_0
    new-instance v2, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v2

    .line 306
    :cond_0
    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;
    .locals 5

    .prologue
    .line 177
    const-string v0, "null instance"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "%s[%x]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v2
.end method

.method public static getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 4

    .prologue
    .line 141
    const-string v0, "null instance"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "null loggingGroup"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "%s.%s[%x]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    .line 146
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 145
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v1
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 3

    .prologue
    .line 222
    const-string v0, "null tag"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 3

    .prologue
    .line 161
    const-string v0, "null tag"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "null loggingGroup"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v1
.end method

.method private static isLoggable(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 342
    sget-boolean v0, Lcom/google/glass/logging/FormattingLoggers;->IS_USER_BUILD:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 352
    :goto_0
    return v0

    .line 346
    :cond_0
    sget-boolean v0, Lcom/google/glass/logging/FormattingLoggers;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/google/glass/logging/FormattingLoggers;->IS_USER_BUILD:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 348
    :cond_1
    sget v0, Lcom/google/glass/logging/FormattingLoggers;->minLevelForDevelopment:I

    if-lt p1, v0, :cond_2

    .line 349
    const/4 v0, 0x1

    goto :goto_0

    .line 352
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static varargs logIfAllowed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 372
    invoke-static {p1, p0}, Lcom/google/glass/logging/FormattingLoggers;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    sget-object v0, Lcom/google/glass/logging/FormattingLoggers;->TIMING_DATA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/FormattingLoggers$TimingData;

    .line 380
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v1

    .line 381
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 385
    :try_start_0
    invoke-static {p0, p2, p3, p4, p5}, Lcom/google/glass/logging/FormattingLoggers;->formatAndLogMessage(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-eqz v0, :cond_0

    .line 388
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 389
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$304(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J

    .line 392
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v3

    sub-long v2, v3, v1

    .line 393
    const-wide/16 v4, 0x32

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    const/4 v1, 0x1

    .line 394
    :goto_1
    if-eqz v1, :cond_2

    .line 395
    const-string v4, "FormattingLoggers"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x45

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Last logging operation took a long time (in ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$300(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J

    move-result-wide v1

    const-wide/16 v3, 0x14

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 398
    :cond_3
    const-string v1, "FormattingLoggers"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 387
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_7

    .line 388
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 389
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$304(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J

    .line 392
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 393
    const-wide/16 v1, 0x32

    cmp-long v1, v4, v1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    .line 394
    :goto_2
    if-eqz v1, :cond_5

    .line 395
    const-string v2, "FormattingLoggers"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x45

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Last logging operation took a long time (in ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_5
    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$300(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J

    move-result-wide v1

    const-wide/16 v4, 0x14

    rem-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_7

    .line 398
    :cond_6
    const-string v1, "FormattingLoggers"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_7
    throw v3

    .line 393
    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static setListener(Lcom/google/glass/logging/FormattingLoggers$Listener;)V
    .locals 0

    .prologue
    .line 116
    sput-object p0, Lcom/google/glass/logging/FormattingLoggers;->logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;

    .line 117
    return-void
.end method

.method public static setMinLevelForDevelopment(I)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    sput p0, Lcom/google/glass/logging/FormattingLoggers;->minLevelForDevelopment:I

    .line 128
    return-void
.end method
