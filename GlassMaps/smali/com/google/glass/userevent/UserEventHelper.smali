.class public Lcom/google/glass/userevent/UserEventHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPANION_PACKAGE:Ljava/lang/String; = "com.google.glass.companion"

.field public static final COMPANION_USER_EVENT_SERVICE:Ljava/lang/String; = "com.google.glass.companion.CompanionUserEventService"

.field private static final EVENT_TUPLE_ASSIGNMENT:C = '='

.field private static final EVENT_TUPLE_SEPARATOR:C = '|'

.field private static final EVENT_TUPLE_SPLITTER:Lcom/google/common/base/al;

.field static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final EXTRA_CHECKIN:Ljava/lang/String; = "checkin"

.field public static final EXTRA_FORCE_FLUSH:Ljava/lang/String; = "force_flush"

.field public static final EXTRA_FORCE_SAVE_TO_DISK:Ljava/lang/String; = "force_save_to_disk"

.field public static final EXTRA_READ_FRAMEWORK_EVENTS:Ljava/lang/String; = "read_framework_events"

.field public static final EXTRA_USER_EVENT:Ljava/lang/String; = "user_event"

.field public static final NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String;

.field private static final RESERVED_CHAR_MATCHER:Lcom/google/common/base/c;

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

    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 80
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

    .line 79
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/c;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->RESERVED_CHAR_MATCHER:Lcom/google/common/base/c;

    .line 87
    invoke-static {v4}, Lcom/google/common/base/al;->a(C)Lcom/google/common/base/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/al;->a()Lcom/google/common/base/al;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->EVENT_TUPLE_SPLITTER:Lcom/google/common/base/al;

    .line 92
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 118
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 117
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;Z)V

    .line 128
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 139
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v2, p0, Lcom/google/glass/userevent/UserEventHelper;->companionLog:Z

    .line 150
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    .line 151
    iput-boolean p2, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    .line 152
    if-eqz p3, :cond_0

    .line 153
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "logging to Companion service."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.companion"

    const-string v2, "com.google.glass.companion.CompanionUserEventService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->companionLog:Z

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "logging to Glass service."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.GlassUserEventService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->flushInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->saveToDiskInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->checkinInternal()V

    return-void
.end method

.method public static appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 481
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-static {p0}, Lcom/google/glass/userevent/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 486
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_2

    .line 487
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 491
    :goto_1
    invoke-static {p0}, Lcom/google/glass/userevent/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 462
    invoke-static {p0}, Lcom/google/glass/userevent/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 463
    invoke-static {p1}, Lcom/google/glass/userevent/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    invoke-static {p2}, Lcom/google/glass/userevent/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    return-void
.end method

.method private checkinInternal()V
    .locals 3

    .prologue
    .line 332
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 333
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Sending checkin."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 336
    const-string v1, "checkin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->startService(Landroid/content/Intent;)V

    .line 338
    return-void
.end method

.method public static varargs createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    invoke-static {p0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 435
    const-string v0, "null key"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    array-length v0, p2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "invalid number of key/value arguments (%s"

    new-array v4, v1, [Ljava/lang/Object;

    array-length v5, p2

    .line 437
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 436
    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    invoke-static {v4, p0, p1}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    move v3, v2

    .line 442
    :goto_1
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_1

    .line 444
    aget-object v0, p2, v3

    const-string v5, "null key (vararg %s)"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 445
    instance-of v5, v0, Ljava/lang/String;

    const-string v6, "key (vararg %s) is not a String."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 446
    check-cast v0, Ljava/lang/String;

    .line 448
    add-int/lit8 v5, v3, 0x1

    aget-object v5, p2, v5

    .line 449
    invoke-static {v4, v0, v5}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 436
    goto :goto_0

    .line 452
    :cond_1
    return-object v4
.end method

.method public static createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/a/d;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    invoke-static {p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/a/d;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/a/d;->b(Ljava/lang/String;)Lcom/google/common/a/d;

    .line 372
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    invoke-virtual {v0, p3}, Lcom/google/common/a/d;->c(Ljava/lang/String;)Lcom/google/common/a/d;

    .line 376
    :cond_0
    return-object v0
.end method

.method public static createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/a/d;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/a/d;

    move-result-object v0

    return-object v0
.end method

.method public static createUserEventProto()Lcom/google/common/a/d;
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/a/d;

    move-result-object v0

    return-object v0
.end method

.method public static createUserEventProto(J)Lcom/google/common/a/d;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Lcom/google/common/a/d;

    invoke-direct {v0}, Lcom/google/common/a/d;-><init>()V

    .line 394
    invoke-virtual {v0, p0, p1}, Lcom/google/common/a/d;->a(J)Lcom/google/common/a/d;

    .line 395
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/a/d;->a(Ljava/lang/String;)Lcom/google/common/a/d;

    .line 397
    return-object v0
.end method

.method private static ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    const/16 v1, 0x7c

    .line 543
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 544
    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 545
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    :cond_1
    return-void
.end method

.method private flushInternal()V
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 284
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Flushing user events."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 290
    const-string v1, "force_flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->startService(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static parseEventTuple(Ljava/lang/String;)Lcom/google/common/collect/ImmutableMultimap;
    .locals 7

    .prologue
    .line 502
    const-string v0, "null eventTuple"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/do;

    move-result-object v2

    .line 505
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EVENT_TUPLE_SPLITTER:Lcom/google/common/base/al;

    invoke-virtual {v0, p0}, Lcom/google/common/base/al;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 508
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 509
    if-gez v4, :cond_0

    .line 510
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String;

    .line 517
    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    goto :goto_0

    .line 513
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 515
    add-int/lit8 v6, v4, 0x1

    if-le v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 520
    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/do;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method private static sanitize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->RESERVED_CHAR_MATCHER:Lcom/google/common/base/c;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/c;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveToDiskInternal()V
    .locals 3

    .prologue
    .line 309
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 310
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Saving to disk."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 316
    const-string v1, "force_save_to_disk"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->startService(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public checkin()V
    .locals 2

    .prologue
    .line 322
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$5;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper$5;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$3;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper$3;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public log(Lcom/google/common/a/d;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 208
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0, v3}, Lcom/google/glass/logging/FormattingLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p1}, Lcom/google/glass/protobuf/GlassNanoPrinter;->print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Log user event. userEvent: [%s], loggingEnabled: [%s]."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-boolean v4, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    .line 211
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    .line 210
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_1

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_1
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/userevent/UserEventHelper$2;-><init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/common/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public log(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
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

    .line 187
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 186
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper$1;-><init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public saveToDisk()V
    .locals 2

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$4;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper$4;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendLoggingIntent(Lcom/google/common/a/d;)V
    .locals 3

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    const-string v1, "user_event"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->startService(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendLoggingIntent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    invoke-static {p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->sendLoggingIntent(Lcom/google/common/a/d;)V

    .line 242
    return-void
.end method

.method startService(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 344
    return-void
.end method
