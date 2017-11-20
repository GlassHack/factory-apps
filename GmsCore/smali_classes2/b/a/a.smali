.class public final Lb/a/a;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lb/a/a;->G:I

    .line 25
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, v0}, Lb/a/a;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    if-ne p1, p0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    .line 38
    :cond_0
    instance-of v0, p1, Lb/a/a;

    if-nez v0, :cond_1

    .line 39
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_1
    check-cast p1, Lb/a/a;

    .line 42
    invoke-virtual {p0, p1}, Lb/a/a;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lb/a/a;->c()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 49
    return v0
.end method
