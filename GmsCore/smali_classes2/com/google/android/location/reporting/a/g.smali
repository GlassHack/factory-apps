.class public final Lcom/google/android/location/reporting/a/g;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:[Lcom/google/android/location/reporting/a/a;

.field public c:Lcom/google/android/location/reporting/a/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/location/reporting/a/a;->b()[Lcom/google/android/location/reporting/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    iput-object v1, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    iput-object v1, p0, Lcom/google/android/location/reporting/a/g;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/reporting/a/g;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 118
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    aget-object v2, v2, v0

    .line 120
    if-eqz v2, :cond_1

    .line 121
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    if-eqz v1, :cond_4

    .line 127
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_4
    return v0
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/reporting/a/g;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/reporting/a/a;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/reporting/a/a;

    invoke-direct {v3}, Lcom/google/android/location/reporting/a/a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/reporting/a/a;

    invoke-direct {v3}, Lcom/google/android/location/reporting/a/a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/location/reporting/a/b;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 97
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    aget-object v1, v1, v0

    .line 99
    if-eqz v1, :cond_1

    .line 100
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    if-eqz v0, :cond_3

    .line 105
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 107
    :cond_3
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

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/reporting/a/g;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/reporting/a/g;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 55
    iget-object v1, p1, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    if-nez v1, :cond_5

    .line 66
    iget-object v1, p1, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    if-nez v1, :cond_0

    .line 74
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/a/g;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 70
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    invoke-virtual {v1, v2}, Lcom/google/android/location/reporting/a/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/reporting/a/g;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/a/b;->hashCode()I

    move-result v1

    goto :goto_1
.end method
