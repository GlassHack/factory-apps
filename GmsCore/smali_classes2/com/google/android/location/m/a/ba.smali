.class public final Lcom/google/android/location/m/a/ba;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/android/location/m/a/ba;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/ba;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ba;->G:I

    .line 37
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/ba;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/ba;->e:[Lcom/google/android/location/m/a/ba;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/ba;->e:[Lcom/google/android/location/m/a/ba;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/ba;

    sput-object v0, Lcom/google/android/location/m/a/ba;->e:[Lcom/google/android/location/m/a/ba;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/ba;->e:[Lcom/google/android/location/m/a/ba;

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
    const/4 v1, 0x0

    .line 126
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 127
    iget-object v2, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 132
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 136
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    move v3, v1

    .line 142
    :goto_0
    iget-object v4, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 143
    iget-object v4, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 144
    if-eqz v4, :cond_3

    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 146
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 142
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_4
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 153
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ba;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 111
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 114
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 115
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 116
    if-eqz v1, :cond_3

    .line 117
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 114
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 122
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

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ba;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/google/android/location/m/a/ba;

    .line 58
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 59
    iget-object v1, p1, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 66
    iget-object v1, p1, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 73
    iget-object v1, p1, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 79
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ba;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 69
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 76
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 91
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->d:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ba;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ba;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ba;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2
.end method
