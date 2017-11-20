.class public Lcom/google/common/util/concurrent/AtomicDouble;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J

.field private static final updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile transient value:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lcom/google/common/util/concurrent/AtomicDouble;

    const-string v1, "value"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 70
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 253
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/AtomicDouble;->set(D)V

    .line 254
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 243
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 244
    return-void
.end method


# virtual methods
.method public final addAndGet(D)D
    .locals 8

    .prologue
    .line 181
    :cond_0
    iget-wide v2, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 183
    add-double v6, v0, p1

    .line 184
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 185
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-wide v6
.end method

.method public final compareAndSet(DD)Z
    .locals 6

    .prologue
    .line 132
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final get()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(D)D
    .locals 8

    .prologue
    .line 163
    :cond_0
    iget-wide v2, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 165
    add-double v0, v6, p1

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 167
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    return-wide v6
.end method

.method public final getAndSet(D)D
    .locals 3

    .prologue
    .line 117
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 118
    sget-object v2, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final lazySet(D)V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AtomicDouble;->set(D)V

    .line 108
    return-void
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final set(D)V
    .locals 2

    .prologue
    .line 94
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 95
    iput-wide v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(DD)Z
    .locals 6

    .prologue
    .line 151
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->weakCompareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method
