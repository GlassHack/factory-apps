.class public final Lcom/google/android/gms/common/people/a/g;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/common/people/a/h;

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/g;->a:Lcom/google/android/gms/common/people/a/h;

    .line 698
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/g;->b:Ljava/lang/String;

    .line 715
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/g;->f:Ljava/lang/String;

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/people/a/g;->g:I

    .line 673
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/google/android/gms/common/people/a/g;->g:I

    if-gez v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/a/g;->b()I

    .line 762
    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/people/a/g;->g:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 670
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

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/g;->c:Z

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/g;->a:Lcom/google/android/gms/common/people/a/h;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/g;->d:Z

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/g;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/g;->e:Z

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/g;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/g;->c:Z

    if-eqz v0, :cond_0

    .line 745
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/g;->a:Lcom/google/android/gms/common/people/a/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 747
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/g;->d:Z

    if-eqz v0, :cond_1

    .line 748
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 750
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/g;->e:Z

    if-eqz v0, :cond_2

    .line 751
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 753
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 768
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/g;->c:Z

    if-eqz v1, :cond_0

    .line 769
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/g;->a:Lcom/google/android/gms/common/people/a/h;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 772
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/g;->d:Z

    if-eqz v1, :cond_1

    .line 773
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/people/a/g;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 776
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/g;->e:Z

    if-eqz v1, :cond_2

    .line 777
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/people/a/g;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 780
    :cond_2
    iput v0, p0, Lcom/google/android/gms/common/people/a/g;->g:I

    .line 781
    return v0
.end method
