.class public final Lcom/google/protobuf/b;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/b;->G:I

    .line 27
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
