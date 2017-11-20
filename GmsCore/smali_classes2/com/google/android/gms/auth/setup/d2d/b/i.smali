.class public final Lcom/google/android/gms/auth/setup/d2d/b/i;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

.field public b:I

.field public c:Lcom/google/android/gms/auth/setup/d2d/b/o;

.field public d:Lcom/google/android/gms/auth/setup/d2d/b/h;

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 42
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/b/a;->b()[Lcom/google/android/gms/auth/setup/d2d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    iput v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->b:I

    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->c:Lcom/google/android/gms/auth/setup/d2d/b/o;

    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->d:Lcom/google/android/gms/auth/setup/d2d/b/h;

    iput v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->G:I

    .line 43
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v1

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 89
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    aget-object v2, v2, v0

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->b:I

    if-eq v0, v3, :cond_2

    .line 98
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->b:I

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->c:Lcom/google/android/gms/auth/setup/d2d/b/o;

    if-eqz v0, :cond_3

    .line 102
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->c:Lcom/google/android/gms/auth/setup/d2d/b/o;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v0

    add-int/2addr v1, v0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->d:Lcom/google/android/gms/auth/setup/d2d/b/h;

    if-eqz v0, :cond_4

    .line 106
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->d:Lcom/google/android/gms/auth/setup/d2d/b/h;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v0

    add-int/2addr v1, v0

    .line 109
    :cond_4
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->e:I

    if-eq v0, v3, :cond_5

    .line 110
    const/4 v0, 0x5

    iget v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->e:I

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 114
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 117
    :cond_6
    return v1
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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/auth/setup/d2d/b/a;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/auth/setup/d2d/b/a;

    invoke-direct {v3}, Lcom/google/android/gms/auth/setup/d2d/b/a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/auth/setup/d2d/b/a;

    invoke-direct {v3}, Lcom/google/android/gms/auth/setup/d2d/b/a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->b:I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->c:Lcom/google/android/gms/auth/setup/d2d/b/o;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/o;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/o;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->c:Lcom/google/android/gms/auth/setup/d2d/b/o;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->c:Lcom/google/android/gms/auth/setup/d2d/b/o;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->d:Lcom/google/android/gms/auth/setup/d2d/b/h;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->d:Lcom/google/android/gms/auth/setup/d2d/b/h;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->d:Lcom/google/android/gms/auth/setup/d2d/b/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->e:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->f:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 60
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    aget-object v1, v1, v0

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->b:I

    if-eq v0, v2, :cond_2

    .line 68
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->c:Lcom/google/android/gms/auth/setup/d2d/b/o;

    if-eqz v0, :cond_3

    .line 71
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->c:Lcom/google/android/gms/auth/setup/d2d/b/o;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->d:Lcom/google/android/gms/auth/setup/d2d/b/h;

    if-eqz v0, :cond_4

    .line 74
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->d:Lcom/google/android/gms/auth/setup/d2d/b/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 76
    :cond_4
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->e:I

    if-eq v0, v2, :cond_5

    .line 77
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 80
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/i;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 82
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 83
    return-void
.end method
