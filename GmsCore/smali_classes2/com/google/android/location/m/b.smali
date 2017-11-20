.class public final Lcom/google/android/location/m/b;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:J

.field public c:J

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 145
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/b;->a:Ljava/util/List;

    .line 183
    iput-wide v2, p0, Lcom/google/android/location/m/b;->b:J

    .line 200
    iput-wide v2, p0, Lcom/google/android/location/m/b;->c:J

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/b;->f:I

    .line 145
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/location/m/b;->f:I

    if-gez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/google/android/location/m/b;->b()I

    .line 247
    :cond_0
    iget v0, p0, Lcom/google/android/location/m/b;->f:I

    return v0
.end method

.method public final a(J)Lcom/google/android/location/m/b;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/m/b;->d:Z

    .line 188
    iput-wide p1, p0, Lcom/google/android/location/m/b;->b:J

    .line 189
    return-object p0
.end method

.method public final a(Lcom/google/android/location/m/c;)Lcom/google/android/location/m/b;
    .locals 1

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/b;->a:Ljava/util/List;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 142
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    new-instance v0, Lcom/google/android/location/m/c;

    invoke-direct {v0}, Lcom/google/android/location/m/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/m/b;->a(Lcom/google/android/location/m/c;)Lcom/google/android/location/m/b;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/m/b;->a(J)Lcom/google/android/location/m/b;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/m/b;->b(J)Lcom/google/android/location/m/b;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/location/m/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/c;

    .line 230
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/m/b;->d:Z

    if-eqz v0, :cond_1

    .line 233
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/location/m/b;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 235
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/m/b;->e:Z

    if-eqz v0, :cond_2

    .line 236
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/location/m/b;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 238
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcom/google/android/location/m/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/c;

    .line 254
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 256
    goto :goto_0

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/m/b;->d:Z

    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/location/m/b;->b:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 261
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/m/b;->e:Z

    if-eqz v0, :cond_2

    .line 262
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/location/m/b;->c:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 265
    :cond_2
    iput v1, p0, Lcom/google/android/location/m/b;->f:I

    .line 266
    return v1
.end method

.method public final b(J)Lcom/google/android/location/m/b;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/m/b;->e:Z

    .line 205
    iput-wide p1, p0, Lcom/google/android/location/m/b;->c:J

    .line 206
    return-object p0
.end method
