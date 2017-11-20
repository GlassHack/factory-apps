.class public final Lcom/google/android/location/places/d/a/d;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/d;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/d;->G:I

    .line 44
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 135
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 139
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 143
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/d;->a(Lcom/google/protobuf/nano/a;I)Z

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

    iput-object v0, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x2a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 119
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 122
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 124
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 125
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

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/d;

    if-eqz v1, :cond_0

    .line 64
    check-cast p1, Lcom/google/android/location/places/d/a/d;

    .line 65
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 66
    iget-object v1, p1, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 72
    iget-object v1, p1, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 79
    iget-object v1, p1, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 86
    iget-object v1, p1, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 92
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/d;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 69
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 82
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 89
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 99
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 101
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/d;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/d;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method
