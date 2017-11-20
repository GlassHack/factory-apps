.class public final Lcom/google/android/gms/common/people/a/j;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:I


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/google/android/gms/common/people/a/j;->a:I

    if-gez v0, :cond_0

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/people/a/j;->a:I

    .line 591
    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/people/a/j;->a:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 596
    iput v0, p0, Lcom/google/android/gms/common/people/a/j;->a:I

    .line 598
    return v0
.end method
