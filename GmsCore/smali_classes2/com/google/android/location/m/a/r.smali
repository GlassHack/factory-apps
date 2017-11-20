.class public final Lcom/google/android/location/m/a/r;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile f:[Lcom/google/android/location/m/a/r;


# instance fields
.field public a:Lcom/google/android/location/m/a/aj;

.field public b:Lcom/google/android/location/m/a/f;

.field public c:Lcom/google/android/location/m/a/cf;

.field public d:Ljava/lang/Float;

.field public e:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/r;->G:I

    .line 40
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/r;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/r;->f:[Lcom/google/android/location/m/a/r;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/r;->f:[Lcom/google/android/location/m/a/r;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/r;

    sput-object v0, Lcom/google/android/location/m/a/r;->f:[Lcom/google/android/location/m/a/r;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/r;->f:[Lcom/google/android/location/m/a/r;

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
    .line 146
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    if-eqz v1, :cond_1

    .line 152
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    if-eqz v1, :cond_2

    .line 156
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 160
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 164
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 167
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/r;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/aj;

    invoke-direct {v0}, Lcom/google/android/location/m/a/aj;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/f;

    invoke-direct {v0}, Lcom/google/android/location/m/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/location/m/a/cf;

    invoke-direct {v0}, Lcom/google/android/location/m/a/cf;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    if-eqz v0, :cond_2

    .line 133
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 136
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 139
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 141
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 142
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

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/r;

    if-eqz v1, :cond_0

    .line 61
    check-cast p1, Lcom/google/android/location/m/a/r;

    .line 62
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    if-nez v1, :cond_7

    .line 63
    iget-object v1, p1, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    if-nez v1, :cond_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    if-nez v1, :cond_8

    .line 72
    iget-object v1, p1, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    if-nez v1, :cond_0

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    if-nez v1, :cond_9

    .line 81
    iget-object v1, p1, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    if-nez v1, :cond_0

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    if-nez v1, :cond_a

    .line 90
    iget-object v1, p1, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    if-nez v1, :cond_b

    .line 97
    iget-object v1, p1, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 103
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/r;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 67
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    iget-object v2, p1, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/aj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    iget-object v2, p1, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 85
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    iget-object v2, p1, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/cf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 93
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 100
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 111
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 115
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/r;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->a:Lcom/google/android/location/m/a/aj;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/aj;->hashCode()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->b:Lcom/google/android/location/m/a/f;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/f;->hashCode()I

    move-result v0

    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->c:Lcom/google/android/location/m/a/cf;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/cf;->hashCode()I

    move-result v0

    goto :goto_2

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/r;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_3

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/r;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_4
.end method
