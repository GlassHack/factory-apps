.class public final Lcom/google/n/a/a/a/a/c;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile i:[Lcom/google/n/a/a/a/a/c;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Lcom/google/n/a/a/a/a/h;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/google/n/a/a/a/a/h;->b()[Lcom/google/n/a/a/a/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    iput-object v1, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/c;->G:I

    .line 51
    return-void
.end method

.method public static b()[Lcom/google/n/a/a/a/a/c;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/n/a/a/a/a/c;->i:[Lcom/google/n/a/a/a/a/c;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/n/a/a/a/a/c;->i:[Lcom/google/n/a/a/a/a/c;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/c;

    sput-object v0, Lcom/google/n/a/a/a/a/c;->i:[Lcom/google/n/a/a/a/a/c;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/n/a/a/a/a/c;->i:[Lcom/google/n/a/a/a/a/c;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 196
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 200
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 204
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 208
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 209
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    aget-object v2, v2, v0

    .line 210
    if-eqz v2, :cond_4

    .line 211
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 208
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 216
    :cond_6
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 217
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_7
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 221
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_8
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 225
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_9
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/a/a/a/h;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/n/a/a/a/a/h;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/h;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/n/a/a/a/a/h;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/h;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 163
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 166
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 169
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    aget-object v1, v1, v0

    .line 171
    if-eqz v1, :cond_4

    .line 172
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 169
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 177
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 180
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 182
    :cond_7
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 183
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 185
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 186
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p1, p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/c;

    if-nez v2, :cond_2

    move v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/c;

    .line 75
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    if-nez v2, :cond_3

    .line 76
    iget-object v2, p1, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    if-eqz v2, :cond_4

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 83
    iget-object v2, p1, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    if-eqz v2, :cond_6

    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 90
    iget-object v2, p1, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_8
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 97
    iget-object v2, p1, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    .line 98
    goto :goto_0

    .line 100
    :cond_9
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_a
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_b
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    if-nez v2, :cond_c

    .line 108
    iget-object v2, p1, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    if-eqz v2, :cond_d

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_c
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 112
    goto/16 :goto_0

    .line 114
    :cond_d
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    if-nez v2, :cond_e

    .line 115
    iget-object v2, p1, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    if-eqz v2, :cond_f

    move v0, v1

    .line 116
    goto/16 :goto_0

    .line 118
    :cond_e
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    .line 119
    goto/16 :goto_0

    .line 121
    :cond_f
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    if-nez v2, :cond_10

    .line 122
    iget-object v2, p1, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    if-eqz v2, :cond_0

    move v0, v1

    .line 123
    goto/16 :goto_0

    .line 125
    :cond_10
    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 126
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 136
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 146
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    .line 150
    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_4

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_5

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_6
.end method
