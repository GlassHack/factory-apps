.class public final Lcom/google/android/location/m/a/e;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/android/location/m/a/e;


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/e;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/e;->G:I

    .line 37
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/e;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/e;->e:[Lcom/google/android/location/m/a/e;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/e;->e:[Lcom/google/android/location/m/a/e;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/e;

    sput-object v0, Lcom/google/android/location/m/a/e;->e:[Lcom/google/android/location/m/a/e;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/e;->e:[Lcom/google/android/location/m/a/e;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 130
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 134
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 138
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_3
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/e;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 114
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 117
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 119
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 120
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

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/e;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/google/android/location/m/a/e;

    .line 58
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    if-nez v1, :cond_6

    .line 59
    iget-object v1, p1, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 66
    iget-object v1, p1, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 73
    iget-object v1, p1, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 79
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 80
    iget-object v1, p1, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 86
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/e;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 69
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 83
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 94
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 96
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 98
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/e;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/e;->a:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/e;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/e;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/e;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_3
.end method
