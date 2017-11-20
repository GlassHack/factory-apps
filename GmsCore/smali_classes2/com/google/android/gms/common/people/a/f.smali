.class public final Lcom/google/android/gms/common/people/a/f;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field private b:Z

.field private c:Lcom/google/android/gms/common/people/a/h;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/f;->a:Ljava/util/List;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/f;->c:Lcom/google/android/gms/common/people/a/h;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/people/a/f;->d:I

    .line 189
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/google/android/gms/common/people/a/f;->d:I

    if-gez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/a/f;->b()I

    .line 273
    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/people/a/f;->d:I

    return v0
.end method

.method public final a(Lcom/google/android/gms/common/people/a/h;)Lcom/google/android/gms/common/people/a/f;
    .locals 1

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/f;->a:Ljava/util/List;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 186
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
    new-instance v0, Lcom/google/android/gms/common/people/a/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/people/a/f;->a(Lcom/google/android/gms/common/people/a/h;)Lcom/google/android/gms/common/people/a/f;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/common/people/a/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/f;->b:Z

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/f;->c:Lcom/google/android/gms/common/people/a/h;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/h;

    .line 259
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/f;->b:Z

    if-eqz v0, :cond_1

    .line 262
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/f;->c:Lcom/google/android/gms/common/people/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 264
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/google/android/gms/common/people/a/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/h;

    .line 280
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 282
    goto :goto_0

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/f;->b:Z

    if-eqz v0, :cond_1

    .line 284
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/people/a/f;->c:Lcom/google/android/gms/common/people/a/h;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v1, v0

    .line 287
    :cond_1
    iput v1, p0, Lcom/google/android/gms/common/people/a/f;->d:I

    .line 288
    return v1
.end method
