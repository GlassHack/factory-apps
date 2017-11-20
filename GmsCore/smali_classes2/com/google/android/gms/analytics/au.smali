.class public final Lcom/google/android/gms/analytics/au;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 157
    iput v0, p0, Lcom/google/android/gms/analytics/au;->a:I

    iput v0, p0, Lcom/google/android/gms/analytics/au;->b:I

    iput v0, p0, Lcom/google/android/gms/analytics/au;->c:I

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/au;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/au;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/analytics/au;->G:I

    .line 158
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 232
    iget v1, p0, Lcom/google/android/gms/analytics/au;->a:I

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/analytics/au;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_0
    iget v1, p0, Lcom/google/android/gms/analytics/au;->b:I

    if-eqz v1, :cond_1

    .line 237
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/analytics/au;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_1
    iget v1, p0, Lcom/google/android/gms/analytics/au;->c:I

    if-eqz v1, :cond_2

    .line 241
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/analytics/au;->c:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/au;->d:Z

    if-eqz v1, :cond_3

    .line 245
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/analytics/au;->d:Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 248
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/au;->e:Z

    if-eqz v1, :cond_4

    .line 249
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/analytics/au;->e:Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 252
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 124
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

    iput v0, p0, Lcom/google/android/gms/analytics/au;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/au;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/au;->c:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/au;->d:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/au;->e:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/gms/analytics/au;->a:I

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/au;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 214
    :cond_0
    iget v0, p0, Lcom/google/android/gms/analytics/au;->b:I

    if-eqz v0, :cond_1

    .line 215
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/analytics/au;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 217
    :cond_1
    iget v0, p0, Lcom/google/android/gms/analytics/au;->c:I

    if-eqz v0, :cond_2

    .line 218
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/analytics/au;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 220
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/au;->d:Z

    if-eqz v0, :cond_3

    .line 221
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/au;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 223
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/au;->e:Z

    if-eqz v0, :cond_4

    .line 224
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/au;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 226
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 227
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    if-ne p1, p0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/analytics/au;

    if-nez v2, :cond_2

    move v0, v1

    .line 176
    goto :goto_0

    .line 178
    :cond_2
    check-cast p1, Lcom/google/android/gms/analytics/au;

    .line 179
    iget v2, p0, Lcom/google/android/gms/analytics/au;->a:I

    iget v3, p1, Lcom/google/android/gms/analytics/au;->a:I

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 180
    goto :goto_0

    .line 182
    :cond_3
    iget v2, p0, Lcom/google/android/gms/analytics/au;->b:I

    iget v3, p1, Lcom/google/android/gms/analytics/au;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 183
    goto :goto_0

    .line 185
    :cond_4
    iget v2, p0, Lcom/google/android/gms/analytics/au;->c:I

    iget v3, p1, Lcom/google/android/gms/analytics/au;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 186
    goto :goto_0

    .line 188
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/au;->d:Z

    iget-boolean v3, p1, Lcom/google/android/gms/analytics/au;->d:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 189
    goto :goto_0

    .line 191
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/au;->e:Z

    iget-boolean v3, p1, Lcom/google/android/gms/analytics/au;->e:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 192
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 199
    iget v0, p0, Lcom/google/android/gms/analytics/au;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/analytics/au;->b:I

    add-int/2addr v0, v3

    .line 202
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/analytics/au;->c:I

    add-int/2addr v0, v3

    .line 203
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/au;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 204
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/analytics/au;->e:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 205
    return v0

    :cond_0
    move v0, v2

    .line 203
    goto :goto_0

    :cond_1
    move v1, v2

    .line 204
    goto :goto_1
.end method
