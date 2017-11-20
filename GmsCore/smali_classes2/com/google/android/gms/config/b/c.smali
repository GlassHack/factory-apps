.class public final Lcom/google/android/gms/config/b/c;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/b/c;->a:Ljava/util/List;

    .line 690
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/config/b/c;->b:I

    .line 637
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/google/android/gms/config/b/c;->b:I

    if-gez v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/google/android/gms/config/b/c;->b()I

    .line 697
    :cond_0
    iget v0, p0, Lcom/google/android/gms/config/b/c;->b:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lcom/google/android/gms/config/b/c;->b(Lcom/google/protobuf/a/b;)Lcom/google/android/gms/config/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/android/gms/config/b/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/b/f;

    .line 686
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 688
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    iget-object v1, p0, Lcom/google/android/gms/config/b/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/b/f;

    .line 704
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 706
    goto :goto_0

    .line 707
    :cond_0
    iput v1, p0, Lcom/google/android/gms/config/b/c;->b:I

    .line 708
    return v1
.end method

.method public final b(Lcom/google/protobuf/a/b;)Lcom/google/android/gms/config/b/c;
    .locals 2

    .prologue
    .line 716
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    .line 717
    sparse-switch v0, :sswitch_data_0

    .line 721
    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    :sswitch_0
    return-object p0

    .line 727
    :sswitch_1
    new-instance v0, Lcom/google/android/gms/config/b/f;

    invoke-direct {v0}, Lcom/google/android/gms/config/b/f;-><init>()V

    .line 728
    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    .line 729
    iget-object v1, p0, Lcom/google/android/gms/config/b/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/config/b/c;->a:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/config/b/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 717
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
