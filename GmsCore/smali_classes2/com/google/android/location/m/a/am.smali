.class public final Lcom/google/android/location/m/a/am;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/android/location/m/a/am;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Lcom/google/android/location/m/a/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    iput-object v0, p0, Lcom/google/android/location/m/a/am;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/am;->G:I

    .line 43
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/am;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/location/m/a/am;->e:[Lcom/google/android/location/m/a/am;

    if-nez v0, :cond_1

    .line 19
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/am;->e:[Lcom/google/android/location/m/a/am;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/am;

    sput-object v0, Lcom/google/android/location/m/a/am;->e:[Lcom/google/android/location/m/a/am;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/am;->e:[Lcom/google/android/location/m/a/am;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 126
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 127
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    if-eqz v1, :cond_1

    .line 136
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/am;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/z;

    invoke-direct {v0}, Lcom/google/android/location/m/a/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x32a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 113
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 114
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    if-eqz v0, :cond_1

    .line 119
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 121
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 122
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 58
    const/4 v0, 0x1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/am;

    if-eqz v1, :cond_0

    .line 63
    check-cast p1, Lcom/google/android/location/m/a/am;

    .line 64
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    if-nez v1, :cond_6

    .line 65
    iget-object v1, p1, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 72
    iget-object v1, p1, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 79
    iget-object v1, p1, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    if-nez v1, :cond_9

    .line 85
    iget-object v1, p1, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    if-nez v1, :cond_0

    .line 93
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/am;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 82
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 89
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    iget-object v2, p1, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/z;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 101
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/am;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/am;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/am;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/am;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/am;->d:Lcom/google/android/location/m/a/z;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/z;->hashCode()I

    move-result v1

    goto :goto_3
.end method
