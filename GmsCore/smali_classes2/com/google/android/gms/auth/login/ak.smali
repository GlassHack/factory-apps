.class public final Lcom/google/android/gms/auth/login/ak;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Z

.field public c:I

.field private d:Z

.field private e:Lcom/google/android/gms/auth/login/am;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ak;->e:Lcom/google/android/gms/auth/login/am;

    .line 590
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ak;->a:Ljava/util/List;

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/login/ak;->c:I

    .line 669
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/login/ak;->f:I

    .line 562
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/google/android/gms/auth/login/ak;->f:I

    if-gez v0, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ak;->b()I

    .line 676
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/login/ak;->f:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 559
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
    new-instance v0, Lcom/google/android/gms/auth/login/am;

    invoke-direct {v0}, Lcom/google/android/gms/auth/login/am;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/ak;->d:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ak;->e:Lcom/google/android/gms/auth/login/am;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/auth/login/an;

    invoke-direct {v0}, Lcom/google/android/gms/auth/login/an;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ak;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/auth/login/ak;->a:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/login/ak;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/ak;->b:Z

    iput v0, p0, Lcom/google/android/gms/auth/login/ak;->c:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ak;->d:Z

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ak;->e:Lcom/google/android/gms/auth/login/am;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/an;

    .line 662
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 664
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ak;->b:Z

    if-eqz v0, :cond_2

    .line 665
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/auth/login/ak;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 667
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/ak;->d:Z

    if-eqz v1, :cond_0

    .line 683
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ak;->e:Lcom/google/android/gms/auth/login/am;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/login/ak;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/an;

    .line 687
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 689
    goto :goto_0

    .line 690
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ak;->b:Z

    if-eqz v0, :cond_2

    .line 691
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/gms/auth/login/ak;->c:I

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 694
    :cond_2
    iput v1, p0, Lcom/google/android/gms/auth/login/ak;->f:I

    .line 695
    return v1
.end method
