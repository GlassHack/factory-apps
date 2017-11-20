.class public final Lcom/google/android/location/places/d/a/c;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile d:[Lcom/google/android/location/places/d/a/c;


# instance fields
.field public a:Lcom/google/android/location/places/d/a/p;

.field public b:Ljava/lang/Float;

.field public c:Lcom/google/android/location/places/d/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/c;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/c;->G:I

    .line 34
    return-void
.end method

.method public static b()[Lcom/google/android/location/places/d/a/c;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/places/d/a/c;->d:[Lcom/google/android/location/places/d/a/c;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/places/d/a/c;->d:[Lcom/google/android/location/places/d/a/c;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/places/d/a/c;

    sput-object v0, Lcom/google/android/location/places/d/a/c;->d:[Lcom/google/android/location/places/d/a/c;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/places/d/a/c;->d:[Lcom/google/android/location/places/d/a/c;

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
    .line 112
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    if-eqz v1, :cond_2

    .line 122
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/c;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/places/d/a/p;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/places/d/a/a;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    if-eqz v0, :cond_2

    .line 105
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 107
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 108
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    if-ne p1, p0, :cond_1

    .line 48
    const/4 v0, 0x1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/c;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/places/d/a/c;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    if-nez v1, :cond_5

    .line 55
    iget-object v1, p1, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    if-nez v1, :cond_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    if-nez v1, :cond_6

    .line 64
    iget-object v1, p1, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    if-nez v1, :cond_7

    .line 71
    iget-object v1, p1, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    if-nez v1, :cond_0

    .line 79
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/c;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 67
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 87
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/c;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->a:Lcom/google/android/location/places/d/a/p;

    invoke-virtual {v0}, Lcom/google/android/location/places/d/a/p;->hashCode()I

    move-result v0

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/c;->b:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_1

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/c;->c:Lcom/google/android/location/places/d/a/a;

    invoke-virtual {v1}, Lcom/google/android/location/places/d/a/a;->hashCode()I

    move-result v1

    goto :goto_2
.end method
