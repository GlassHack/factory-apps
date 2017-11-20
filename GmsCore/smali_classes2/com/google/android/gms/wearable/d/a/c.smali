.class public final Lcom/google/android/gms/wearable/d/a/c;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/android/gms/wearable/d/a/c;


# instance fields
.field public a:I

.field public b:Lcom/google/android/gms/wearable/d/a/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 596
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 597
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/d/a/c;->a:I

    iput-object v1, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    iput-object v1, p0, Lcom/google/android/gms/wearable/d/a/c;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/d/a/c;->G:I

    .line 598
    return-void
.end method

.method public static b()[Lcom/google/android/gms/wearable/d/a/c;
    .locals 2

    .prologue
    .line 579
    sget-object v0, Lcom/google/android/gms/wearable/d/a/c;->c:[Lcom/google/android/gms/wearable/d/a/c;

    if-nez v0, :cond_1

    .line 580
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    sget-object v0, Lcom/google/android/gms/wearable/d/a/c;->c:[Lcom/google/android/gms/wearable/d/a/c;

    if-nez v0, :cond_0

    .line 583
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/wearable/d/a/c;

    sput-object v0, Lcom/google/android/gms/wearable/d/a/c;->c:[Lcom/google/android/gms/wearable/d/a/c;

    .line 585
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :cond_1
    sget-object v0, Lcom/google/android/gms/wearable/d/a/c;->c:[Lcom/google/android/gms/wearable/d/a/c;

    return-object v0

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 654
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 655
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/wearable/d/a/c;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    if-eqz v1, :cond_0

    .line 658
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    :cond_0
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 12
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/d/a/c;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/wearable/d/a/c;->a:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/wearable/d/a/d;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 645
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/wearable/d/a/c;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 646
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 649
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 650
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 610
    if-ne p1, p0, :cond_1

    .line 611
    const/4 v0, 0x1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 613
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/wearable/d/a/c;

    if-eqz v1, :cond_0

    .line 616
    check-cast p1, Lcom/google/android/gms/wearable/d/a/c;

    .line 617
    iget v1, p0, Lcom/google/android/gms/wearable/d/a/c;->a:I

    iget v2, p1, Lcom/google/android/gms/wearable/d/a/c;->a:I

    if-ne v1, v2, :cond_0

    .line 620
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    if-nez v1, :cond_3

    .line 621
    iget-object v1, p1, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    if-nez v1, :cond_0

    .line 629
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/d/a/c;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 625
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/d/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 634
    iget v0, p0, Lcom/google/android/gms/wearable/d/a/c;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 636
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 638
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/a/c;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 639
    return v0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/d/a/d;->hashCode()I

    move-result v0

    goto :goto_0
.end method
