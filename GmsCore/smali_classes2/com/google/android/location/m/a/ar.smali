.class public final Lcom/google/android/location/m/a/ar;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/android/location/m/a/ar;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/ar;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ar;->G:I

    .line 31
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/ar;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/ar;->c:[Lcom/google/android/location/m/a/ar;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/ar;->c:[Lcom/google/android/location/m/a/ar;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/ar;

    sput-object v0, Lcom/google/android/location/m/a/ar;->c:[Lcom/google/android/location/m/a/ar;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/ar;->c:[Lcom/google/android/location/m/a/ar;

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
    .line 92
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 98
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_1
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ar;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 87
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 88
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ar;

    if-eqz v1, :cond_0

    .line 49
    check-cast p1, Lcom/google/android/location/m/a/ar;

    .line 50
    iget-object v1, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 51
    iget-object v1, p1, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 58
    iget-object v1, p1, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 64
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ar;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 54
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 61
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ar;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ar;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/ar;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
