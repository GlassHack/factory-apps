.class public final Lcom/google/android/gms/common/people/a/b;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/util/List;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 474
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 479
    iput v1, p0, Lcom/google/android/gms/common/people/a/b;->b:I

    .line 495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/b;->c:Ljava/util/List;

    .line 523
    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/b;->e:Z

    .line 540
    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/b;->g:Z

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/people/a/b;->h:I

    .line 474
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/google/android/gms/common/people/a/b;->h:I

    if-gez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/a/b;->b()I

    .line 591
    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/people/a/b;->h:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 471
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/people/a/b;->c:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/people/a/b;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v2, p0, Lcom/google/android/gms/common/people/a/b;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/people/a/b;->e:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v2, p0, Lcom/google/android/gms/common/people/a/b;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/people/a/b;->g:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/android/gms/common/people/a/b;->a:Z

    iput v0, p0, Lcom/google/android/gms/common/people/a/b;->b:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 571
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(II)V

    goto :goto_0

    .line 573
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/b;->d:Z

    if-eqz v0, :cond_1

    .line 574
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/b;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 576
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/b;->f:Z

    if-eqz v0, :cond_2

    .line 577
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/b;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 579
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/b;->a:Z

    if-eqz v0, :cond_3

    .line 580
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/common/people/a/b;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 582
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 599
    iget-object v1, p0, Lcom/google/android/gms/common/people/a/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 600
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 602
    goto :goto_0

    .line 603
    :cond_0
    add-int/lit8 v0, v1, 0x0

    .line 604
    iget-object v1, p0, Lcom/google/android/gms/common/people/a/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 606
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/b;->d:Z

    if-eqz v1, :cond_1

    .line 607
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/common/people/a/b;->e:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 610
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/b;->f:Z

    if-eqz v1, :cond_2

    .line 611
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/common/people/a/b;->g:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 614
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/b;->a:Z

    if-eqz v1, :cond_3

    .line 615
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/common/people/a/b;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 618
    :cond_3
    iput v0, p0, Lcom/google/android/gms/common/people/a/b;->h:I

    .line 619
    return v0
.end method
