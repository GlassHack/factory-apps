.class public final Lcom/google/android/gms/config/b/f;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/config/b/f;->a:Ljava/lang/String;

    .line 514
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/b/f;->b:Ljava/util/List;

    .line 567
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/config/b/f;->d:I

    .line 493
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/google/android/gms/config/b/f;->d:I

    if-gez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/google/android/gms/config/b/f;->b()I

    .line 574
    :cond_0
    iget v0, p0, Lcom/google/android/gms/config/b/f;->d:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 490
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/config/b/f;->c:Z

    iput-object v0, p0, Lcom/google/android/gms/config/b/f;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/config/b/d;

    invoke-direct {v0}, Lcom/google/android/gms/config/b/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/android/gms/config/b/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/config/b/f;->b:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/config/b/f;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

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
    .line 559
    iget-boolean v0, p0, Lcom/google/android/gms/config/b/f;->c:Z

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/config/b/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/b/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/b/d;

    .line 563
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 565
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 580
    iget-boolean v1, p0, Lcom/google/android/gms/config/b/f;->c:Z

    if-eqz v1, :cond_0

    .line 581
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/config/b/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/config/b/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/b/d;

    .line 585
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 587
    goto :goto_0

    .line 588
    :cond_1
    iput v1, p0, Lcom/google/android/gms/config/b/f;->d:I

    .line 589
    return v1
.end method
