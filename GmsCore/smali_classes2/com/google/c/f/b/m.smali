.class public final Lcom/google/c/f/b/m;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/c/f/b/g;

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 708
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 709
    iput-object v1, p0, Lcom/google/c/f/b/m;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/c/f/b/m;->b:Lcom/google/c/f/b/g;

    iput-object v1, p0, Lcom/google/c/f/b/m;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/c/f/b/m;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/c/f/b/m;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/c/f/b/m;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/b/m;->G:I

    .line 710
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 755
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 756
    iget-object v2, p0, Lcom/google/c/f/b/m;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 757
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/c/f/b/m;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/google/c/f/b/m;->b:Lcom/google/c/f/b/g;

    if-eqz v2, :cond_1

    .line 761
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/c/f/b/m;->b:Lcom/google/c/f/b/g;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 764
    :cond_1
    iget-object v2, p0, Lcom/google/c/f/b/m;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 765
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/c/f/b/m;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 768
    :cond_2
    iget-object v2, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    move v3, v1

    .line 771
    :goto_0
    iget-object v4, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 772
    iget-object v4, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 773
    if-eqz v4, :cond_3

    .line 774
    add-int/lit8 v3, v3, 0x1

    .line 775
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 771
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    :cond_4
    add-int/2addr v0, v2

    .line 780
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 782
    :cond_5
    iget-object v1, p0, Lcom/google/c/f/b/m;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 783
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/c/f/b/m;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 786
    :cond_6
    iget-object v1, p0, Lcom/google/c/f/b/m;->f:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 787
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/c/f/b/m;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    :cond_7
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 673
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/f/b/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/m;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/c/f/b/m;->b:Lcom/google/c/f/b/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/b/g;

    invoke-direct {v0}, Lcom/google/c/f/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/m;->b:Lcom/google/c/f/b/g;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/m;->b:Lcom/google/c/f/b/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/m;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/m;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/m;->f:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/c/f/b/m;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 728
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/b/m;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/b/m;->b:Lcom/google/c/f/b/g;

    if-eqz v0, :cond_1

    .line 731
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/c/f/b/m;->b:Lcom/google/c/f/b/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/m;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 734
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/c/f/b/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 737
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 738
    iget-object v1, p0, Lcom/google/c/f/b/m;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 739
    if-eqz v1, :cond_3

    .line 740
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 737
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 744
    :cond_4
    iget-object v0, p0, Lcom/google/c/f/b/m;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 745
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/c/f/b/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 747
    :cond_5
    iget-object v0, p0, Lcom/google/c/f/b/m;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 748
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/c/f/b/m;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 750
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 751
    return-void
.end method
