.class public final Lcom/google/android/location/os/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/os/ag;

.field private final b:Ljava/util/LinkedList;

.field private final c:Lcom/google/android/location/p/a/b;

.field private final d:Ljava/io/PrintWriter;

.field private final e:Ljava/util/Date;

.field private final f:Ljava/lang/StringBuffer;

.field private final g:Ljava/text/FieldPosition;

.field private final h:Ljava/text/SimpleDateFormat;

.field private final i:Ljava/util/EnumSet;

.field private final j:[Lcom/google/android/location/os/af;

.field private final k:[I

.field private final l:[J

.field private m:J

.field private n:I


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/ag;Lcom/google/android/location/p/a/b;Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/e;->e:Ljava/util/Date;

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/os/e;->f:Ljava/lang/StringBuffer;

    .line 95
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/os/e;->g:Ljava/text/FieldPosition;

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/os/e;->h:Ljava/text/SimpleDateFormat;

    .line 98
    sget-object v0, Lcom/google/android/location/os/c;->h:Lcom/google/android/location/os/c;

    sget-object v1, Lcom/google/android/location/os/c;->P:Lcom/google/android/location/os/c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/e;->i:Ljava/util/EnumSet;

    .line 104
    invoke-static {}, Lcom/google/android/location/os/c;->values()[Lcom/google/android/location/os/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/location/os/af;

    iput-object v0, p0, Lcom/google/android/location/os/e;->j:[Lcom/google/android/location/os/af;

    .line 106
    invoke-static {}, Lcom/google/android/location/os/c;->values()[Lcom/google/android/location/os/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/location/os/e;->k:[I

    .line 108
    invoke-static {}, Lcom/google/android/location/os/c;->values()[Lcom/google/android/location/os/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/location/os/e;->l:[J

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/os/e;->m:J

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/os/e;->n:I

    .line 123
    iput-object p1, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    .line 124
    iput-object p2, p0, Lcom/google/android/location/os/e;->c:Lcom/google/android/location/p/a/b;

    .line 125
    iput-object p3, p0, Lcom/google/android/location/os/e;->d:Ljava/io/PrintWriter;

    .line 126
    iget-object v0, p0, Lcom/google/android/location/os/e;->l:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 127
    return-void
.end method

.method private declared-synchronized a(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/af;

    .line 505
    iget-object v2, v0, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    iget-object v2, v2, Lcom/google/android/location/os/c;->ad:Lcom/google/android/location/os/d;

    sget-object v3, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    if-ne v2, v3, :cond_0

    .line 506
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 508
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/location/os/af;->b(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 510
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .prologue
    .line 254
    new-instance v1, Lcom/google/android/location/os/y;

    sget-object v3, Lcom/google/android/location/os/c;->e:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/y;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JI)V

    invoke-virtual {p0, v1, p1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;I)V

    .line 260
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;Z)V
    .locals 8

    .prologue
    .line 443
    new-instance v1, Lcom/google/android/location/os/t;

    sget-object v3, Lcom/google/android/location/os/c;->V:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/os/t;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLcom/google/android/gms/location/ActivityRecognitionResult;Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 451
    return-void
.end method

.method public final a(Lcom/google/android/location/f/g;)V
    .locals 7

    .prologue
    .line 277
    new-instance v1, Lcom/google/android/location/os/aa;

    sget-object v3, Lcom/google/android/location/os/c;->g:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/aa;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLcom/google/android/location/f/g;)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 283
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/location/os/af;)V
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/location/os/af;I)V
    .locals 4

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/af;

    .line 174
    iget-object v1, p0, Lcom/google/android/location/os/e;->l:[J

    iget-object v0, v0, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    invoke-virtual {v0}, Lcom/google/android/location/os/c;->ordinal()I

    move-result v0

    iget-wide v2, p1, Lcom/google/android/location/os/af;->g:J

    aput-wide v2, v1, v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/e;->j:[Lcom/google/android/location/os/af;

    iget-object v1, p1, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    invoke-virtual {v1}, Lcom/google/android/location/os/c;->ordinal()I

    move-result v1

    aput-object p1, v0, v1

    .line 177
    iget-object v0, p0, Lcom/google/android/location/os/e;->k:[I

    iget-object v1, p1, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    invoke-virtual {v1}, Lcom/google/android/location/os/c;->ordinal()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 180
    iget-object v0, p1, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    sget-object v1, Lcom/google/android/location/os/c;->n:Lcom/google/android/location/os/c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/af;

    iget-object v0, v0, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    sget-object v1, Lcom/google/android/location/os/c;->n:Lcom/google/android/location/os/c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/af;

    iget-object v0, v0, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    sget-object v1, Lcom/google/android/location/os/c;->n:Lcom/google/android/location/os/c;

    if-ne v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    iget-object v0, v0, Lcom/google/android/location/os/c;->ad:Lcom/google/android/location/os/d;

    sget-object v1, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    if-ne v0, v1, :cond_3

    .line 190
    iget-wide v0, p1, Lcom/google/android/location/os/af;->g:J

    iput-wide v0, p0, Lcom/google/android/location/os/e;->m:J

    .line 192
    :cond_3
    iget-object v0, p1, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    .line 193
    sget-object v1, Lcom/google/android/location/os/c;->y:Lcom/google/android/location/os/c;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/google/android/location/os/c;->w:Lcom/google/android/location/os/c;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/google/android/location/os/c;->e:Lcom/google/android/location/os/c;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/google/android/location/os/c;->Q:Lcom/google/android/location/os/c;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/google/android/location/os/c;->R:Lcom/google/android/location/os/c;

    if-ne v0, v1, :cond_7

    .line 195
    :cond_4
    iput p2, p0, Lcom/google/android/location/os/e;->n:I

    .line 199
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/os/e;->c:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/os/e;->i:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/os/e;->c:Lcom/google/android/location/p/a/b;

    const-string v1, "gmmNlpEventLog"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/p/a/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 202
    invoke-virtual {p1, v1}, Lcom/google/android/location/os/af;->b(Ljava/io/PrintWriter;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 204
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/google/android/location/os/e;->c:Lcom/google/android/location/p/a/b;

    const-string v2, "gmmNlpEventLog"

    invoke-interface {v1, v2, v0}, Lcom/google/android/location/p/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/os/e;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_6

    .line 212
    iget-object v0, p0, Lcom/google/android/location/os/e;->e:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 213
    iget-object v0, p0, Lcom/google/android/location/os/e;->f:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 214
    iget-object v0, p0, Lcom/google/android/location/os/e;->h:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/google/android/location/os/e;->e:Ljava/util/Date;

    iget-object v2, p0, Lcom/google/android/location/os/e;->f:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/google/android/location/os/e;->g:Ljava/text/FieldPosition;

    invoke-virtual {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v0, p0, Lcom/google/android/location/os/e;->d:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/google/android/location/os/e;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/location/os/e;->d:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lcom/google/android/location/os/af;->b(Ljava/io/PrintWriter;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/location/os/e;->d:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :cond_6
    monitor-exit p0

    return-void

    .line 197
    :cond_7
    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/google/android/location/os/e;->n:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/location/os/ah;)V
    .locals 7

    .prologue
    .line 315
    new-instance v1, Lcom/google/android/location/os/ae;

    sget-object v3, Lcom/google/android/location/os/c;->n:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/ae;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLcom/google/android/location/os/ah;)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 321
    return-void
.end method

.method public final a(Lcom/google/android/location/os/c;)V
    .locals 4

    .prologue
    .line 222
    new-instance v0, Lcom/google/android/location/os/af;

    iget-object v1, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v1}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 223
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 481
    new-instance v1, Lcom/google/android/location/os/x;

    sget-object v3, Lcom/google/android/location/os/c;->P:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/os/x;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 489
    return-void
.end method

.method public final declared-synchronized a(Ljava/text/Format;JJLjava/io/PrintWriter;)V
    .locals 12

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 522
    const-wide/32 v4, 0x927c0

    sub-long v4, p4, v4

    .line 523
    iget-object v2, p0, Lcom/google/android/location/os/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/os/af;

    .line 524
    iget-wide v8, v2, Lcom/google/android/location/os/af;->g:J

    cmp-long v7, v8, v4

    if-ltz v7, :cond_0

    .line 525
    iget-object v7, v2, Lcom/google/android/location/os/af;->f:Lcom/google/android/location/os/c;

    iget-object v7, v7, Lcom/google/android/location/os/c;->ad:Lcom/google/android/location/os/d;

    sget-object v8, Lcom/google/android/location/os/d;->a:Lcom/google/android/location/os/d;

    if-ne v7, v8, :cond_1

    .line 528
    const/16 v7, 0xa

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 530
    :cond_1
    invoke-virtual {v3, p2, p3}, Ljava/util/Date;->setTime(J)V

    .line 531
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/google/android/location/os/af;->g:J

    add-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {p1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/google/android/location/os/af;->b(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 533
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final a(Z)V
    .locals 7

    .prologue
    .line 245
    new-instance v1, Lcom/google/android/location/os/q;

    sget-object v3, Lcom/google/android/location/os/c;->d:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/q;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 251
    return-void
.end method

.method public final a(ZZI)V
    .locals 9

    .prologue
    .line 305
    new-instance v1, Lcom/google/android/location/os/ad;

    sget-object v3, Lcom/google/android/location/os/c;->o:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/location/os/ad;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZZI)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 312
    return-void
.end method

.method public final b(I)V
    .locals 7

    .prologue
    .line 454
    new-instance v1, Lcom/google/android/location/os/u;

    sget-object v3, Lcom/google/android/location/os/c;->W:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/u;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JI)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 460
    return-void
.end method

.method public final b(Z)V
    .locals 7

    .prologue
    .line 324
    new-instance v1, Lcom/google/android/location/os/g;

    sget-object v3, Lcom/google/android/location/os/c;->q:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/g;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 330
    return-void
.end method

.method public final c(Z)V
    .locals 7

    .prologue
    .line 342
    new-instance v1, Lcom/google/android/location/os/i;

    sget-object v3, Lcom/google/android/location/os/c;->s:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/i;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 348
    return-void
.end method

.method public final d(Z)V
    .locals 7

    .prologue
    .line 472
    new-instance v1, Lcom/google/android/location/os/w;

    sget-object v3, Lcom/google/android/location/os/c;->v:Lcom/google/android/location/os/c;

    iget-object v0, p0, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/w;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V

    invoke-virtual {p0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 478
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 497
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 498
    invoke-direct {p0, v1}, Lcom/google/android/location/os/e;->a(Ljava/io/PrintWriter;)V

    .line 499
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 500
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
