.class public final Lcom/google/android/gms/auth/setup/d2d/b/g;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Lcom/google/android/gms/auth/setup/d2d/b/b;

.field public e:Lcom/google/android/gms/auth/setup/d2d/b/c;

.field public f:Lcom/google/android/gms/auth/setup/d2d/b/k;

.field public g:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 45
    iput v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->c:Z

    iput-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    iput-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    iput-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->G:I

    .line 46
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 93
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->a:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 95
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 99
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->c:Z

    if-eqz v2, :cond_1

    .line 100
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->c:Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    if-eqz v2, :cond_2

    .line 104
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    if-eqz v2, :cond_3

    .line 108
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    if-eqz v2, :cond_4

    .line 112
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 115
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v1

    move v3, v1

    .line 118
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 119
    iget-object v4, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 120
    if-eqz v4, :cond_5

    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 118
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_6
    add-int/2addr v0, v2

    .line 127
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 129
    :cond_7
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

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->c:Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/k;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->c:Z

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    if-eqz v0, :cond_2

    .line 71
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    if-eqz v0, :cond_3

    .line 74
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    if-eqz v0, :cond_4

    .line 77
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 80
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 82
    if-eqz v1, :cond_5

    .line 83
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 80
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 88
    return-void
.end method
