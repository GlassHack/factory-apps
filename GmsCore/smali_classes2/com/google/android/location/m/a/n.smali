.class public final Lcom/google/android/location/m/a/n;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/android/location/m/a/n;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/n;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/n;->G:I

    .line 51
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/n;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/location/m/a/n;->e:[Lcom/google/android/location/m/a/n;

    if-nez v0, :cond_1

    .line 27
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/n;->e:[Lcom/google/android/location/m/a/n;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/n;

    sput-object v0, Lcom/google/android/location/m/a/n;->e:[Lcom/google/android/location/m/a/n;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/n;->e:[Lcom/google/android/location/m/a/n;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 140
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 144
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 148
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/n;->a(Lcom/google/protobuf/nano/a;I)Z

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

    iput-object v0, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 124
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 127
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 129
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 130
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    if-ne p1, p0, :cond_1

    .line 66
    const/4 v0, 0x1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/n;

    if-eqz v1, :cond_0

    .line 71
    check-cast p1, Lcom/google/android/location/m/a/n;

    .line 72
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 73
    iget-object v1, p1, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 79
    iget-object v1, p1, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 85
    iget-object v1, p1, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 92
    iget-object v1, p1, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 98
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/n;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 76
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 82
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 88
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 95
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 105
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/n;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/n;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/n;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/n;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/n;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_3
.end method
