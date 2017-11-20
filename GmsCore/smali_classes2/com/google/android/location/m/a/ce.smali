.class public final Lcom/google/android/location/m/a/ce;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/android/location/m/a/ce;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->b:[J

    iput-object v0, p0, Lcom/google/android/location/m/a/ce;->b:[J

    iput-object v1, p0, Lcom/google/android/location/m/a/ce;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ce;->G:I

    .line 31
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/ce;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/ce;->c:[Lcom/google/android/location/m/a/ce;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/ce;->c:[Lcom/google/android/location/m/a/ce;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/ce;

    sput-object v0, Lcom/google/android/location/m/a/ce;->c:[Lcom/google/android/location/m/a/ce;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/ce;->c:[Lcom/google/android/location/m/a/ce;

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

    .line 91
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 92
    iget-object v2, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 93
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ce;->b:[J

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/m/a/ce;->b:[J

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 98
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/ce;->b:[J

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/google/android/location/m/a/ce;->b:[J

    aget-wide v4, v3, v1

    .line 100
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/b;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    add-int/2addr v0, v2

    .line 104
    iget-object v1, p0, Lcom/google/android/location/m/a/ce;->b:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 106
    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ce;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ce;->b:[J

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/ce;->b:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ce;->b:[J

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/ce;->b:[J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->e(I)V

    iget-object v2, p0, Lcom/google/android/location/m/a/ce;->b:[J

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/location/m/a/ce;->b:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/google/android/location/m/a/ce;->b:[J

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/google/android/location/m/a/ce;->b:[J

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ce;->b:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/ce;->b:[J

    array-length v0, v0

    if-lez v0, :cond_1

    .line 82
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/ce;->b:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 83
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/ce;->b:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 87
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ce;

    if-eqz v1, :cond_0

    .line 49
    check-cast p1, Lcom/google/android/location/m/a/ce;

    .line 50
    iget-object v1, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 51
    iget-object v1, p1, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ce;->b:[J

    iget-object v2, p1, Lcom/google/android/location/m/a/ce;->b:[J

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([J[J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ce;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/ce;->b:[J

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([J)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ce;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ce;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
