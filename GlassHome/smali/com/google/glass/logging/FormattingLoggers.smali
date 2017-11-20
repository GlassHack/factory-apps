.class public final Lcom/google/glass/logging/FormattingLoggers;
.super Ljava/lang/Object;
.source "FormattingLoggers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;,
        Lcom/google/glass/logging/FormattingLoggers$Listener;,
        Lcom/google/glass/logging/FormattingLoggers$TimingData;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/glass/logging/FormattingLoggers$TimingData;",
            ">;"
        }
    .end annotation
.end field

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
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Throwable;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # [Ljava/lang/Object;

    .prologue
    .line 29
    invoke-static/range {p0 .. p5}, Lcom/google/glass/logging/FormattingLoggers;->logIfAllowed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/google/glass/logging/FormattingLoggers;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

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

    .end local p0    # "key":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static varargs formatAndLogMessage(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 417
    if-eqz p4, :cond_0

    :try_start_0
    array-length v3, p4
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    :cond_0
    move-object v2, p3

    .line 424
    .local v2, "message":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/google/glass/logging/FormattingLoggers;->logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;

    .line 425
    .local v1, "listener":Lcom/google/glass/logging/FormattingLoggers$Listener;
    if-eqz v1, :cond_1

    .line 426
    invoke-interface {v1, p0, p1, v2, p2}, Lcom/google/glass/logging/FormattingLoggers$Listener;->onLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 466
    :goto_1
    return-void

    .line 417
    .end local v1    # "listener":Lcom/google/glass/logging/FormattingLoggers$Listener;
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/util/IllegalFormatException;
    const-string v3, "FormattingLoggers"

    const-string v4, "Error formatting message. format: [%s], args: [%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    aput-object p4, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    throw v0

    .line 431
    .end local v0    # "e":Ljava/util/IllegalFormatException;
    .restart local v1    # "listener":Lcom/google/glass/logging/FormattingLoggers$Listener;
    .restart local v2    # "message":Ljava/lang/String;
    :pswitch_0
    if-eqz p2, :cond_3

    .line 432
    invoke-static {p1, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 434
    :cond_3
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 438
    :pswitch_1
    if-eqz p2, :cond_4

    .line 439
    invoke-static {p1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 441
    :cond_4
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 445
    :pswitch_2
    if-eqz p2, :cond_5

    .line 446
    invoke-static {p1, v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 448
    :cond_5
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 452
    :pswitch_3
    if-eqz p2, :cond_6

    .line 453
    invoke-static {p1, v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 455
    :cond_6
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 459
    :pswitch_4
    if-eqz p2, :cond_7

    .line 460
    invoke-static {p1, v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 462
    :cond_7
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 429
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
    .locals 3

    .prologue
    .line 313
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const/4 v2, 0x2

    .line 314
    invoke-static {v1, v2}, Lcom/google/glass/logging/StackTraceUtils;->getCallerClassName(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "fullCallerClassName":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/logging/StackTraceUtils;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .param p0, "loggingGroup"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getCallerClassSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;
    .locals 10
    .param p0, "parent"    # Lcom/google/glass/logging/FormattingLogger;
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 197
    const-string v4, "null parent"

    invoke-static {p0, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v4, "null instance"

    invoke-static {p1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "className":Ljava/lang/String;
    const-string v4, "%s[%x]"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "childTag":Ljava/lang/String;
    const-string v4, "%s/%s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "tag":Ljava/lang/String;
    instance-of v4, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    if-eqz v4, :cond_0

    check-cast p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    .end local p0    # "parent":Lcom/google/glass/logging/FormattingLogger;
    iget-object v3, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    .line 206
    .local v3, "tagProperty":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v4

    .line 205
    .end local v3    # "tagProperty":Ljava/lang/String;
    .restart local p0    # "parent":Lcom/google/glass/logging/FormattingLogger;
    :cond_0
    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 6
    .param p0, "parent"    # Lcom/google/glass/logging/FormattingLogger;
    .param p1, "childTag"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v2, "null parent"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v2, "null childTag"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "tag":Ljava/lang/String;
    instance-of v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    .end local p0    # "parent":Lcom/google/glass/logging/FormattingLogger;
    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    .line 307
    .local v1, "tagProperty":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v2

    .line 306
    .end local v1    # "tagProperty":Ljava/lang/String;
    .restart local p0    # "parent":Lcom/google/glass/logging/FormattingLogger;
    :cond_0
    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;
    .locals 6
    .param p0, "instance"    # Ljava/lang/Object;

    .prologue
    .line 177
    const-string v2, "null instance"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "className":Ljava/lang/String;
    const-string v2, "%s[%x]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "tag":Ljava/lang/String;
    new-instance v2, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v2
.end method

.method public static getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 6
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "loggingGroup"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v2, "null instance"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "null loggingGroup"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "className":Ljava/lang/String;
    const-string v2, "%s.%s[%x]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    .line 146
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 145
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "tag":Ljava/lang/String;
    new-instance v2, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v2
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "null tag"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "loggingGroup"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v1, "null tag"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "null loggingGroup"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "%s.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "tagWithGroup":Ljava/lang/String;
    new-instance v1, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v1
.end method

.method private static isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "tagProperty"    # Ljava/lang/String;
    .param p1, "level"    # I

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
    .locals 15
    .param p0, "level"    # I
    .param p1, "tagProperty"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 372
    move-object/from16 v0, p1

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const/4 v8, 0x0

    .line 379
    .local v8, "timingData":Lcom/google/glass/logging/FormattingLoggers$TimingData;
    sget-object v10, Lcom/google/glass/logging/FormattingLoggers;->TIMING_DATA:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "timingData":Lcom/google/glass/logging/FormattingLoggers$TimingData;
    check-cast v8, Lcom/google/glass/logging/FormattingLoggers$TimingData;

    .line 380
    .restart local v8    # "timingData":Lcom/google/glass/logging/FormattingLoggers$TimingData;
    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v4

    .line 381
    .local v4, "elapsedTimeAtStart":J
    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 385
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/glass/logging/FormattingLoggers;->formatAndLogMessage(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-eqz v8, :cond_0

    .line 388
    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 389
    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$304(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J

    .line 392
    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v10

    sub-long v6, v10, v4

    .line 393
    .local v6, "lastLogDurationMs":J
    const-wide/16 v10, 0x32

    cmp-long v10, v6, v10

    if-lez v10, :cond_4

    const/4 v9, 0x1

    .line 394
    .local v9, "wasTooLong":Z
    :goto_1
    if-eqz v9, :cond_2

    .line 395
    const-string v10, "FormattingLoggers"

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x45

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Last logging operation took a long time (in ms): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    if-nez v9, :cond_3

    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$300(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J

    move-result-wide v10

    const-wide/16 v12, 0x14

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 398
    :cond_3
    const-string v10, "FormattingLoggers"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    .end local v9    # "wasTooLong":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 387
    .end local v6    # "lastLogDurationMs":J
    :catchall_0
    move-exception v10

    if-eqz v8, :cond_7

    .line 388
    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 389
    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$304(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J

    .line 392
    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v11

    sub-long v6, v11, v4

    .line 393
    .restart local v6    # "lastLogDurationMs":J
    const-wide/16 v11, 0x32

    cmp-long v11, v6, v11

    if-lez v11, :cond_8

    const/4 v9, 0x1

    .line 394
    .restart local v9    # "wasTooLong":Z
    :goto_2
    if-eqz v9, :cond_5

    .line 395
    const-string v11, "FormattingLoggers"

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x45

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Last logging operation took a long time (in ms): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_5
    if-nez v9, :cond_6

    invoke-static {v8}, Lcom/google/glass/logging/FormattingLoggers$TimingData;->access$300(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J

    move-result-wide v11

    const-wide/16 v13, 0x14

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_7

    .line 398
    :cond_6
    const-string v11, "FormattingLoggers"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v6    # "lastLogDurationMs":J
    .end local v9    # "wasTooLong":Z
    :cond_7
    throw v10

    .line 393
    .restart local v6    # "lastLogDurationMs":J
    :cond_8
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static setListener(Lcom/google/glass/logging/FormattingLoggers$Listener;)V
    .locals 0
    .param p0, "listener"    # Lcom/google/glass/logging/FormattingLoggers$Listener;

    .prologue
    .line 116
    sput-object p0, Lcom/google/glass/logging/FormattingLoggers;->logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;

    .line 117
    return-void
.end method

.method public static setMinLevelForDevelopment(I)V
    .locals 0
    .param p0, "level"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    sput p0, Lcom/google/glass/logging/FormattingLoggers;->minLevelForDevelopment:I

    .line 128
    return-void
.end method
