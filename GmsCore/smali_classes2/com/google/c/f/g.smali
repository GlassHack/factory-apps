.class public final Lcom/google/c/f/g;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/c/f/g;


# instance fields
.field public a:Lcom/google/c/f/i;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/f/g;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/g;->G:I

    .line 673
    return-void
.end method

.method public static b()[Lcom/google/c/f/g;
    .locals 2

    .prologue
    .line 654
    sget-object v0, Lcom/google/c/f/g;->c:[Lcom/google/c/f/g;

    if-nez v0, :cond_1

    .line 655
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    :try_start_0
    sget-object v0, Lcom/google/c/f/g;->c:[Lcom/google/c/f/g;

    if-nez v0, :cond_0

    .line 658
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/c/f/g;

    sput-object v0, Lcom/google/c/f/g;->c:[Lcom/google/c/f/g;

    .line 660
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    :cond_1
    sget-object v0, Lcom/google/c/f/g;->c:[Lcom/google/c/f/g;

    return-object v0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 729
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 730
    iget-object v1, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    if-eqz v1, :cond_0

    .line 731
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    :cond_0
    iget v1, p0, Lcom/google/c/f/g;->b:I

    if-eqz v1, :cond_1

    .line 735
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/c/f/g;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 648
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
    iget-object v0, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/i;

    invoke-direct {v0}, Lcom/google/c/f/i;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/c/f/g;->b:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    if-eqz v0, :cond_0

    .line 719
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 721
    :cond_0
    iget v0, p0, Lcom/google/c/f/g;->b:I

    if-eqz v0, :cond_1

    .line 722
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/c/f/g;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 724
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 725
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 684
    if-ne p1, p0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    instance-of v2, p1, Lcom/google/c/f/g;

    if-nez v2, :cond_2

    move v0, v1

    .line 688
    goto :goto_0

    .line 690
    :cond_2
    check-cast p1, Lcom/google/c/f/g;

    .line 691
    iget-object v2, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    if-nez v2, :cond_3

    .line 692
    iget-object v2, p1, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    if-eqz v2, :cond_4

    move v0, v1

    .line 693
    goto :goto_0

    .line 696
    :cond_3
    iget-object v2, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    iget-object v3, p1, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    invoke-virtual {v2, v3}, Lcom/google/c/f/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 697
    goto :goto_0

    .line 700
    :cond_4
    iget v2, p0, Lcom/google/c/f/g;->b:I

    iget v3, p1, Lcom/google/c/f/g;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 701
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 711
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/c/f/g;->b:I

    add-int/2addr v0, v1

    .line 712
    return v0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/g;->a:Lcom/google/c/f/i;

    invoke-virtual {v0}, Lcom/google/c/f/i;->hashCode()I

    move-result v0

    goto :goto_0
.end method
