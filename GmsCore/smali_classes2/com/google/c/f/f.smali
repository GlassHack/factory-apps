.class public final Lcom/google/c/f/f;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/c/f/g;

.field public b:I

.field public c:Lcom/google/c/f/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 807
    invoke-static {}, Lcom/google/c/f/g;->b()[Lcom/google/c/f/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/f/f;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/f;->G:I

    .line 808
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 879
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v1

    .line 880
    iget-object v0, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 881
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 882
    iget-object v2, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    aget-object v2, v2, v0

    .line 883
    if-eqz v2, :cond_0

    .line 884
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 881
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    :cond_1
    iget v0, p0, Lcom/google/c/f/f;->b:I

    if-eqz v0, :cond_2

    .line 890
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/c/f/f;->b:I

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    if-eqz v0, :cond_3

    .line 894
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v0

    add-int/2addr v1, v0

    .line 897
    :cond_3
    return v1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 640
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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/c/f/g;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/c/f/g;

    invoke-direct {v3}, Lcom/google/c/f/g;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/c/f/g;

    invoke-direct {v3}, Lcom/google/c/f/g;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/c/f/f;->b:I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/c/f/i;

    invoke-direct {v0}, Lcom/google/c/f/i;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    :cond_4
    iget-object v0, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 861
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    aget-object v1, v1, v0

    .line 863
    if-eqz v1, :cond_0

    .line 864
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 861
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    :cond_1
    iget v0, p0, Lcom/google/c/f/f;->b:I

    if-eqz v0, :cond_2

    .line 869
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/c/f/f;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    if-eqz v0, :cond_3

    .line 872
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 874
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 875
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 820
    if-ne p1, p0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v0

    .line 823
    :cond_1
    instance-of v2, p1, Lcom/google/c/f/f;

    if-nez v2, :cond_2

    move v0, v1

    .line 824
    goto :goto_0

    .line 826
    :cond_2
    check-cast p1, Lcom/google/c/f/f;

    .line 827
    iget-object v2, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    iget-object v3, p1, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 829
    goto :goto_0

    .line 831
    :cond_3
    iget v2, p0, Lcom/google/c/f/f;->b:I

    iget v3, p1, Lcom/google/c/f/f;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 832
    goto :goto_0

    .line 834
    :cond_4
    iget-object v2, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    if-nez v2, :cond_5

    .line 835
    iget-object v2, p1, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    if-eqz v2, :cond_0

    move v0, v1

    .line 836
    goto :goto_0

    .line 839
    :cond_5
    iget-object v2, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    iget-object v3, p1, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    invoke-virtual {v2, v3}, Lcom/google/c/f/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 840
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/c/f/f;->a:[Lcom/google/c/f/g;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 851
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/c/f/f;->b:I

    add-int/2addr v0, v1

    .line 852
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 854
    return v0

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/f;->c:Lcom/google/c/f/i;

    invoke-virtual {v0}, Lcom/google/c/f/i;->hashCode()I

    move-result v0

    goto :goto_0
.end method
