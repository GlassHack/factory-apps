.class public final Lcom/google/android/gms/auth/setup/d2d/b/r;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->b:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->G:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 69
    iget-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->a:Z

    if-eqz v1, :cond_0

    .line 70
    iget-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->a:Z

    invoke-static {v3}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->b:Z

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->b:Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 77
    :cond_1
    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->c:I

    if-eq v1, v3, :cond_2

    .line 78
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->c:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 82
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_3
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->a:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->b:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->c:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->d:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 51
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->a:Z

    if-eqz v0, :cond_0

    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->a:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->b:Z

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 57
    :cond_1
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->c:I

    if-eq v0, v2, :cond_2

    .line 58
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 60
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 61
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/r;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 63
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 64
    return-void
.end method
