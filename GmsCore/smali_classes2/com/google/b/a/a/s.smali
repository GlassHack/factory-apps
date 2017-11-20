.class public final Lcom/google/b/a/a/s;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3993
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 4008
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/s;->a:I

    .line 3993
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 4011
    iget v0, p0, Lcom/google/b/a/a/s;->a:I

    if-gez v0, :cond_0

    .line 4013
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/a/s;->a:I

    .line 4015
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/s;->a:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 3990
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
    .line 4006
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4020
    iput v0, p0, Lcom/google/b/a/a/s;->a:I

    .line 4022
    return v0
.end method
