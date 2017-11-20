.class final Landroid/support/v7/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput p1, p0, Landroid/support/v7/widget/n;->a:I

    .line 632
    iput p2, p0, Landroid/support/v7/widget/n;->b:I

    .line 633
    iput p3, p0, Landroid/support/v7/widget/n;->c:I

    .line 634
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 657
    if-ne p0, p1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 661
    goto :goto_0

    .line 664
    :cond_3
    check-cast p1, Landroid/support/v7/widget/n;

    .line 666
    iget v2, p0, Landroid/support/v7/widget/n;->a:I

    iget v3, p1, Landroid/support/v7/widget/n;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 667
    goto :goto_0

    .line 669
    :cond_4
    iget v2, p0, Landroid/support/v7/widget/n;->c:I

    iget v3, p1, Landroid/support/v7/widget/n;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 670
    goto :goto_0

    .line 672
    :cond_5
    iget v2, p0, Landroid/support/v7/widget/n;->b:I

    iget v3, p1, Landroid/support/v7/widget/n;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 673
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 681
    iget v0, p0, Landroid/support/v7/widget/n;->a:I

    .line 682
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/widget/n;->b:I

    add-int/2addr v0, v1

    .line 683
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v0, v1

    .line 684
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/n;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "??"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/n;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/n;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "add"

    goto :goto_0

    :pswitch_1
    const-string v0, "rm"

    goto :goto_0

    :pswitch_2
    const-string v0, "up"

    goto :goto_0

    :pswitch_3
    const-string v0, "mv"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
