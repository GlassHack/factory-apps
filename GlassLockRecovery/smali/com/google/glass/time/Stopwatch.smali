.class public Lcom/google/glass/time/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/time/Stopwatch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private isRunning:Z

.field private final name:Ljava/lang/String;

.field private startTime:J

.field private totalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/time/Stopwatch$1;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch$1;-><init>()V

    sput-object v0, Lcom/google/glass/time/Stopwatch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/time/Stopwatch;->name:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/time/Stopwatch;->clock:Lcom/google/glass/time/Clock;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/glass/time/Stopwatch;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/time/Stopwatch;->startTime:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/time/Stopwatch;->totalTime:J

    .line 50
    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBooleanFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/time/Stopwatch;->isRunning:Z

    .line 51
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/time/Stopwatch;->clock:Lcom/google/glass/time/Clock;

    .line 52
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/time/Stopwatch$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/glass/time/Stopwatch$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/glass/time/Stopwatch;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/glass/time/Stopwatch;->name:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/time/Stopwatch;->clock:Lcom/google/glass/time/Clock;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalElapsedMilliseconds()J
    .locals 6

    .prologue
    .line 106
    iget-boolean v2, p0, Lcom/google/glass/time/Stopwatch;->isRunning:Z

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/google/glass/time/Stopwatch;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 108
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/glass/time/Stopwatch;->totalTime:J

    iget-wide v4, p0, Lcom/google/glass/time/Stopwatch;->startTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/glass/time/Stopwatch;->totalTime:J

    .line 109
    iput-wide v0, p0, Lcom/google/glass/time/Stopwatch;->startTime:J

    .line 111
    .end local v0    # "now":J
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/time/Stopwatch;->totalTime:J

    return-wide v2
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/glass/time/Stopwatch;->isRunning:Z

    return v0
.end method

.method public reset()Lcom/google/glass/time/Stopwatch;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/time/Stopwatch;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/time/Stopwatch;->startTime:J

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/time/Stopwatch;->totalTime:J

    .line 91
    return-object p0
.end method

.method public start()Lcom/google/glass/time/Stopwatch;
    .locals 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/glass/time/Stopwatch;->isRunning:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/glass/time/Stopwatch;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/time/Stopwatch;->startTime:J

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/time/Stopwatch;->isRunning:Z

    .line 65
    :cond_0
    return-object p0
.end method

.method public stop()Lcom/google/glass/time/Stopwatch;
    .locals 6

    .prologue
    .line 74
    iget-boolean v2, p0, Lcom/google/glass/time/Stopwatch;->isRunning:Z

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/google/glass/time/Stopwatch;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 76
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/glass/time/Stopwatch;->totalTime:J

    iget-wide v4, p0, Lcom/google/glass/time/Stopwatch;->startTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/glass/time/Stopwatch;->totalTime:J

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/glass/time/Stopwatch;->isRunning:Z

    .line 79
    .end local v0    # "now":J
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v0

    .line 136
    .local v0, "totalElapsedTime":J
    iget-object v2, p0, Lcom/google/glass/time/Stopwatch;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/google/glass/time/Stopwatch;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/google/glass/time/Stopwatch;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 124
    .local v0, "hasName":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/google/glass/time/Stopwatch;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-wide v1, p0, Lcom/google/glass/time/Stopwatch;->startTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-wide v1, p0, Lcom/google/glass/time/Stopwatch;->totalTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-boolean v1, p0, Lcom/google/glass/time/Stopwatch;->isRunning:Z

    invoke-static {p1, v1}, Lcom/google/glass/util/ParcelUtils;->writeBooleanToParcel(Landroid/os/Parcel;Z)V

    .line 131
    return-void

    .line 123
    .end local v0    # "hasName":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
