.class public final Lcom/google/android/location/m/a/bw;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/android/location/m/a/bw;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/location/m/a/bv;

.field public d:Lcom/google/android/location/m/a/bu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    iput-object v0, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    iput-object v0, p0, Lcom/google/android/location/m/a/bw;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/bw;->G:I

    .line 44
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/bw;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/location/m/a/bw;->e:[Lcom/google/android/location/m/a/bw;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/bw;->e:[Lcom/google/android/location/m/a/bw;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/bw;

    sput-object v0, Lcom/google/android/location/m/a/bw;->e:[Lcom/google/android/location/m/a/bw;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/bw;->e:[Lcom/google/android/location/m/a/bw;

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
    .line 133
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 139
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    if-eqz v1, :cond_2

    .line 143
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    if-eqz v1, :cond_3

    .line 147
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/bw;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/bv;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bv;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/bu;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bu;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    if-eqz v0, :cond_2

    .line 123
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    if-eqz v0, :cond_3

    .line 126
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 128
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 129
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 58
    if-ne p1, p0, :cond_1

    .line 59
    const/4 v0, 0x1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/bw;

    if-eqz v1, :cond_0

    .line 64
    check-cast p1, Lcom/google/android/location/m/a/bw;

    .line 65
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 66
    iget-object v1, p1, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 72
    iget-object v1, p1, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    if-nez v1, :cond_8

    .line 79
    iget-object v1, p1, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    if-nez v1, :cond_0

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    if-nez v1, :cond_9

    .line 88
    iget-object v1, p1, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    if-nez v1, :cond_0

    .line 96
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/bw;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 69
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 83
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    iget-object v2, p1, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 92
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    iget-object v2, p1, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 103
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/bw;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bw;->c:Lcom/google/android/location/m/a/bv;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bv;->hashCode()I

    move-result v0

    goto :goto_2

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bw;->d:Lcom/google/android/location/m/a/bu;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/bu;->hashCode()I

    move-result v1

    goto :goto_3
.end method
