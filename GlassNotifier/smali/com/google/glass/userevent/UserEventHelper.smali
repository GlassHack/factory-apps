.class public Lcom/google/glass/userevent/UserEventHelper;
.super Ljava/lang/Object;
.source "UserEventHelper.java"


# static fields
.field public static final COMPANION_PACKAGE:Ljava/lang/String; = "com.google.glass.companion"

.field public static final COMPANION_USER_EVENT_SERVICE:Ljava/lang/String; = "com.google.glass.companion.CompanionUserEventService"

.field private static final EVENT_TUPLE_ASSIGNMENT:C = '='

.field private static final EVENT_TUPLE_SEPARATOR:C = '|'

.field private static final EVENT_TUPLE_SPLITTER:Lcom/google/common/base/Splitter;

.field static final EXECUTOR:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_CHECKIN:Ljava/lang/String; = "checkin"

.field public static final EXTRA_FORCE_FLUSH:Ljava/lang/String; = "force_flush"

.field public static final EXTRA_FORCE_SAVE_TO_DISK:Ljava/lang/String; = "force_save_to_disk"

.field public static final EXTRA_READ_FRAMEWORK_EVENTS:Ljava/lang/String; = "read_framework_events"

.field public static final EXTRA_USER_EVENT:Ljava/lang/String; = "user_event"

.field public static final NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String;

.field private static final RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

.field public static final USER_EVENT_SERVICE:Ljava/lang/String; = "com.google.glass.logging.GlassUserEventService"

.field public static final USER_EVENT_SERVICE_PACKAGE:Ljava/lang/String; = "com.google.glass.logging"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private companionLog:Z

.field private final context:Landroid/content/Context;

.field private final loggingEnabled:Z

.field private final loggingService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x7c

    const/16 v3, 0x3d

    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 78
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 85
    invoke-static {v4}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->EVENT_TUPLE_SPLITTER:Lcom/google/common/base/Splitter;

    .line 90
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 116
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 115
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;Z)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loggingEnabled"    # Z

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 137
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loggingEnabled"    # Z
    .param p3, "logToCompanion"    # Z

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v2, p0, Lcom/google/glass/userevent/UserEventHelper;->companionLog:Z

    .line 148
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    .line 149
    iput-boolean p2, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    .line 150
    if-eqz p3, :cond_0

    .line 151
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "logging to Companion service."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.companion"

    const-string v2, "com.google.glass.companion.CompanionUserEventService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->companionLog:Z

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "logging to Glass service."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.GlassUserEventService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->flushInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->saveToDiskInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->checkinInternal()V

    return-void
.end method

.method public static appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 479
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-static {p0}, Lcom/google/glass/userevent/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_2

    .line 485
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 489
    :goto_1
    invoke-static {p0}, Lcom/google/glass/userevent/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 460
    invoke-static {p0}, Lcom/google/glass/userevent/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 461
    invoke-static {p1}, Lcom/google/glass/userevent/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {p2}, Lcom/google/glass/userevent/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    return-void
.end method

.method private checkinInternal()V
    .locals 4

    .prologue
    .line 330
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 331
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Sending checkin."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 334
    const-string v1, "checkin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->startService(Landroid/content/Intent;)V

    .line 336
    return-void
.end method

.method public static varargs createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 423
    invoke-static {p0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 433
    const-string v3, "null key"

    invoke-static {p0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    array-length v3, p2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "invalid number of key/value arguments (%s"

    array-length v5, p2

    invoke-static {v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 442
    aget-object v3, p2, v1

    const-string v4, "null key (vararg %s)"

    invoke-static {v3, v4, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 443
    .local v2, "keyObj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    const-string v4, "key (vararg %s) is not a String."

    invoke-static {v3, v4, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    move-object p0, v2

    .line 444
    check-cast p0, Ljava/lang/String;

    .line 446
    add-int/lit8 v3, v1, 0x1

    aget-object p1, p2, v3

    .line 447
    invoke-static {v0, p0, p1}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 434
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "keyObj":Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 450
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 3
    .param p0, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p1, "eventTimeMs"    # J
    .param p3, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    invoke-static {p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/nano/GlassUserEventProto;

    move-result-object v0

    .line 368
    .local v0, "userEvent":Lcom/google/common/logging/nano/GlassUserEventProto;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/logging/nano/GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 370
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    invoke-virtual {v0, p3}, Lcom/google/common/logging/nano/GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 374
    :cond_0
    return-object v0
.end method

.method public static createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 2
    .param p0, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 355
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static createUserEventProto()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 2

    .prologue
    .line 384
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/nano/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static createUserEventProto(J)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 2
    .param p0, "eventTimeMs"    # J

    .prologue
    .line 391
    new-instance v0, Lcom/google/common/logging/nano/GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlassUserEventProto;-><init>()V

    .line 392
    .local v0, "userEvent":Lcom/google/common/logging/nano/GlassUserEventProto;
    invoke-virtual {v0, p0, p1}, Lcom/google/common/logging/nano/GlassUserEventProto;->setEventTimeMs(J)Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 393
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/logging/nano/GlassUserEventProto;->setTimezone(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 395
    return-object v0
.end method

.method private static ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x7c

    .line 541
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 542
    .local v0, "length":I
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 543
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    :cond_1
    return-void
.end method

.method private flushInternal()V
    .locals 4

    .prologue
    .line 281
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 282
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 285
    :cond_0
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Flushing user events."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 288
    const-string v1, "force_flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->startService(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static parseEventTuple(Ljava/lang/String;)Lcom/google/common/collect/ImmutableMultimap;
    .locals 8
    .param p0, "eventTuple"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    const-string v6, "null eventTuple"

    invoke-static {p0, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v4

    .line 503
    .local v4, "multimapBuilder":Lcom/google/common/collect/ImmutableListMultimap$Builder;, "Lcom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/google/glass/userevent/UserEventHelper;->EVENT_TUPLE_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v6, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 506
    .local v1, "item":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 507
    .local v0, "assignmentIndex":I
    if-gez v0, :cond_0

    .line 508
    sget-object v2, Lcom/google/glass/userevent/UserEventHelper;->NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String;

    .line 509
    .local v2, "key":Ljava/lang/String;
    move-object v5, v1

    .line 515
    .local v5, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v2, v5}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto :goto_0

    .line 511
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 512
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 513
    .local v3, "length":I
    add-int/lit8 v7, v0, 0x1

    if-le v3, v7, :cond_1

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const-string v5, ""

    goto :goto_2

    .line 518
    .end local v0    # "assignmentIndex":I
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "length":I
    :cond_2
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v6

    return-object v6
.end method

.method private static sanitize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/Object;

    .prologue
    .line 533
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveToDiskInternal()V
    .locals 4

    .prologue
    .line 307
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 308
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 311
    :cond_0
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Saving to disk."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 314
    const-string v1, "force_save_to_disk"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->startService(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public checkin()V
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$5;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper$5;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$3;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper$3;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public log(Lcom/google/common/logging/nano/GlassUserEventProto;)V
    .locals 6
    .param p1, "userEvent"    # Lcom/google/common/logging/nano/GlassUserEventProto;

    .prologue
    const/4 v3, 0x2

    .line 206
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1, v3}, Lcom/google/glass/logging/FormattingLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-static {p1}, Lcom/google/glass/protobuf/GlassNanoPrinter;->print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "prettyString":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Log user event. userEvent: [%s], loggingEnabled: [%s]."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    .line 209
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 208
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .end local v0    # "prettyString":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_1

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_1
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/glass/userevent/UserEventHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/userevent/UserEventHelper$2;-><init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/common/logging/nano/GlassUserEventProto;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public log(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p2, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Log user event. action: [%s], data: [%s], loggingEnabled: [%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    .line 185
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 184
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper$1;-><init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public logOnTrimMemory(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 555
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->TRIM_MEMORY:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "a"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "l"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, p1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public saveToDisk()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 297
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$4;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper$4;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendLoggingIntent(Lcom/google/common/logging/nano/GlassUserEventProto;)V
    .locals 3
    .param p1, "userEvent"    # Lcom/google/common/logging/nano/GlassUserEventProto;

    .prologue
    .line 254
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 259
    const-string v1, "user_event"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->startService(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendLoggingIntent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p2, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    invoke-static {p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->sendLoggingIntent(Lcom/google/common/logging/nano/GlassUserEventProto;)V

    .line 240
    return-void
.end method

.method startService(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 341
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 342
    return-void
.end method
