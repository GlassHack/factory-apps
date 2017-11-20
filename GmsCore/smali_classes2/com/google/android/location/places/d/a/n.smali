.class public final Lcom/google/android/location/places/d/a/n;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/n;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/n;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 114
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 118
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 121
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/n;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 101
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 103
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 104
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

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/n;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/places/d/a/n;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 55
    iget-object v1, p1, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 62
    iget-object v1, p1, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 69
    iget-object v1, p1, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 75
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/n;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 58
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 65
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 72
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 83
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/n;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/n;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/n;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/n;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_2
.end method
