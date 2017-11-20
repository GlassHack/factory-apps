.class public Lcom/google/glass/async/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private count:I

.field private final name:Ljava/lang/String;

.field private final priority:I

.field private final uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/google/glass/async/PriorityThreadFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/PriorityThreadFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/glass/async/PriorityThreadFactory;->priority:I

    .line 27
    iput-object p2, p0, Lcom/google/glass/async/PriorityThreadFactory;->name:Ljava/lang/String;

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/async/PriorityThreadFactory;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/async/PriorityThreadFactory;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/async/PriorityThreadFactory;

    .prologue
    .line 11
    iget v0, p0, Lcom/google/glass/async/PriorityThreadFactory;->priority:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/glass/async/PriorityThreadFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/async/PriorityThreadFactory;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/async/PriorityThreadFactory;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/glass/async/PriorityThreadFactory;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/async/PriorityThreadFactory;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/async/PriorityThreadFactory;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/glass/async/PriorityThreadFactory;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/glass/async/PriorityThreadFactory$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/async/PriorityThreadFactory$1;-><init>(Lcom/google/glass/async/PriorityThreadFactory;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 42
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/google/glass/async/PriorityThreadFactory;->name:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/async/PriorityThreadFactory;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/glass/async/PriorityThreadFactory;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/google/glass/async/PriorityThreadFactory$2;

    invoke-direct {v1, p0}, Lcom/google/glass/async/PriorityThreadFactory$2;-><init>(Lcom/google/glass/async/PriorityThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 52
    return-object v0
.end method
