.class public final Lcom/google/android/location/m/a/m;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile d:[Lcom/google/android/location/m/a/m;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/m;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/m;->G:I

    .line 57
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/m;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/location/m/a/m;->d:[Lcom/google/android/location/m/a/m;

    if-nez v0, :cond_1

    .line 36
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/m;->d:[Lcom/google/android/location/m/a/m;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/m;

    sput-object v0, Lcom/google/android/location/m/a/m;->d:[Lcom/google/android/location/m/a/m;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/m;->d:[Lcom/google/android/location/m/a/m;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 133
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 137
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_2
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/m;->a(Lcom/google/protobuf/nano/a;I)Z

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

    iput-object v0, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x18 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1b -> :sswitch_2
        0x1c -> :sswitch_2
        0x1d -> :sswitch_2
        0x63 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 120
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 122
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 123
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 71
    const/4 v0, 0x1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/m;

    if-eqz v1, :cond_0

    .line 76
    check-cast p1, Lcom/google/android/location/m/a/m;

    .line 77
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 78
    iget-object v1, p1, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 84
    iget-object v1, p1, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 90
    iget-object v1, p1, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 96
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/m;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 81
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 87
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 93
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 103
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/m;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/m;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/m;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/m;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2
.end method
