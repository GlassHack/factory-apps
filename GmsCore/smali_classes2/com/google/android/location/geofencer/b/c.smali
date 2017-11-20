.class public final Lcom/google/android/location/geofencer/b/c;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/geofencer/b/c;->a:J

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/c;->b:Ljava/util/List;

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/c;->c:Ljava/util/List;

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/geofencer/b/c;->e:I

    .line 146
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/google/android/location/geofencer/b/c;->e:I

    if-gez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/b/c;->b()I

    .line 264
    :cond_0
    iget v0, p0, Lcom/google/android/location/geofencer/b/c;->e:I

    return v0
.end method

.method public final a(J)Lcom/google/android/location/geofencer/b/c;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/c;->d:Z

    .line 156
    iput-wide p1, p0, Lcom/google/android/location/geofencer/b/c;->a:J

    .line 157
    return-object p0
.end method

.method public final a(Lcom/google/android/location/geofencer/b/b;)Lcom/google/android/location/geofencer/b/c;
    .locals 1

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/c;->c:Ljava/util/List;

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-object p0
.end method

.method public final a(Lcom/google/android/location/m/b;)Lcom/google/android/location/geofencer/b/c;
    .locals 1

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/c;->b:Ljava/util/List;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 143
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/geofencer/b/c;->a(J)Lcom/google/android/location/geofencer/b/c;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/location/m/b;

    invoke-direct {v0}, Lcom/google/android/location/m/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/c;->a(Lcom/google/android/location/m/b;)Lcom/google/android/location/geofencer/b/c;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/android/location/geofencer/b/b;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/b/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/c;->a(Lcom/google/android/location/geofencer/b/b;)Lcom/google/android/location/geofencer/b/c;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/c;->d:Z

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/c;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/b;

    .line 250
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/b;

    .line 253
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_1

    .line 255
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/c;->d:Z

    if-eqz v1, :cond_0

    .line 271
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/c;->a:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/geofencer/b/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/b;

    .line 275
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 277
    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/b/b;

    .line 279
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v1, v0

    .line 281
    goto :goto_1

    .line 282
    :cond_2
    iput v1, p0, Lcom/google/android/location/geofencer/b/c;->e:I

    .line 283
    return v1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/location/geofencer/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
