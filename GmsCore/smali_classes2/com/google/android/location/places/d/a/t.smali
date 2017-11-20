.class public final Lcom/google/android/location/places/d/a/t;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile f:[Lcom/google/android/location/places/d/a/t;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Lcom/google/android/location/places/d/a/s;

.field public e:Lcom/google/android/location/places/d/a/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/t;->G:I

    .line 47
    return-void
.end method

.method public static b()[Lcom/google/android/location/places/d/a/t;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/location/places/d/a/t;->f:[Lcom/google/android/location/places/d/a/t;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/android/location/places/d/a/t;->f:[Lcom/google/android/location/places/d/a/t;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/places/d/a/t;

    sput-object v0, Lcom/google/android/location/places/d/a/t;->f:[Lcom/google/android/location/places/d/a/t;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/android/location/places/d/a/t;->f:[Lcom/google/android/location/places/d/a/t;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 155
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 159
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    if-eqz v1, :cond_3

    .line 163
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    if-eqz v1, :cond_4

    .line 167
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/t;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/places/d/a/s;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/s;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/places/d/a/l;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x22 -> :sswitch_5
        0x4a -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 136
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    if-eqz v0, :cond_3

    .line 139
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    if-eqz v0, :cond_4

    .line 142
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 144
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 145
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    if-ne p1, p0, :cond_1

    .line 63
    const/4 v0, 0x1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/t;

    if-eqz v1, :cond_0

    .line 68
    check-cast p1, Lcom/google/android/location/places/d/a/t;

    .line 69
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 70
    iget-object v1, p1, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 76
    iget-object v1, p1, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 83
    iget-object v1, p1, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    if-nez v1, :cond_a

    .line 90
    iget-object v1, p1, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    if-nez v1, :cond_0

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    if-nez v1, :cond_b

    .line 99
    iget-object v1, p1, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    if-nez v1, :cond_0

    .line 107
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/t;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 79
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 86
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 94
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 103
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 114
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 118
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/t;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/t;->d:Lcom/google/android/location/places/d/a/s;

    invoke-virtual {v0}, Lcom/google/android/location/places/d/a/s;->hashCode()I

    move-result v0

    goto :goto_3

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/places/d/a/t;->e:Lcom/google/android/location/places/d/a/l;

    invoke-virtual {v1}, Lcom/google/android/location/places/d/a/l;->hashCode()I

    move-result v1

    goto :goto_4
.end method
