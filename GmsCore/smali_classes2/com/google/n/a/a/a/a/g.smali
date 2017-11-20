.class public final Lcom/google/n/a/a/a/a/g;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 811
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 812
    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/g;->G:I

    .line 813
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 909
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 910
    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 911
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 915
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 919
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 922
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 923
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 926
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 927
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 930
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 771
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 890
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 893
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 896
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 899
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 901
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 902
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 904
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 905
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 827
    if-ne p1, p0, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v0

    .line 830
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/g;

    if-nez v2, :cond_2

    move v0, v1

    .line 831
    goto :goto_0

    .line 833
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/g;

    .line 834
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 835
    iget-object v2, p1, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 836
    goto :goto_0

    .line 838
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 839
    goto :goto_0

    .line 841
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    if-nez v2, :cond_5

    .line 842
    iget-object v2, p1, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    move v0, v1

    .line 843
    goto :goto_0

    .line 845
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 846
    goto :goto_0

    .line 847
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 848
    iget-object v2, p1, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 849
    goto :goto_0

    .line 851
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 852
    goto :goto_0

    .line 854
    :cond_8
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 855
    iget-object v2, p1, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    .line 856
    goto :goto_0

    .line 858
    :cond_9
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 859
    goto :goto_0

    .line 861
    :cond_a
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 862
    iget-object v2, p1, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 863
    goto :goto_0

    .line 865
    :cond_b
    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 866
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 873
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 876
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 877
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 879
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 881
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 883
    return v0

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 881
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method
