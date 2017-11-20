.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/av;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LongAdder;->busy:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/bb;

    .line 216
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 217
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 208
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 209
    return-void
.end method


# virtual methods
.method public final add(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v2, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/bb;

    if-nez v2, :cond_0

    iget-wide v3, p0, Lcom/google/common/cache/LongAdder;->base:J

    add-long v5, v3, p1

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    :cond_0
    sget-object v0, Lcom/google/common/cache/LongAdder;->threadHashCode:Lcom/google/common/cache/be;

    invoke-virtual {v0}, Lcom/google/common/cache/be;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/bd;

    iget v3, v0, Lcom/google/common/cache/bd;->b:I

    .line 79
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lt v4, v1, :cond_1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    iget-wide v3, v2, Lcom/google/common/cache/bb;->a:J

    add-long v5, v3, p1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/common/cache/bb;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/cache/LongAdder;->retryUpdate(JLcom/google/common/cache/bd;Z)V

    .line 83
    :cond_2
    return-void
.end method

.method public final decrement()V
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 97
    return-void
.end method

.method public final doubleValue()D
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public final floatValue()F
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .locals 2

    .prologue
    .line 57
    add-long v0, p1, p3

    return-wide v0
.end method

.method public final increment()V
    .locals 2

    .prologue
    .line 89
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 90
    return-void
.end method

.method public final intValue()I
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final longValue()J
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->internalReset(J)V

    .line 131
    return-void
.end method

.method public final sum()J
    .locals 7

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 110
    iget-object v3, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/bb;

    .line 111
    if-eqz v3, :cond_1

    .line 112
    array-length v4, v3

    .line 113
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 114
    aget-object v5, v3, v2

    .line 115
    if-eqz v5, :cond_0

    .line 116
    iget-wide v5, v5, Lcom/google/common/cache/bb;->a:J

    add-long/2addr v0, v5

    .line 113
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return-wide v0
.end method

.method public final sumThenReset()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 144
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 145
    iget-object v3, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/bb;

    .line 146
    iput-wide v8, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 147
    if-eqz v3, :cond_1

    .line 148
    array-length v4, v3

    .line 149
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 150
    aget-object v5, v3, v2

    .line 151
    if-eqz v5, :cond_0

    .line 152
    iget-wide v6, v5, Lcom/google/common/cache/bb;->a:J

    add-long/2addr v0, v6

    .line 153
    iput-wide v8, v5, Lcom/google/common/cache/bb;->a:J

    .line 149
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
