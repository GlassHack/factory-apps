.class Lcom/google/glass/logging/FormattingLoggers$TimingData;
.super Ljava/lang/Object;
.source "FormattingLoggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/FormattingLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimingData"
.end annotation


# instance fields
.field private count:J

.field private final sinceCreation:Lcom/google/glass/time/Stopwatch;

.field private final spentLogging:Lcom/google/glass/time/Stopwatch;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->sinceCreation:Lcom/google/glass/time/Stopwatch;

    .line 71
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->spentLogging:Lcom/google/glass/time/Stopwatch;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->count:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/logging/FormattingLoggers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/logging/FormattingLoggers$1;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/glass/logging/FormattingLoggers$TimingData;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/logging/FormattingLoggers$TimingData;)Lcom/google/glass/time/Stopwatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/logging/FormattingLoggers$TimingData;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->spentLogging:Lcom/google/glass/time/Stopwatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/logging/FormattingLoggers$TimingData;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->count:J

    return-wide v0
.end method

.method static synthetic access$304(Lcom/google/glass/logging/FormattingLoggers$TimingData;)J
    .locals 4
    .param p0, "x0"    # Lcom/google/glass/logging/FormattingLoggers$TimingData;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->count:J

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 78
    const-string v0, "TimingData [count=%s, sinceCreation=%s, spentLogging=%s]."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->count:J

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->sinceCreation:Lcom/google/glass/time/Stopwatch;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/logging/FormattingLoggers$TimingData;->spentLogging:Lcom/google/glass/time/Stopwatch;

    aput-object v3, v1, v2

    .line 78
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
