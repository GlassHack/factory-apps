.class public final Lcom/google/android/location/m/a/at;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/location/m/a/at;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/at;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v3

    .line 111
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v0

    move v2, v0

    .line 114
    :goto_0
    iget-object v4, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 115
    iget-object v4, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 116
    if-eqz v4, :cond_0

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    add-int v0, v3, v1

    .line 123
    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 125
    :goto_1
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 126
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 130
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 133
    :cond_3
    return v0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/at;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 92
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 94
    if-eqz v1, :cond_0

    .line 95
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 100
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 103
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 105
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 106
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

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/at;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/m/a/at;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 59
    iget-object v1, p1, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 66
    iget-object v1, p1, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 72
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/at;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 69
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 80
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/at;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_1
.end method
