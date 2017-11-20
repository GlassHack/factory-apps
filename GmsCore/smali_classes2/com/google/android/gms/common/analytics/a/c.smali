.class public final Lcom/google/android/gms/common/analytics/a/c;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Lcom/google/android/gms/common/analytics/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 227
    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->f:Lcom/google/android/gms/common/analytics/a/h;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/analytics/a/c;->G:I

    .line 228
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 267
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 269
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/c;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 273
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/c;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 277
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/c;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 281
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/c;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 285
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/c;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->f:Lcom/google/android/gms/common/analytics/a/h;

    if-eqz v1, :cond_5

    .line 289
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/c;->f:Lcom/google/android/gms/common/analytics/a/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    :cond_5
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 167
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

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_4
    goto :goto_0

    :pswitch_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->f:Lcom/google/android/gms/common/analytics/a/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/analytics/a/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/analytics/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->f:Lcom/google/android/gms/common/analytics/a/h;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->f:Lcom/google/android/gms/common/analytics/a/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 248
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 251
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 254
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 257
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/c;->f:Lcom/google/android/gms/common/analytics/a/h;

    if-eqz v0, :cond_5

    .line 260
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/c;->f:Lcom/google/android/gms/common/analytics/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 262
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 263
    return-void
.end method
