.class public final Lcom/google/android/location/m/a/bd;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/android/location/m/a/bd;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lcom/google/android/location/m/a/aw;

.field public c:Lcom/google/android/location/m/a/az;

.field public d:[Lcom/google/android/location/m/a/bl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    iput-object v1, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    invoke-static {}, Lcom/google/android/location/m/a/bl;->b()[Lcom/google/android/location/m/a/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    iput-object v1, p0, Lcom/google/android/location/m/a/bd;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/bd;->G:I

    .line 37
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/bd;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/bd;->e:[Lcom/google/android/location/m/a/bd;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/bd;->e:[Lcom/google/android/location/m/a/bd;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/bd;

    sput-object v0, Lcom/google/android/location/m/a/bd;->e:[Lcom/google/android/location/m/a/bd;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/bd;->e:[Lcom/google/android/location/m/a/bd;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    if-eqz v1, :cond_2

    .line 140
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 144
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 145
    iget-object v2, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    aget-object v2, v2, v0

    .line 146
    if-eqz v2, :cond_3

    .line 147
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 144
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 152
    :cond_5
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/bd;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/aw;

    invoke-direct {v0}, Lcom/google/android/location/m/a/aw;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/az;

    invoke-direct {v0}, Lcom/google/android/location/m/a/az;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/bl;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    new-instance v3, Lcom/google/android/location/m/a/bl;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bl;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    array-length v0, v0

    goto :goto_1

    :cond_5
    new-instance v3, Lcom/google/android/location/m/a/bl;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bl;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    if-eqz v0, :cond_2

    .line 115
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 118
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    aget-object v1, v1, v0

    .line 120
    if-eqz v1, :cond_3

    .line 121
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 118
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 126
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    if-ne p1, p0, :cond_1

    .line 52
    const/4 v0, 0x1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/bd;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/google/android/location/m/a/bd;

    .line 58
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 59
    iget-object v1, p1, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    if-nez v1, :cond_6

    .line 66
    iget-object v1, p1, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    if-nez v1, :cond_0

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    if-nez v1, :cond_7

    .line 75
    iget-object v1, p1, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    if-nez v1, :cond_0

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    iget-object v2, p1, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/bd;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 70
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    iget-object v2, p1, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/aw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    iget-object v2, p1, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/az;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 95
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->d:[Lcom/google/android/location/m/a/bl;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/bd;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bd;->b:Lcom/google/android/location/m/a/aw;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/aw;->hashCode()I

    move-result v0

    goto :goto_1

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bd;->c:Lcom/google/android/location/m/a/az;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/az;->hashCode()I

    move-result v1

    goto :goto_2
.end method
