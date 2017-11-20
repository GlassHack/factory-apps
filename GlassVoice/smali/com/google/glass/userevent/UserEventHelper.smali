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
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 87
    invoke-static {v4}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->EVENT_TUPLE_SPLITTER:Lcom/google/common/base/Splitter;

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
    .param p1, "context"    # Landroid/content/Context;

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loggingEnabled"    # Z

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 139
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loggingEnabled"    # Z
    .param p3, "logToCompanion"    # Z

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
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->flushInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->saveToDiskInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->checkinInternal()V

    return-void
.end method

.method public static appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "data"    # Ljava/lang/String;

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
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

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
    .locals 4

    .prologue
    .line 332
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 333
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Sending checkin."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
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
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

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
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 435
    const-string v3, "null key"

    invoke-static {p0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    array-length v3, p2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "invalid number of key/value arguments (%s"

    new-array v7, v4, [Ljava/lang/Object;

    array-length v8, p2

    .line 437
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 436
    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 444
    aget-object v3, p2, v1

    const-string v6, "null key (vararg %s)"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 445
    .local v2, "keyObj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    const-string v6, "key (vararg %s) is not a String."

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v2

    .line 446
    check-cast p0, Ljava/lang/String;

    .line 448
    add-int/lit8 v3, v1, 0x1

    aget-object p1, p2, v3

    .line 449
    invoke-static {v0, p0, p1}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "keyObj":Ljava/lang/Object;
    :cond_0
    move v3, v5

    .line 436
    goto :goto_0

    .line 452
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 2
    .param p0, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p1, "eventTimeMs"    # J
    .param p3, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    invoke-static {p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 370
    .local v0, "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 372
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    invoke-virtual {v0, p3}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 376
    :cond_0
    return-object v0
.end method

.method public static createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 2
    .param p0, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p1, "data"    # Ljava/lang/String;
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

    invoke-static {p0, v0, v1, p1}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static createUserEventProto(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 2
    .param p0, "eventTimeMs"    # J

    .prologue
    .line 393
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    .line 394
    .local v0, "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-virtual {v0, p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventTimeMs(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 395
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setTimezone(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 397
    return-object v0
.end method

.method private static ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x7c

    .line 543
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 544
    .local v0, "length":I
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 545
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    :cond_1
    return-void
.end method

.method private flushInternal()V
    .locals 4

    .prologue
    .line 283
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 284
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Flushing user events."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
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
    .line 502
    const-string v6, "null eventTuple"

    invoke-static {p0, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v4

    .line 505
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

    .line 508
    .local v1, "item":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 509
    .local v0, "assignmentIndex":I
    if-gez v0, :cond_0

    .line 510
    sget-object v2, Lcom/google/glass/userevent/UserEventHelper;->NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String;

    .line 511
    .local v2, "key":Ljava/lang/String;
    move-object v5, v1

    .line 517
    .local v5, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v2, v5}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto :goto_0

    .line 513
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 514
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 515
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

    .line 520
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
    .line 535
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
    .line 309
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 310
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Saving to disk."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
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

.method public log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 6
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    const/4 v3, 0x2

    .line 208
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1, v3}, Lcom/google/glass/logging/FormattingLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-static {p1}, Lcom/google/glass/protobuf/GlassNanoPrinter;->print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "prettyString":Ljava/lang/String;
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Log user event. userEvent: [%s], loggingEnabled: [%s]."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    .line 211
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 210
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .end local v0    # "prettyString":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_1

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_1
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/glass/userevent/UserEventHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/userevent/UserEventHelper$2;-><init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public log(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;
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
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p2, "data"    # Ljava/lang/String;
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

.method public sendLoggingIntent(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 3
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 256
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v1, "user_event"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 262
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
    .line 241
    invoke-static {p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelper;->sendLoggingIntent(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 242
    return-void
.end method

.method startService(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 344
    return-void
.end method
