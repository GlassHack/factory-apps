.class public final Lcom/google/android/gms/wearable/c/j;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/c/j;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/j;->G:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 112
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/c/j;->d:Z

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/j;->d:Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 120
    :cond_0
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
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

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/c/j;->d:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 101
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c/j;->d:Z

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/wearable/c/j;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 105
    :cond_0
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 106
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 107
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/j;

    if-nez v2, :cond_2

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/j;

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 58
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 65
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 72
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 73
    goto :goto_0

    .line 75
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 76
    goto :goto_0

    .line 78
    :cond_8
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/j;->d:Z

    iget-boolean v3, p1, Lcom/google/android/gms/wearable/c/j;->d:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 89
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c/j;->d:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_3
    add-int/2addr v0, v1

    .line 94
    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 93
    :cond_3
    const/16 v0, 0x4d5

    goto :goto_3
.end method
