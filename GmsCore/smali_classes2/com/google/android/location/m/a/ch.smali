.class public final Lcom/google/android/location/m/a/ch;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile f:[Lcom/google/android/location/m/a/ch;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[Lcom/google/android/location/m/a/cf;

.field public c:Ljava/lang/Integer;

.field public d:[Lcom/google/android/location/m/a/u;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    invoke-static {}, Lcom/google/android/location/m/a/cf;->b()[Lcom/google/android/location/m/a/cf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    iput-object v1, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/location/m/a/u;->b()[Lcom/google/android/location/m/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    iput-object v1, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/ch;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ch;->G:I

    .line 40
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/ch;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/ch;->f:[Lcom/google/android/location/m/a/ch;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/ch;->f:[Lcom/google/android/location/m/a/ch;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/ch;

    sput-object v0, Lcom/google/android/location/m/a/ch;->f:[Lcom/google/android/location/m/a/ch;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/ch;->f:[Lcom/google/android/location/m/a/ch;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 143
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 145
    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 146
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    aget-object v3, v3, v0

    .line 148
    if-eqz v3, :cond_0

    .line 149
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 155
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 159
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 160
    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    aget-object v2, v2, v1

    .line 161
    if-eqz v2, :cond_4

    .line 162
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 159
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 168
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_6
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ch;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/cf;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/m/a/cf;

    invoke-direct {v3}, Lcom/google/android/location/m/a/cf;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/m/a/cf;

    invoke-direct {v3}, Lcom/google/android/location/m/a/cf;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/u;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/location/m/a/u;

    invoke-direct {v3}, Lcom/google/android/location/m/a/u;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/location/m/a/u;

    invoke-direct {v3}, Lcom/google/android/location/m/a/u;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 114
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 115
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    aget-object v2, v2, v0

    .line 118
    if-eqz v2, :cond_0

    .line 119
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 124
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    aget-object v0, v0, v1

    .line 129
    if-eqz v0, :cond_3

    .line 130
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 127
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 135
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 137
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 138
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ch;

    if-eqz v1, :cond_0

    .line 61
    check-cast p1, Lcom/google/android/location/m/a/ch;

    .line 62
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    if-nez v1, :cond_5

    .line 63
    iget-object v1, p1, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    iget-object v2, p1, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 74
    iget-object v1, p1, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    iget-object v2, p1, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 85
    iget-object v1, p1, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 91
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ch;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 66
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 77
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 88
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->b:[Lcom/google/android/location/m/a/cf;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 101
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->d:[Lcom/google/android/location/m/a/u;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ch;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ch;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ch;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2
.end method
