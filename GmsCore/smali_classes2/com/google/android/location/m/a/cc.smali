.class public final Lcom/google/android/location/m/a/cc;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile e:[Lcom/google/android/location/m/a/cc;


# instance fields
.field public a:Lcom/google/android/location/m/a/al;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    iput-object v0, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/cc;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/cc;->G:I

    .line 37
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/cc;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/cc;->e:[Lcom/google/android/location/m/a/cc;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/cc;->e:[Lcom/google/android/location/m/a/cc;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/cc;

    sput-object v0, Lcom/google/android/location/m/a/cc;->e:[Lcom/google/android/location/m/a/cc;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/cc;->e:[Lcom/google/android/location/m/a/cc;

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
    .line 126
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 136
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 140
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 143
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/cc;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/al;

    invoke-direct {v0}, Lcom/google/android/location/m/a/al;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 119
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 121
    :cond_3
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

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/cc;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/google/android/location/m/a/cc;

    .line 58
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    if-nez v1, :cond_6

    .line 59
    iget-object v1, p1, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    if-nez v1, :cond_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    if-nez v1, :cond_7

    .line 68
    iget-object v1, p1, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    if-nez v1, :cond_8

    .line 75
    iget-object v1, p1, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    if-nez v1, :cond_9

    .line 82
    iget-object v1, p1, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 88
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/cc;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 63
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    iget-object v2, p1, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/al;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 78
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 85
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 96
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 98
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/cc;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->a:Lcom/google/android/location/m/a/al;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/al;->hashCode()I

    move-result v0

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->b:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/cc;->c:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_2

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/cc;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_3
.end method
