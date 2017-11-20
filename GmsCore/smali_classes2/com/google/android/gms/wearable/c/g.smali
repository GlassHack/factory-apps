.class public final Lcom/google/android/gms/wearable/c/g;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wearable/c/g;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/g;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/g;->G:I

    .line 44
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 129
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/wearable/c/g;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/wearable/c/g;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
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

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/g;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/wearable/c/g;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 112
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/wearable/c/g;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 113
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/wearable/c/g;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 123
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 124
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/g;

    if-nez v2, :cond_2

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/g;

    .line 65
    iget v2, p0, Lcom/google/android/gms/wearable/c/g;->a:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/g;->a:I

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_3
    iget v2, p0, Lcom/google/android/gms/wearable/c/g;->b:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/g;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 72
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 73
    goto :goto_0

    .line 75
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 76
    goto :goto_0

    .line 78
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 79
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 86
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget v0, p0, Lcom/google/android/gms/wearable/c/g;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/wearable/c/g;->b:I

    add-int/2addr v0, v2

    .line 100
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 106
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/g;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/g;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method
