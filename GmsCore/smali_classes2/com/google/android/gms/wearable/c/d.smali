.class public final Lcom/google/android/gms/wearable/c/d;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile d:[Lcom/google/android/gms/wearable/c/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/gms/wearable/c/e;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/d;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/d;->G:I

    .line 642
    return-void
.end method

.method public static b()[Lcom/google/android/gms/wearable/c/d;
    .locals 2

    .prologue
    .line 620
    sget-object v0, Lcom/google/android/gms/wearable/c/d;->d:[Lcom/google/android/gms/wearable/c/d;

    if-nez v0, :cond_1

    .line 621
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 623
    :try_start_0
    sget-object v0, Lcom/google/android/gms/wearable/c/d;->d:[Lcom/google/android/gms/wearable/c/d;

    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/wearable/c/d;

    sput-object v0, Lcom/google/android/gms/wearable/c/d;->d:[Lcom/google/android/gms/wearable/c/d;

    .line 626
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :cond_1
    sget-object v0, Lcom/google/android/gms/wearable/c/d;->d:[Lcom/google/android/gms/wearable/c/d;

    return-object v0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 707
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 708
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 710
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    if-eqz v1, :cond_0

    .line 711
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 714
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/wearable/c/d;->c:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 716
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 5
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

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/wearable/c/e;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/wearable/c/d;->c:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 697
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    if-eqz v0, :cond_0

    .line 699
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 701
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/wearable/c/d;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 702
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 703
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 654
    if-ne p1, p0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v0

    .line 657
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/d;

    if-nez v2, :cond_2

    move v0, v1

    .line 658
    goto :goto_0

    .line 660
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/d;

    .line 661
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 662
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 663
    goto :goto_0

    .line 665
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 666
    goto :goto_0

    .line 668
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    if-nez v2, :cond_5

    .line 669
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    if-eqz v2, :cond_6

    move v0, v1

    .line 670
    goto :goto_0

    .line 673
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 674
    goto :goto_0

    .line 677
    :cond_6
    iget v2, p0, Lcom/google/android/gms/wearable/c/d;->c:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/d;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 678
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 688
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 690
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/d;->c:I

    add-int/2addr v0, v1

    .line 691
    return v0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/d;->b:Lcom/google/android/gms/wearable/c/e;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/c/e;->hashCode()I

    move-result v1

    goto :goto_1
.end method
